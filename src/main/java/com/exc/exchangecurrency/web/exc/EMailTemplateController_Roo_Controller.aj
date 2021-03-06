// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.web.exc;

import com.exc.exchangecurrency.domain.EMailTemplate;
import com.exc.exchangecurrency.web.exc.EMailTemplateController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect EMailTemplateController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EMailTemplateController.create(@Valid EMailTemplate EMailTemplate_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, EMailTemplate_);
            return "emailtemplates/create";
        }
        uiModel.asMap().clear();
        EMailTemplate_.persist();
        return "redirect:/emailtemplates/" + encodeUrlPathSegment(EMailTemplate_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EMailTemplateController.createForm(Model uiModel) {
        populateEditForm(uiModel, new EMailTemplate());
        return "emailtemplates/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EMailTemplateController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("emailtemplate_", EMailTemplate.findEMailTemplate(id));
        uiModel.addAttribute("itemId", id);
        return "emailtemplates/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EMailTemplateController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("emailtemplates", EMailTemplate.findEMailTemplateEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) EMailTemplate.countEMailTemplates() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("emailtemplates", EMailTemplate.findAllEMailTemplates(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "emailtemplates/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EMailTemplateController.update(@Valid EMailTemplate EMailTemplate_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, EMailTemplate_);
            return "emailtemplates/update";
        }
        uiModel.asMap().clear();
        EMailTemplate_.merge();
        return "redirect:/emailtemplates/" + encodeUrlPathSegment(EMailTemplate_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EMailTemplateController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, EMailTemplate.findEMailTemplate(id));
        return "emailtemplates/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EMailTemplateController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EMailTemplate EMailTemplate_ = EMailTemplate.findEMailTemplate(id);
        EMailTemplate_.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/emailtemplates";
    }
    
    void EMailTemplateController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("EMailTemplate__createddate_date_format", "dd/MM/yyyy");
        uiModel.addAttribute("EMailTemplate__updateddate_date_format", "dd/MM/yyyy");
    }
    
    void EMailTemplateController.populateEditForm(Model uiModel, EMailTemplate EMailTemplate_) {
        uiModel.addAttribute("EMailTemplate_", EMailTemplate_);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String EMailTemplateController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
