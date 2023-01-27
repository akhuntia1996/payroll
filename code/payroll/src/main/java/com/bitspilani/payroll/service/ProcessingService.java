package com.bitspilani.payroll.service;

import java.util.List;
import java.util.ArrayList;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitspilani.payroll.constants.EmployeeStatus;
import com.bitspilani.payroll.dto.EmployeeRepository;
import com.bitspilani.payroll.dto.EmployerRepository;
import com.bitspilani.payroll.entity.Employee;
import com.bitspilani.payroll.entity.Employer;
import com.bitspilani.payroll.model.Print;
import com.bitspilani.payroll.model.PrintCSV;
import com.bitspilani.payroll.model.PrintPDF;
import com.bitspilani.payroll.model.ProcessingStatus;
import com.bitspilani.payroll.model.TaxNumbers;

@Service
public class ProcessingService {

    private final Logger logger = LoggerFactory.getLogger(ProcessingService.class);

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private EmployerRepository employerRepository;
    
    public ProcessingStatus process(Optional<String> employerName){

        try {
            // Fetching Employer details 
            logger.info("FETCHING EMPLOYER DETAILS");

            List<Employer> employerList = new ArrayList<>();
            if(employerName.isPresent()){
                employerList = employerRepository.findByName(employerName.get());
            } else {
                employerList = employerRepository.findAll();
            }

            logger.info("NUMBER OF EMPLOYER FETCHED : " + employerList.size());

            // Fetching Employee Details
            logger.info("FETCHING EMPLOYEE DETAILS");

            List<Employee> employeeList = new ArrayList<>();
            for(Employer employer : employerList){
                
                List<Employee> perEREmployees = new ArrayList<>();
                perEREmployees = employeeRepository.findByEmployer(employer.getName());
                employeeList.addAll(perEREmployees);

                // Payroll Calculation 
                /*
                 * State tax = 4%
                 * Local tax = 3%
                 * Medical Tax = 2%
                 */

                TaxNumbers totalPage = new TaxNumbers();

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
                    Print printPDF = new PrintPDF();
                    printPDF.setEmployer(employer);
                    printPDF.setEmployee(employee);
                    printPDF.setTaxNumbers(empPage);
                    printPDF.doPrint();

                    // Generate CSV file
                    Print printCSV = new PrintCSV();
                    printCSV.setEmployer(employer);
                    printCSV.setEmployee(employee);
                    printCSV.setTaxNumbers(empPage);
                    printCSV.doPrint();

                    // Update Employee Status to INACTIVE
                }

                // Notification to Employer

            }

            logger.info("TOTAL EMPLOYEES PROCESSED : " + employeeList.size());


        } catch(Exception ee) {
            ee.printStackTrace();
            logger.info("EXCEPTION OCCOURED : " + ee + " , DETAILS : " + ee.getStackTrace()[0].toString());
        } finally {
            logger.info("PAYROLL PROCESSED SUCCESSFULLY");
        }

        return null;
    }

}
