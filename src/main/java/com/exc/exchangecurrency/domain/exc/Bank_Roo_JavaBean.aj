// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain.exc;

import com.exc.exchangecurrency.domain.exc.Bank;
import com.exc.exchangecurrency.domain.exc.ExchangeCurrency;
import java.util.Set;

privileged aspect Bank_Roo_JavaBean {
    
    public String Bank.getBank_Name() {
        return this.bank_Name;
    }
    
    public void Bank.setBank_Name(String bank_Name) {
        this.bank_Name = bank_Name;
    }
    
    public Set<ExchangeCurrency> Bank.getExchangeCurrency() {
        return this.ExchangeCurrency;
    }
    
    public void Bank.setExchangeCurrency(Set<ExchangeCurrency> ExchangeCurrency) {
        this.ExchangeCurrency = ExchangeCurrency;
    }
    
}
