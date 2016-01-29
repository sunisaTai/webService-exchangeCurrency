// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain;

import com.exc.exchangecurrency.domain.EMailTemplate;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect EMailTemplate_Roo_Json {
    
    public String EMailTemplate.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String EMailTemplate.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static EMailTemplate EMailTemplate.fromJsonToEMailTemplate(String json) {
        return new JSONDeserializer<EMailTemplate>()
        .use(null, EMailTemplate.class).deserialize(json);
    }
    
    public static String EMailTemplate.toJsonArray(Collection<EMailTemplate> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String EMailTemplate.toJsonArray(Collection<EMailTemplate> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<EMailTemplate> EMailTemplate.fromJsonArrayToEMailTemplates(String json) {
        return new JSONDeserializer<List<EMailTemplate>>()
        .use("values", EMailTemplate.class).deserialize(json);
    }
    
}
