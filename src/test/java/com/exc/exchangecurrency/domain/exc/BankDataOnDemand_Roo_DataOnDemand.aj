// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain.exc;

import com.exc.exchangecurrency.domain.exc.Bank;
import com.exc.exchangecurrency.domain.exc.BankDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect BankDataOnDemand_Roo_DataOnDemand {
    
    declare @type: BankDataOnDemand: @Component;
    
    private Random BankDataOnDemand.rnd = new SecureRandom();
    
    private List<Bank> BankDataOnDemand.data;
    
    public Bank BankDataOnDemand.getNewTransientBank(int index) {
        Bank obj = new Bank();
        setBank_Name(obj, index);
        setCreatedBy(obj, index);
        setCreatedDate(obj, index);
        setStatus(obj, index);
        setUpdatedBy(obj, index);
        setUpdatedDate(obj, index);
        return obj;
    }
    
    public void BankDataOnDemand.setBank_Name(Bank obj, int index) {
        String bank_Name = "bank_Name_" + index;
        obj.setBank_Name(bank_Name);
    }
    
    public void BankDataOnDemand.setCreatedBy(Bank obj, int index) {
        String createdBy = "createdBy_" + index;
        obj.setCreatedBy(createdBy);
    }
    
    public void BankDataOnDemand.setCreatedDate(Bank obj, int index) {
        Date createdDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreatedDate(createdDate);
    }
    
    public void BankDataOnDemand.setStatus(Bank obj, int index) {
        String status = "status_" + index;
        obj.setStatus(status);
    }
    
    public void BankDataOnDemand.setUpdatedBy(Bank obj, int index) {
        String updatedBy = "updatedBy_" + index;
        obj.setUpdatedBy(updatedBy);
    }
    
    public void BankDataOnDemand.setUpdatedDate(Bank obj, int index) {
        Date updatedDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setUpdatedDate(updatedDate);
    }
    
    public Bank BankDataOnDemand.getSpecificBank(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Bank obj = data.get(index);
        Long id = obj.getId();
        return Bank.findBank(id);
    }
    
    public Bank BankDataOnDemand.getRandomBank() {
        init();
        Bank obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Bank.findBank(id);
    }
    
    public boolean BankDataOnDemand.modifyBank(Bank obj) {
        return false;
    }
    
    public void BankDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Bank.findBankEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Bank' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Bank>();
        for (int i = 0; i < 10; i++) {
            Bank obj = getNewTransientBank(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
