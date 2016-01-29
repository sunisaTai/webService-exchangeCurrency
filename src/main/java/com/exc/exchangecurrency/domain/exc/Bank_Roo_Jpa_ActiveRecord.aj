// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain.exc;

import com.exc.exchangecurrency.domain.exc.Bank;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Bank_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Bank.fieldNames4OrderClauseFilter = java.util.Arrays.asList("bank_Name", "ExchangeCurrency");
    
    public static long Bank.countBanks() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Bank o", Long.class).getSingleResult();
    }
    
    public static List<Bank> Bank.findAllBanks() {
        return entityManager().createQuery("SELECT o FROM Bank o", Bank.class).getResultList();
    }
    
    public static List<Bank> Bank.findAllBanks(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Bank o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Bank.class).getResultList();
    }
    
    public static Bank Bank.findBank(Long id) {
        if (id == null) return null;
        return entityManager().find(Bank.class, id);
    }
    
    public static List<Bank> Bank.findBankEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Bank o", Bank.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Bank> Bank.findBankEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Bank o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Bank.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Bank Bank.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Bank merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
