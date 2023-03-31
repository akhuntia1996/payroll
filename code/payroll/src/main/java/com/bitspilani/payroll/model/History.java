package com.bitspilani.payroll.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
public class History {

    @Id
    @GeneratedValue
    private int sno;

    private String runtype;
    private int employee_count;
    private int reportcode;
    private String employer;
    private int year;
    private int quarter;
    private Timestamp processingtime;
    private String csvfile;
    private String pdffile;

}
