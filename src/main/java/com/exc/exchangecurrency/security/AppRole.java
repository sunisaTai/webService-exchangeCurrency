package com.exc.exchangecurrency.security;
import com.exc.exchangecurrency.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class AppRole extends BaseEntity {

    /**
     */
    private String name;

    /**
     */
    private String description;

    /**
     */
    private String hrRole;

    /**
     */
    private String workflowUser;

    /**
     */
    private String workflowPassword;
}
