// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain.exc;

import com.exc.exchangecurrency.domain.exc.DateExchangeCuurency;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

privileged aspect DateExchangeCuurency_Roo_Jpa_Entity {
    
    declare @type: DateExchangeCuurency: @Entity;
    
    declare @type: DateExchangeCuurency: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
}
