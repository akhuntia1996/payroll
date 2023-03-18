package com.bitspilani.payroll.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class InputCard {
    
    private String employer;
    private int year;
    private int quarter;
    private int reportCode;
    private String runType;


}

/*
 * 
Sample Card :
--------------------------
 {
  "employer" : "ADP",
  "year": 2023,
  "quarter": 3,
  "reportCode": 863,
  "runType": ""
}

 */
