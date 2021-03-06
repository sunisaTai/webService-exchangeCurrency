package com.exc.exchangecurrency.domain;
import com.exc.exchangecurrency.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class EMailTemplate extends BaseEntity {

    /**
     */
    @NotNull
    @Column(unique = true)
    private String code;

    /**
     */
    private String emailTemplate;
}
