// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.exc.exchangecurrency.web.exc;

import com.exc.exchangecurrency.domain.exc.DateExchangeCuurency;
import com.exc.exchangecurrency.domain.exc.ExchangeCurrency;
import com.exc.exchangecurrency.web.exc.DateExchangeCuurencyController;
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

privileged aspect DateExchangeCuurencyController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DateExchangeCuurencyController.create(@Valid DateExchangeCuurency dateExchangeCuurency, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, dateExchangeCuurency);
            return "dateexchangecuurencys/create";
        }
        uiModel.asMap().clear();
        dateExchangeCuurency.persist();
        return "redirect:/dateexchangecuurencys/" + encodeUrlPathSegment(dateExchangeCuurency.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DateExchangeCuurencyController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DateExchangeCuurency());
        return "dateexchangecuurencys/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DateExchangeCuurencyController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("dateexchangecuurency", DateExchangeCuurency.findDateExchangeCuurency(id));
        uiModel.addAttribute("itemId", id);
        return "dateexchangecuurencys/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DateExchangeCuurencyController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("dateexchangecuurencys", DateExchangeCuurency.findDateExchangeCuurencyEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) DateExchangeCuurency.countDateExchangeCuurencys() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("dateexchangecuurencys", DateExchangeCuurency.findAllDateExchangeCuurencys(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "dateexchangecuurencys/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DateExchangeCuurencyController.update(@Valid DateExchangeCuurency dateExchangeCuurency, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, dateExchangeCuurency);
            return "dateexchangecuurencys/update";
        }
        uiModel.asMap().clear();
        dateExchangeCuurency.merge();
        return "redirect:/dateexchangecuurencys/" + encodeUrlPathSegment(dateExchangeCuurency.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DateExchangeCuurencyController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, DateExchangeCuurency.findDateExchangeCuurency(id));
        return "dateexchangecuurencys/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DateExchangeCuurencyController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DateExchangeCuurency dateExchangeCuurency = DateExchangeCuurency.findDateExchangeCuurency(id);
        dateExchangeCuurency.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/dateexchangecuurencys";
    }
    
    void DateExchangeCuurencyController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("dateExchangeCuurency_createddate_date_format", "dd/MM/yyyy");
        uiModel.addAttribute("dateExchangeCuurency_updateddate_date_format", "dd/MM/yyyy");
    }
    
    void DateExchangeCuurencyController.populateEditForm(Model uiModel, DateExchangeCuurency dateExchangeCuurency) {
        uiModel.addAttribute("dateExchangeCuurency", dateExchangeCuurency);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("exchangecurrencys", ExchangeCurrency.findAllExchangeCurrencys());
    }
    
    String DateExchangeCuurencyController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
