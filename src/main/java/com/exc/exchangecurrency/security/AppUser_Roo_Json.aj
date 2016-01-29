// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.security;

import com.exc.exchangecurrency.security.AppUser;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect AppUser_Roo_Json {
    
    public String AppUser.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String AppUser.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static AppUser AppUser.fromJsonToAppUser(String json) {
        return new JSONDeserializer<AppUser>()
        .use(null, AppUser.class).deserialize(json);
    }
    
    public static String AppUser.toJsonArray(Collection<AppUser> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String AppUser.toJsonArray(Collection<AppUser> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<AppUser> AppUser.fromJsonArrayToAppUsers(String json) {
        return new JSONDeserializer<List<AppUser>>()
        .use("values", AppUser.class).deserialize(json);
    }
    
}
