package com.bitspilani.payroll.controller;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bitspilani.payroll.model.ProcessingStatus;
import com.bitspilani.payroll.service.ProcessingService;

@RestController
public class ProcessController {

    private final Logger logger = LoggerFactory.getLogger(ProcessController.class);

    @Autowired
    private ProcessingService processingService;
    
    @PostMapping("/process")
    public ResponseEntity<ProcessingStatus> getData(@RequestParam Optional<String> employerName){
        
        logger.info("START PAYROLL PROCESSING");

        LocalDateTime startTime = LocalDateTime.now();
        logger.info("START TIMESTAMP : " + startTime);

        // Processing Service Call 
        ProcessingStatus processingStatus = processingService.process(employerName);
        
        LocalDateTime endTime = LocalDateTime.now();
        logger.info("END TIMESTAMP : " + endTime);

        Duration duration = Duration.between(startTime, endTime);
        logger.info("PROCESSING TIME TAKEN: " + duration.getSeconds() + " Seconds");

        return new ResponseEntity<>(processingStatus, HttpStatus.OK);
    }
}
