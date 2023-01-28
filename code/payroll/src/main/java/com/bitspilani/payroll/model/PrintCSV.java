package com.bitspilani.payroll.model;

import java.io.File;
import java.io.FileWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.opencsv.CSVWriter;

import lombok.NoArgsConstructor;

@Component
@NoArgsConstructor
public class PrintCSV extends Print {

    private final Logger logger = LoggerFactory.getLogger(PrintCSV.class);

    private File file = null;
    private FileWriter outputfile = null;
    private CSVWriter writer = null;

    public PrintCSV(String name) {

        try {
            file = new File(generateFileName(name));
            outputfile = new FileWriter(file);
            writer = new CSVWriter(outputfile);

            logger.info("CSV FILE CREATED SUCCESSFULLY");
      
            String[] header = { "ID", "EMPLOYEE_NAME", "EMPLOYER_NAME", "EXPERIENCE",
                "INCOME", "STATE_TAX", "LOCAL_TAX", "MEDICAL_TAX", "DEDUCTIONS", "GROSS" };
            writer.writeNext(header);

        } catch(Exception ee) {
            logger.info("EXCEPTION OCCOURED WHILE CREATING THE CSV FILE : " + ee);
            ee.printStackTrace();
        }

    }

    @Override
    public void doPrint() {
  
        String[] data1 = { Integer.toString(this.getEmployee().getId()), this.getEmployee().getName(),
            this.getEmployee().getEmployer(), Integer.toString(this.getEmployee().getExperience()), 
            this.getEmployee().getTotalpay(), Double.toString(this.getTaxNumbers().getTotalstateTax()),
            Double.toString(this.getTaxNumbers().getTotallocalTax()), Double.toString(this.getTaxNumbers().getTotalmedicalTax()),
            Double.toString(this.getTaxNumbers().getTotaldeduction()), Double.toString(this.getTaxNumbers().getTotalgross()) };
            
        writer.writeNext(data1);
        
    }

    @Override
    public String generateFileName(String erName) {
        String filename = "CSV_" + erName + "_" + 
            LocalDateTime.now().format(DateTimeFormatter.ofPattern("d-MMM-uuuu_HH-mm-ss")) + ".csv";
        return filename;
    }

    @Override
    public void closeFile() {
        try {
            writer.close();        
        } catch (Exception ee) {
            logger.info("EXCEPTION OCCOURED WHILE CLOSING THE CSV FILE : " + ee);
            ee.printStackTrace();
        }
    }
    
}
