package com.bitspilani.payroll.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Employee {
    
    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "Employer")
    private String employer;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "address")
    private String address;

    @Column(name = "postalZip")
    private String postalZip;

    @Column(name = "region")
    private String region;

    @Column(name = "country")
    private String country;

    @Column(name = "ssn")
    private String ssn;

    @Column(name = "totalpay")
    private String totalpay;

    @Column(name = "frequency")
    private String frequency;

    @Column(name = "overtime")
    private int overtime;

    @Column(name = "Status")
    private String status;

    @Column(name = "Deductions")
    private int deductions;

    @Column(name = "experience")
    private int experience;

}
