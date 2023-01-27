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
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TaxNumbers {
    
    private double totalIncome = 0;
    private double totalstateTax = 0;
    private double totallocalTax = 0;
    private double totalmedicalTax = 0;
    private double totaldeduction  = 0;
    private double totalgross = 0;

    public void calculateEmployeeTax(String totalpay, int deduction) {

        double income = Double.parseDouble(totalpay);

        this.setTotalIncome(income);
        this.setTotalstateTax(income * 4 / 100);
        this.setTotallocalTax(income * 3 / 100);
        this.setTotalmedicalTax(income * 2 / 100);
        this.setTotaldeduction((double)deduction);

        this.setTotalgross(income - (this.getTotalstateTax() + this.getTotallocalTax() + this.getTotalmedicalTax()
            + this.getTotaldeduction() ));

    }

    public void addValues(TaxNumbers empPage) {

        this.setTotalIncome(this.getTotalIncome() + empPage.getTotalIncome());
        this.setTotalstateTax(this.getTotalstateTax() + empPage.getTotalstateTax());
        this.setTotallocalTax(this.getTotallocalTax() + empPage.getTotallocalTax());
        this.setTotalmedicalTax(this.getTotalmedicalTax() + empPage.getTotalmedicalTax());
        this.setTotaldeduction(this.getTotaldeduction() + empPage.getTotaldeduction());
        this.setTotalgross(this.getTotalgross() + empPage.getTotalgross());
    }
}
