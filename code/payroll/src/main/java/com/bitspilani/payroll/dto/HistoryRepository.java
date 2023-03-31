package com.bitspilani.payroll.dto;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bitspilani.payroll.model.History;

@Repository
public interface HistoryRepository extends JpaRepository<History, Integer> {
    
    @Query( value = "SELECT * FROM HISTORY H WHERE H.REPORTCODE=?1 AND H.EMPLOYER=?2 AND H.YEAR=?3 AND H.QUARTER=?4 AND H.RUNTYPE=''", nativeQuery = true)
    public List<History> findByReportcodeAndEmployerAndYearAndQuarter(int reportcode, String employer, 
        int year, int quarter);
}
