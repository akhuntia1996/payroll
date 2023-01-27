package com.bitspilani.payroll.constants;

public enum EmployeeStatus {
    
    ACTIVE("Active"), INACTIVE("InActive");

    private final String status;

    EmployeeStatus(final String status) {
        this.status = status;
    }

    public String toString(){
        return this.status;
    }

}
