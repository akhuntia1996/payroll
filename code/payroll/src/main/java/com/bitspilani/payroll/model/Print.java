package com.bitspilani.payroll.model;

import org.springframework.stereotype.Component;

import com.bitspilani.payroll.entity.Employee;
import com.bitspilani.payroll.entity.Employer;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Print {
    
    private Employer employer;
    private Employee employee;
    private double stateTax;
    private double localTax;
    private double medicalTax;
    private double deduction;
    private double gross; 
}
