// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springsource.roo.loanrequest.server.domain;

import org.springsource.roo.loanrequest.server.domain.LoanRequest;

privileged aspect LoanRequest_Roo_JavaBean {
    
    public String LoanRequest.getProcessId() {
        return this.processId;
    }
    
    public void LoanRequest.setProcessId(String processId) {
        this.processId = processId;
    }
    
    public String LoanRequest.getCustomerName() {
        return this.customerName;
    }
    
    public void LoanRequest.setCustomerName(String customerName) {
        this.customerName = customerName;
    }
    
    public Double LoanRequest.getAmount() {
        return this.amount;
    }
    
    public void LoanRequest.setAmount(Double amount) {
        this.amount = amount;
    }
    
}
