package com.bitspilani.payroll.service;

import java.util.List;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitspilani.payroll.constants.EmployeeStatus;
import com.bitspilani.payroll.constants.Status;
import com.bitspilani.payroll.dto.EmployeeRepository;
import com.bitspilani.payroll.dto.EmployerRepository;
import com.bitspilani.payroll.dto.HistoryRepository;
import com.bitspilani.payroll.entity.Employee;
import com.bitspilani.payroll.entity.Employer;
import com.bitspilani.payroll.model.History;
import com.bitspilani.payroll.model.InputCard;
import com.bitspilani.payroll.model.Print;
import com.bitspilani.payroll.model.PrintCSV;
import com.bitspilani.payroll.model.PrintPDF;
import com.bitspilani.payroll.model.ProcessingStatus;
import com.bitspilani.payroll.model.TaxNumbers;
import com.bitspilani.payroll.util.ValidateUtil;

@Service
public class ProcessingService {

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
            int employer_count = 0;

            List<Employer> employerList = new ArrayList<>();
            employerList = employerRepository.findByName(inputCard.getEmployer());
            if(employerList == null || employerList.size() == 0){
                processingStatus.setStatus(Status.FAILED);
                processingStatus.setMessage("Invalid Employer Name");
                return processingStatus;
            }
            employer_count = employerList.size();

            logger.info("NUMBER OF EMPLOYER FETCHED : " + employerList.size());

            logger.info("INVOKING AUTOPAY PHASE 3 (RBU), PHASE 4 (PBU) and PHASE 5 (CALCULATION)");

            // Fetching Employee Details
            logger.info("FETCHING EMPLOYEE DETAILS");

            List<Employee> employeeList = new ArrayList<>();
            for(Employer employer : employerList){
                
                List<Employee> perEREmployees = new ArrayList<>();
                perEREmployees = employeeRepository.findByEmployer(employer.getName());
                employeeList.addAll(perEREmployees);

                employee_count += employeeList.size();

                // Payroll Calculation 
                /*
                 * State tax = 4%
                 * Local tax = 3%
                 * Medical Tax = 2%
                 */

                TaxNumbers totalPage = new TaxNumbers();

                if(perEREmployees.size() <= 0){
                    logger.info("NO EMPLOYEE TO PROCESS FOR EMPLOYER : " + employer.getName());
                    break;
                }

                Print printPDF = new PrintPDF(employer.getName());
                Print printCSV = new PrintCSV(employer.getName());

                for(Employee employee : perEREmployees){

                    if(employee.getStatus().equals(EmployeeStatus.INACTIVE.name()))
                        continue;

                    logger.info("PROCESSING EMPLOYEE : " + employee.getId());

                    // Calculate payroll
                    TaxNumbers empPage = new TaxNumbers();
                    empPage.calculateEmployeeTax(employee.getTotalpay(), employee.getDeductions());

                    // Update total variables 
                    totalPage.addValues(empPage);

                    // Generate PDF
                    printPDF.setEmployer(employer);
                    printPDF.setEmployee(employee);
                    printPDF.setTaxNumbers(empPage);
                    printPDF.doPrint();

                    // Generate CSV file
                    printCSV.setEmployer(employer);
                    printCSV.setEmployee(employee);
                    printCSV.setTaxNumbers(empPage);
                    printCSV.doPrint();

                    // Update Employee Status to INACTIVE
                }

                // print Totals form PDF
                printPDF.setEmployer(employer);
                printPDF.setEmployee(null);
                printPDF.setTaxNumbers(totalPage);
                printPDF.doPrint();

                printPDF.closeFile();
                printCSV.closeFile();

                // Notification to Employer

            }

            logger.info("TOTAL EMPLOYEES PROCESSED : " + employeeList.size());

            logger.info("INVOKING AUTOPAY PHASE 6 (PRINTOUTS)");

            logger.info("INVOKING AUTOPAY PHASE 7 (AUDITING)");

            History history = new History();

            history.setEmployer_count(employer_count);
            history.setEmployee_count(employee_count);
            history.setReportcode(inputCard.getReportCode());
            history.setYear(inputCard.getReportCode());
            history.setQuarter(inputCard.getQuarter());
            history.setEmployer(inputCard.getEmployer());
            history.setProcessingtime(Timestamp.valueOf(LocalDateTime.now()));

            historyRepository.save(history);

        } catch(Exception ee) {
            ee.printStackTrace();
            logger.info("EXCEPTION OCCOURED : " + ee + " , DETAILS : " + ee.getStackTrace()[0].toString());
        } finally {
            logger.info("PAYROLL PROCESSED SUCCESSFULLY");
        }

        return null;
    }

    

}
