package com.bitspilani.payroll.dto;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bitspilani.payroll.model.History;

@Repository
public interface HistoryRepository extends JpaRepository<History, Integer> {
    
    
}
