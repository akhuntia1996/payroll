package com.bitspilani.payroll.model;

import java.io.FileOutputStream;
import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.lowagie.text.Document;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import lombok.NoArgsConstructor;

@Component
@NoArgsConstructor
public class PrintPDF extends Print {

    private final Logger logger = LoggerFactory.getLogger(PrintPDF.class);

    private Document document;
    private PdfPTable table;

    private int count;

    private NumberFormat nfUK;

    public PrintPDF(String erName) {
        logger.info("CREATING PDF FILE FOR EMPLOYER : " + erName);

        document = new Document(PageSize.A4);

        try {
            PdfWriter.getInstance(document, new FileOutputStream(generateFileName(erName)));
            logger.info("PDF FILE CREATED SUCCESSFULLY");

            document.open();
            count = 0;

            nfUK = NumberFormat.getCurrencyInstance(Locale.US);

        } catch (Exception ee) {
            logger.info("EXCEPTION OCCOURED WHILE CREATING PDF FILE : " + ee);    
            ee.printStackTrace();
        }

    }

    @Override
    public void doPrint() {

        Font font = FontFactory.getFont(FontFactory.TIMES_BOLD, 24);
        Paragraph chunk = null;
        if(this.getEmployee() == null){
            chunk = new Paragraph("EMPLOYER TOTAL PAYROLL REPORT\n\n", font);
        } else {
            chunk = new Paragraph("EMPLOYEE PAYROLL REPORT\n\n", font);
        }
        chunk.setAlignment(Paragraph.ALIGN_CENTER);
        document.add(chunk);

        table = new PdfPTable(2);
        
        table.setWidthPercentage(80f);
        table.setWidths(new float[] {2f, 4f});
        table.setSpacingBefore(0);

        table.addCell("EMPLOYER NAME :");
        table.addCell(this.getEmployer().getName());

        table.addCell("EMPLOYER PHONE :");
        table.addCell(this.getEmployer().getPhone());

        table.addCell("EMPLOYER EMAIL :");
        table.addCell(this.getEmployer().getEmail());

        table.addCell("EMPLOYER ADDRESS :");
        table.addCell(this.getEmployer().getAddress() + ", " + this.getEmployer().getRegion() + ", " +
            this.getEmployer().getCountry());

        table.addCell(" ");
        table.addCell(" ");

        table.addCell("EMPLOYEE NAME :");
        table.addCell( (this.getEmployee() != null) ? this.getEmployee().getName() : "");

        table.addCell("EMPLOYEE PHONE :");
        table.addCell((this.getEmployee() != null) ? this.getEmployee().getPhone() : "");

        table.addCell("EMPLOYEE EMAIL :");
        table.addCell((this.getEmployee() != null) ? this.getEmployee().getEmail() : "");

        table.addCell("EMPLOYEE ADDRESS :");
        table.addCell((this.getEmployee() != null) ? this.getEmployee().getAddress() + ", " + this.getEmployee().getRegion() + ", " +
            this.getEmployee().getCountry() : "");

        table.addCell(" ");
        table.addCell(" ");

        table.addCell("EMPLOYEE SSN :");
        table.addCell((this.getEmployee() != null) ? "XX-XX" + this.getEmployee().getSsn().substring(5) : "");

        table.addCell(" ");
        table.addCell(" ");

        table.addCell("TOTAL INCOME :");
        table.addCell(nfUK.format(this.getTaxNumbers().getTotalIncome()));

        table.addCell("STATE TAX :");
        table.addCell(nfUK.format(this.getTaxNumbers().getTotalstateTax()));

        table.addCell("LOCAL TAX :");
        table.addCell(nfUK.format(this.getTaxNumbers().getTotallocalTax()));

        table.addCell("MEDICAL TAX :");
        table.addCell(nfUK.format(this.getTaxNumbers().getTotalmedicalTax()));

        table.addCell("DEDUCTIONS :");
        table.addCell(nfUK.format(this.getTaxNumbers().getTotaldeduction()));

        table.addCell("GROSS :");
        table.addCell(nfUK.format(this.getTaxNumbers().getTotalgross()));

        document.add(table);

        document.newPage();
        count++;
        if(count % 2 == 0)
            document.newPage();

        // Font font = FontFactory.getFont(FontFactory.TIMES_ROMAN, 14);
        // Paragraph chunk = new Paragraph("EMPLOYER\n NAME : " + this.getEmployer().getName(), font);
        // document.add(chunk);

        // chunk = new Paragraph("EMPLOYER PHONE : " + this.getEmployer().getPhone(), font);
        // document.add(chunk);
    }

    @Override
    public String generateFileName(String erName) {
        String filename = "PDF_" + erName + "_" + 
            LocalDateTime.now().format(DateTimeFormatter.ofPattern("d-MMM-uuuu_HH-mm-ss")) + ".pdf";
        return filename;
    }

    @Override
    public void closeFile() {
        document.close();
    }
    
}
