// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain.exc;

import com.exc.exchangecurrency.domain.exc.BankDataOnDemand;
import com.exc.exchangecurrency.domain.exc.CurrencyDataOnDemand;
import com.exc.exchangecurrency.domain.exc.DateExchangeCuurencyDataOnDemand;
import com.exc.exchangecurrency.domain.exc.ExchangeCurrency;
import com.exc.exchangecurrency.domain.exc.ExchangeCurrencyDataOnDemand;
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ExchangeCurrencyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ExchangeCurrencyDataOnDemand: @Component;
    
    private Random ExchangeCurrencyDataOnDemand.rnd = new SecureRandom();
    
    private List<ExchangeCurrency> ExchangeCurrencyDataOnDemand.data;
    
    @Autowired
    BankDataOnDemand ExchangeCurrencyDataOnDemand.bankDataOnDemand;
    
    @Autowired
    CurrencyDataOnDemand ExchangeCurrencyDataOnDemand.currencyDataOnDemand;
    
    @Autowired
    DateExchangeCuurencyDataOnDemand ExchangeCurrencyDataOnDemand.dateExchangeCuurencyDataOnDemand;
    
    public ExchangeCurrency ExchangeCurrencyDataOnDemand.getNewTransientExchangeCurrency(int index) {
        ExchangeCurrency obj = new ExchangeCurrency();
        setCreatedBy(obj, index);
        setCreatedDate(obj, index);
        setExchange_Rates(obj, index);
        setStatus(obj, index);
        setUpdatedBy(obj, index);
        setUpdatedDate(obj, index);
        return obj;
    }
    
    public void ExchangeCurrencyDataOnDemand.setCreatedBy(ExchangeCurrency obj, int index) {
        String createdBy = "createdBy_" + index;
        obj.setCreatedBy(createdBy);
    }
    
    public void ExchangeCurrencyDataOnDemand.setCreatedDate(ExchangeCurrency obj, int index) {
        Date createdDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreatedDate(createdDate);
    }
    
    public void ExchangeCurrencyDataOnDemand.setExchange_Rates(ExchangeCurrency obj, int index) {
        Float exchange_Rates = new Integer(index).floatValue();
        obj.setExchange_Rates(exchange_Rates);
    }
    
    public void ExchangeCurrencyDataOnDemand.setStatus(ExchangeCurrency obj, int index) {
        String status = "status_" + index;
        obj.setStatus(status);
    }
    
    public void ExchangeCurrencyDataOnDemand.setUpdatedBy(ExchangeCurrency obj, int index) {
        String updatedBy = "updatedBy_" + index;
        obj.setUpdatedBy(updatedBy);
    }
    
    public void ExchangeCurrencyDataOnDemand.setUpdatedDate(ExchangeCurrency obj, int index) {
        Date updatedDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setUpdatedDate(updatedDate);
    }
    
    public ExchangeCurrency ExchangeCurrencyDataOnDemand.getSpecificExchangeCurrency(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ExchangeCurrency obj = data.get(index);
        Long id = obj.getId();
        return ExchangeCurrency.findExchangeCurrency(id);
    }
    
    public ExchangeCurrency ExchangeCurrencyDataOnDemand.getRandomExchangeCurrency() {
        init();
        ExchangeCurrency obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ExchangeCurrency.findExchangeCurrency(id);
    }
    
    public boolean ExchangeCurrencyDataOnDemand.modifyExchangeCurrency(ExchangeCurrency obj) {
        return false;
    }
    
    public void ExchangeCurrencyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ExchangeCurrency.findExchangeCurrencyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ExchangeCurrency' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ExchangeCurrency>();
        for (int i = 0; i < 10; i++) {
            ExchangeCurrency obj = getNewTransientExchangeCurrency(i);
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
