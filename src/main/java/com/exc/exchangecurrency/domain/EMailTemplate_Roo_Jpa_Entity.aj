// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain;

import com.exc.exchangecurrency.domain.EMailTemplate;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

privileged aspect EMailTemplate_Roo_Jpa_Entity {
    
    declare @type: EMailTemplate: @Entity;
    
    declare @type: EMailTemplate: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
}