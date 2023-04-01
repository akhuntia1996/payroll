package com.bitspilani.payroll.service;

import java.io.FileReader;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitspilani.payroll.constants.Status;
import com.bitspilani.payroll.dto.EmployeeRepository;
import com.bitspilani.payroll.dto.EmployerRepository;
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
public class AnnonlyProcessingService {
    
    private final Logger logger = LoggerFactory.getLogger(ProcessingService.class);

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private EmployerRepository employerRepository;

    @Autowired
    private HistoryRepository historyRepository;

    @Autowired
    private ProcessingStatus processingStatus;

    @Autowired
    private ValidateUtil validateUtil;
    
    public ProcessingStatus process(InputCard inputCard){

        try {

            // do Input Card Validation 
            logger.info("INVOKING AUTOPAY PHASE 1");
            logger.info("VALIDATING INPUT CARD");
            
            String cardValidationMessage = validateUtil.doValidateInputCard(inputCard);
            if(!cardValidationMessage.trim().equals("Validated Successfully")){
                processingStatus.setStatus(Status.FAILED);
                processingStatus.setMessage(cardValidationMessage);
                return processingStatus;
            }

            logger.info("INPUT CARD FOUND : EMPLOYER : " + inputCard.getEmployer() 
                + ", REPORT CODE : "+ inputCard.getReportCode() +", YEAR : "+ inputCard.getYear() 
                +", QUARTER : "+ inputCard.getQuarter() +", RUN TYPE : " + inputCard.getRunType());
            

            // Fetching Employer details 
            logger.info("INVOKING AUTOPAY PHASE 2");
            logger.info("FETCHING EMPLOYER DETAILS");

            int employee_count = 0;

            List<Employer> employerList = new ArrayList<>();
            employerList = employerRepository.findByName(inputCard.getEmployer());
            if(employerList == null || employerList.size() == 0){
                processingStatus.setStatus(Status.FAILED);
                processingStatus.setMessage("Invalid Employer Name");
                return processingStatus;
            }

            logger.info("NUMBER OF EMPLOYER FETCHED : " + employerList.size());

            // Fetch the csv file name from database
            List<History> histories = historyRepository.findByReportcodeAndEmployerAndYearAndQuarter(inputCard.getReportCode(), 
            inputCard.getEmployer().trim(), inputCard.getYear(), inputCard.getQuarter());

            History history = histories.get(0);
            logger.info("INVOKING AUTOPAY PHASE 3 (RBU)");
            logger.info("CSV FILE FOUND : " + history.getCsvfile());

            FileReader filereader = new FileReader("D:\\all-code\\Payroll\\code\\payroll\\"+history.getCsvfile());
            CSVReader csvReader = new CSVReader(filereader);
            
            String[] nextRecord;
            boolean isHeader = true;
            List<Employee> oldEmployees = new ArrayList<>();

            while ((nextRecord = csvReader.readNext()) != null) {
                employee_count++;
                if(isHeader){
                    isHeader = false;
                    continue;
                }

                Employee emp = new Employee();
                emp.setEmployer(inputCard.getEmployer());
                emp.setPhone(nextRecord[2]);
                emp.setEmail(nextRecord[3]);
                emp.setAddress(nextRecord[4]);
                emp.setRegion(nextRecord[5]);
                emp.setCountry(nextRecord[6]);
                emp.setExperience(Integer.parseInt(nextRecord[13]));
                emp.setTotalpay(nextRecord[14]);
                emp.setDeductions(Integer.parseInt(nextRecord[18].split("\\.")[0]));
                emp.setFrequency(nextRecord[20]);
                emp.setSsn(nextRecord[21]);
                
                oldEmployees.add(emp);
            }

            logger.info("COMPARING DATA and INVOKING PHASE 5 (CALCULATION)");

            logger.info("INVOKING PHASE 6 (PRINTOUT)");

            Print printPDF = new PrintPDF(inputCard.getEmployer());
            TaxNumbers totalPage = new TaxNumbers();

            // Compare ...
            for(Employee employee : oldEmployees){
                Employee dbEmp = employeeRepository.findBySsn(employee.getSsn());

                if(!isSameEmployeeData(employee, dbEmp)){
                    
                    employee_count++;

                    // Calculate payroll
                    TaxNumbers empPage = new TaxNumbers();
                    empPage.calculateEmployeeTax(employee.getTotalpay(), employee.getDeductions());

                    // Update total variables 
                    totalPage.addValues(empPage);

                    // Generate PDF
                    printPDF.setEmployer(employerList.get(0));
                    printPDF.setEmployee(dbEmp);
                    printPDF.setTaxNumbers(empPage);
                    printPDF.doPrint();

                }
            }

             // print Totals form PDF
             printPDF.setEmployer(employerList.get(0));
             printPDF.setEmployee(null);
             printPDF.setTaxNumbers(totalPage);
             printPDF.doPrint();


            History newhistory = new History();

            newhistory.setRuntype(inputCard.getRunType());
            newhistory.setEmployee_count(employee_count);
            newhistory.setReportcode(inputCard.getReportCode());
            newhistory.setYear(inputCard.getYear());
            newhistory.setQuarter(inputCard.getQuarter());
            newhistory.setEmployer(inputCard.getEmployer());
            newhistory.setProcessingtime(Timestamp.valueOf(LocalDateTime.now()));
            newhistory.setCsvfile(histories.get(0).getCsvfile());
            newhistory.setPdffile(printPDF.getFileName());

            logger.info("INVOKING PHASE 7 (AUDIT)");

            historyRepository.save(newhistory);

            processingStatus.setStatus(Status.SUCCESS);
            processingStatus.setMessage("ANNONLY PROCESSED SUCCESSFULLY");
            processingStatus.setEmployer(1);
            processingStatus.setEmployee(employee_count);
            processingStatus.setPages(employee_count);
            processingStatus.setFilename(printPDF.getFileName());

            printPDF.closeFile();
            csvReader.close();

        } catch(Exception ee) {
            ee.printStackTrace();
            logger.info("EXCEPTION OCCOURED : " + ee + " , DETAILS : " + ee.getStackTrace()[0].toString());
        } finally {
            logger.info("PAYROLL PROCESSED SUCCESSFULLY");
        }

        return processingStatus;
    }

    private boolean isSameEmployeeData(Employee oldEmp, Employee dbEmp) {

        if(!dbEmp.getTotalpay().equals(oldEmp.getTotalpay()))
            return false;
        
        if(!oldEmp.getAddress().equals(dbEmp.getAddress()))
            return false;
        
        if(!oldEmp.getCountry().equals(dbEmp.getCountry()))
            return false;
        
        if(!oldEmp.getRegion().equals(dbEmp.getRegion()))
            return false;
        
        if(!oldEmp.getEmail().equals(dbEmp.getEmail()))
            return false;

        if(!oldEmp.getPhone().equals(dbEmp.getPhone()))
            return false;
        
        if(!oldEmp.getFrequency().equals(dbEmp.getFrequency()))
            return false;
        
        if(oldEmp.getDeductions() != dbEmp.getDeductions())
            return false;
            
        return true;
    }
}
