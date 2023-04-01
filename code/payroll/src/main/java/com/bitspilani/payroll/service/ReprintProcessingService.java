package com.bitspilani.payroll.service;

import java.io.FileReader;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitspilani.payroll.constants.Status;
import com.bitspilani.payroll.dto.HistoryRepository;
import com.bitspilani.payroll.entity.Employee;
import com.bitspilani.payroll.entity.Employer;
import com.bitspilani.payroll.model.History;
import com.bitspilani.payroll.model.InputCard;
import com.bitspilani.payroll.model.Print;
import com.bitspilani.payroll.model.PrintPDF;
import com.bitspilani.payroll.model.ProcessingStatus;
import com.bitspilani.payroll.model.TaxNumbers;
import com.bitspilani.payroll.util.ValidateUtil;
import com.opencsv.CSVReader;

@Service
public class ReprintProcessingService {

    private final Logger logger = LoggerFactory.getLogger(ReprintProcessingService.class);

    @Autowired
    private HistoryRepository historyRepository;

    @Autowired
    private ValidateUtil validateUtil;

    private ProcessingStatus processingStatus;
    
    public ProcessingStatus process(InputCard inputCard){

        try {
            String cardValidationMessage = validateUtil.doValidateInputCard(inputCard);
            if(!cardValidationMessage.trim().equals("Validated Successfully")){
                processingStatus.setStatus(Status.FAILED);
                processingStatus.setMessage(cardValidationMessage);
                return processingStatus;
            }

            logger.info("INPUT CARD FOUND : EMPLOYER : " + inputCard.getEmployer() 
                + ", REPORT CODE : "+ inputCard.getReportCode() +", YEAR : "+ inputCard.getYear() 
                +", QUARTER : "+ inputCard.getQuarter() +", RUN TYPE : " + inputCard.getRunType());
            

            // Fetch the csv file name from database
            List<History> histories = historyRepository.findByReportcodeAndEmployerAndYearAndQuarter(inputCard.getReportCode(), 
                inputCard.getEmployer().trim(), inputCard.getYear(), inputCard.getQuarter());

            History history = histories.get(0);
            logger.info("INVOKING AUTOPAY PHASE 3 (RBU)");
            logger.info("CSV FILE FOUND : " + history.getCsvfile());

            // Fetch the data from csv file
            FileReader filereader = new FileReader("D:\\all-code\\Payroll\\code\\payroll\\"+history.getCsvfile());
            CSVReader csvReader = new CSVReader(filereader);
            
            String[] nextRecord;
            
            Print printPDF = new PrintPDF(history.getEmployer());

            Employer employer = new Employer();
            Employee employee = new Employee();
            TaxNumbers taxNumbers = new TaxNumbers();
            TaxNumbers totalTaxNumbers = new TaxNumbers();

            int employee_count = 0;
            boolean isHeader = true;

            logger.info("INVOKING AUTOPAY PHASE 5 (CALCULATION)");
            
            while ((nextRecord = csvReader.readNext()) != null) {
                employee_count++;
                if(isHeader){
                    isHeader = false;
                    continue;
                }
                // Generate PDF
                employer.setName(history.getEmployer());
                employer.setPhone(nextRecord[7]);
                employer.setEmail(nextRecord[8]);
                employer.setAddress(nextRecord[9]);
                employer.setRegion(nextRecord[10]);
                employer.setCountry(nextRecord[11]);

                employee.setName(nextRecord[1]);
                employee.setPhone(nextRecord[2]);
                employee.setEmail(nextRecord[3]);
                employee.setAddress(nextRecord[4]);
                employee.setRegion(nextRecord[5]);
                employee.setCountry(nextRecord[6]);
                employee.setFrequency(nextRecord[19]);
                employee.setSsn(nextRecord[20]);

                taxNumbers.setTotalIncome(Double.parseDouble(nextRecord[14].replace("$","").replace(",","")));
                taxNumbers.setTotalstateTax(Double.parseDouble(nextRecord[15].replace("$","").replace(",","")));
                taxNumbers.setTotallocalTax(Double.parseDouble(nextRecord[16].replace("$","").replace(",","")));
                taxNumbers.setTotaldeduction(Double.parseDouble(nextRecord[17].replace("$","").replace(",","")));
                taxNumbers.setTotalgross(Double.parseDouble(nextRecord[18].replace("$","").replace(",","")));

                totalTaxNumbers.addValues(taxNumbers);

                printPDF.setEmployer(employer);
                printPDF.setEmployee(employee);
                printPDF.setTaxNumbers(taxNumbers);
                printPDF.doPrint();
            }

            csvReader.close();

            logger.info("INVOKING AUTOPAY PHASE 6 (PRINTOUT)");

            printPDF.setEmployer(employer);
            printPDF.setEmployee(null);
            printPDF.setTaxNumbers(totalTaxNumbers);
            printPDF.doPrint();

            // Store it in history table
            History newhistory = new History();

            newhistory.setRuntype(inputCard.getRunType());
            newhistory.setEmployee_count(employee_count);
            newhistory.setReportcode(inputCard.getReportCode());
            newhistory.setYear(inputCard.getYear());
            newhistory.setQuarter(inputCard.getQuarter());
            newhistory.setEmployer(inputCard.getEmployer());
            newhistory.setProcessingtime(Timestamp.valueOf(LocalDateTime.now()));
            newhistory.setCsvfile(history.getCsvfile());
            newhistory.setPdffile(printPDF.getFileName());

            logger.info("INVOKING AUTOPAY PHASE 7 (AUDITING)");

            historyRepository.save(newhistory);

            // prepare response
            processingStatus = new ProcessingStatus();
            
            processingStatus.setEmployer(1);
            processingStatus.setEmployee(employee_count);
            processingStatus.setFilename(printPDF.getFileName());
            processingStatus.setMessage("Reprint Successfully Processed");
            processingStatus.setPages(employee_count + 1);
            processingStatus.setStatus(Status.SUCCESS);

            printPDF.closeFile();

        } catch(Exception ee) {
            ee.printStackTrace();
            logger.info("EXCEPTION OCCOURED : " + ee + " , DETAILS : " + ee.getStackTrace()[0].toString());
        } finally {
            logger.info("PAYROLL PROCESSED SUCCESSFULLY");
        }

        return processingStatus;
    }
}
