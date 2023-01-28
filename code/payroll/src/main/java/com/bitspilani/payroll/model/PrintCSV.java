package com.bitspilani.payroll.model;

import org.springframework.stereotype.Component;

import lombok.NoArgsConstructor;

@Component
@NoArgsConstructor
public class PrintCSV extends Print {

    public PrintCSV(String name) {
    }

    @Override
    public void doPrint() {
        // TODO Auto-generated method stub
        
    }

    @Override
    public String generateFileName(String erName) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void closeFile() {
        // TODO Auto-generated method stub
        
    }
    
}
