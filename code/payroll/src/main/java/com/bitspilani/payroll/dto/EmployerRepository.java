package com.bitspilani.payroll.dto;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bitspilani.payroll.entity.Employer;

@Repository
public interface EmployerRepository extends JpaRepository<Employer, Integer> {

    List<Employer> findByName(String employerName);
    
}
