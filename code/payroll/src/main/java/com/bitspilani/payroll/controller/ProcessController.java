package com.bitspilani.payroll.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.time.Duration;
import java.time.LocalDateTime;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bitspilani.payroll.model.InputCard;
import com.bitspilani.payroll.model.ProcessingStatus;
import com.bitspilani.payroll.service.AnnonlyProcessingService;
import com.bitspilani.payroll.service.ProcessingService;
import com.bitspilani.payroll.service.ReprintProcessingService;

@RestController
public class ProcessController {

    private final Logger logger = LoggerFactory.getLogger(ProcessController.class);

    @Autowired
    private ProcessingService processingService;

    @Autowired
    private AnnonlyProcessingService annopnlyProcessingService;

    @Autowired
    private ReprintProcessingService reprintProcessingService;

    public String executeCommand(String cmd) throws Exception{

        StringBuilder sb = new StringBuilder("");

        ProcessBuilder builder = new ProcessBuilder(
        "cmd.exe", "/c", cmd);
        builder.redirectErrorStream(true);
        Process p = builder.start();
        BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line;
        while (true) {
            line = r.readLine();
            if (line == null) { break; }
            sb.append(line);
            System.out.println(line);
        }

        return sb.toString();
    }

    @GetMapping("/salaryPredict/{file}")
    public String predictSalary(@PathVariable String file){
        try {

            String output = "";
            
            // check if python is installed 
            output = executeCommand("py --version");
            if(!output.split("\\ ")[0].equals("Python"))
                return "Python Not found. Please install python";

            output = executeCommand("pip show pandas");
            if(output.split(" ")[0].equals("WARNING:"))
                output = executeCommand("pip install pandas");

            output = executeCommand("pip show matplotlib");
            if(output.split(" ")[0].equals("WARNING:"))
                output = executeCommand("pip install matplotlib");

            output = executeCommand("pip show scikit-learn");
            if(output.split(" ")[0].equals("WARNING:"))
                output = executeCommand("pip install scikit-learn");

            output = executeCommand("cd \"D:\\all-code\\Payroll\\code\\payroll\\python\" && runPython.bat " + file );
            
            return output;
            
        } catch(Exception ee) {
            ee.printStackTrace();
            logger.info("EXCEPTION WILL ANALYSING THE CODE");
        }

        return "Something is wrong !!";
    }
    
    @PostMapping("/process")
    public ResponseEntity<ProcessingStatus> getData(@RequestBody InputCard inputCard) throws Exception{

        logger.info("START PAYROLL PROCESSING");

        LocalDateTime startTime = LocalDateTime.now();
        logger.info("START TIMESTAMP : " + startTime);
    
        // Processing Service Call 
        ProcessingStatus processingStatus = null;
        if(inputCard.getRunType().trim().isEmpty())
            processingStatus = processingService.process(inputCard);
        else if(inputCard.getRunType().trim().equalsIgnoreCase("annonly"))
            processingStatus = annopnlyProcessingService.process(inputCard);
        else
            processingStatus = reprintProcessingService.process(inputCard);
        
        LocalDateTime endTime = LocalDateTime.now();
        logger.info("END TIMESTAMP : " + endTime);

        Duration duration = Duration.between(startTime, endTime);
        logger.info("PROCESSING TIME TAKEN: " + duration.getSeconds() + " Seconds");

        return new ResponseEntity<>(processingStatus, HttpStatus.OK);
    }
}

/*
 * Endpoints
 * -----------------------
 * http://localhost:8080/process
 * http://localhost:8080/salaryPredict/CSV_ADP_25-Mar-2023_19-19-24.csv
 * 
 */
