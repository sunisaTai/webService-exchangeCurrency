package com.exc.exchangecurrency.domain.exc;
import com.exc.exchangecurrency.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class ExchangeCurrency extends BaseEntity {

    /**
     */
    private Float exchange_Rates;

    /**
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Bank")
    private Bank Bank;

    /**
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Date")
    private DateExchangeCuurency DateExchangeCuurency;

    /**
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Currency")
    private Currency Currency;
}
