package com.exc.exchangecurrency.domain.exc;
import com.exc.exchangecurrency.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class DateExchangeCuurency extends BaseEntity {

    /**
     */
    private Integer dateExchangeCuurency;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "DateExchangeCuurency")
    private Set<ExchangeCurrency> ExchangeCurrency = new HashSet<ExchangeCurrency>();
}
