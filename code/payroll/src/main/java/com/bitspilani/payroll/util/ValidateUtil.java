package com.bitspilani.payroll.util;

import org.springframework.stereotype.Component;

import com.bitspilani.payroll.model.InputCard;

@Component
public class ValidateUtil {
    
    public String doValidateInputCard(InputCard inputCard){

        if(inputCard.getEmployer() == null || inputCard.getEmployer().trim().isEmpty())
            return "Invalid Employer Name";
        
        if(inputCard.getYear() < 2022 || inputCard.getYear() > 2023)
            return "Invalid Year";
        
        if(inputCard.getQuarter() < 1 || inputCard.getQuarter() > 4)
            return "Invalid Quarter";

        if(inputCard.getReportCode() != 863 && inputCard.getReportCode() != 820)
            return "Invalid Report Code";
        
        if((!inputCard.getRunType().trim().isEmpty()) && 
            (!inputCard.getRunType().trim().equals("Annonly")) &&
            (!inputCard.getRunType().trim().equals("Reprint")) )
            return "Invalid RunType";

        return "Validated Successfully";
    }
}
