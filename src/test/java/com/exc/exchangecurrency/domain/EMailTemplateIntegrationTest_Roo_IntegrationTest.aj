// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.domain;

import com.exc.exchangecurrency.domain.EMailTemplate;
import com.exc.exchangecurrency.domain.EMailTemplateDataOnDemand;
import com.exc.exchangecurrency.domain.EMailTemplateIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EMailTemplateIntegrationTest_Roo_IntegrationTest {
    
    declare @type: EMailTemplateIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: EMailTemplateIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: EMailTemplateIntegrationTest: @Transactional;
    
    @Autowired
    EMailTemplateDataOnDemand EMailTemplateIntegrationTest.dod;
    
    @Test
    public void EMailTemplateIntegrationTest.testCountEMailTemplates() {
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", dod.getRandomEMailTemplate());
        long count = EMailTemplate.countEMailTemplates();
        Assert.assertTrue("Counter for 'EMailTemplate' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testFindEMailTemplate() {
        EMailTemplate obj = dod.getRandomEMailTemplate();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to provide an identifier", id);
        obj = EMailTemplate.findEMailTemplate(id);
        Assert.assertNotNull("Find method for 'EMailTemplate' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'EMailTemplate' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testFindAllEMailTemplates() {
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", dod.getRandomEMailTemplate());
        long count = EMailTemplate.countEMailTemplates();
        Assert.assertTrue("Too expensive to perform a find all test for 'EMailTemplate', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<EMailTemplate> result = EMailTemplate.findAllEMailTemplates();
        Assert.assertNotNull("Find all method for 'EMailTemplate' illegally returned null", result);
        Assert.assertTrue("Find all method for 'EMailTemplate' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testFindEMailTemplateEntries() {
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", dod.getRandomEMailTemplate());
        long count = EMailTemplate.countEMailTemplates();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<EMailTemplate> result = EMailTemplate.findEMailTemplateEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'EMailTemplate' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'EMailTemplate' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testFlush() {
        EMailTemplate obj = dod.getRandomEMailTemplate();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to provide an identifier", id);
        obj = EMailTemplate.findEMailTemplate(id);
        Assert.assertNotNull("Find method for 'EMailTemplate' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyEMailTemplate(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'EMailTemplate' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testMergeUpdate() {
        EMailTemplate obj = dod.getRandomEMailTemplate();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to provide an identifier", id);
        obj = EMailTemplate.findEMailTemplate(id);
        boolean modified =  dod.modifyEMailTemplate(obj);
        Integer currentVersion = obj.getVersion();
        EMailTemplate merged = (EMailTemplate)obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'EMailTemplate' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", dod.getRandomEMailTemplate());
        EMailTemplate obj = dod.getNewTransientEMailTemplate(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'EMailTemplate' identifier to be null", obj.getId());
        try {
            obj.persist();
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        obj.flush();
        Assert.assertNotNull("Expected 'EMailTemplate' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void EMailTemplateIntegrationTest.testRemove() {
        EMailTemplate obj = dod.getRandomEMailTemplate();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EMailTemplate' failed to provide an identifier", id);
        obj = EMailTemplate.findEMailTemplate(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'EMailTemplate' with identifier '" + id + "'", EMailTemplate.findEMailTemplate(id));
    }
    
}
