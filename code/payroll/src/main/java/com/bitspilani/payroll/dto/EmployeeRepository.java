package com.bitspilani.payroll.dto;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bitspilani.payroll.entity.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    public List<Employee> findByEmployer(String employerName);
    public Employee findBySsn(String ssn);
    
}
