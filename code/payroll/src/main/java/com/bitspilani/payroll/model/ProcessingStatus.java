package com.bitspilani.payroll.model;

import org.springframework.stereotype.Component;

import com.bitspilani.payroll.constants.Status;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ProcessingStatus {
    
    private Status status;
    private int employer;
    private int employee;
    private int pages;
    private String filename;
    private String message;
    
}
