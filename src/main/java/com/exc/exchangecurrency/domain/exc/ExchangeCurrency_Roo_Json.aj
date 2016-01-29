// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain.exc;

import com.exc.exchangecurrency.domain.exc.ExchangeCurrency;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect ExchangeCurrency_Roo_Json {
    
    public String ExchangeCurrency.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String ExchangeCurrency.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static ExchangeCurrency ExchangeCurrency.fromJsonToExchangeCurrency(String json) {
        return new JSONDeserializer<ExchangeCurrency>()
        .use(null, ExchangeCurrency.class).deserialize(json);
    }
    
    public static String ExchangeCurrency.toJsonArray(Collection<ExchangeCurrency> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String ExchangeCurrency.toJsonArray(Collection<ExchangeCurrency> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<ExchangeCurrency> ExchangeCurrency.fromJsonArrayToExchangeCurrencys(String json) {
        return new JSONDeserializer<List<ExchangeCurrency>>()
        .use("values", ExchangeCurrency.class).deserialize(json);
    }
    
}