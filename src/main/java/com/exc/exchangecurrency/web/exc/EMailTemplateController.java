package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.domain.EMailTemplate;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/emailtemplates")
@Controller
@RooWebScaffold(path = "emailtemplates", formBackingObject = EMailTemplate.class)
@RooWebJson(jsonObject = EMailTemplate.class)
public class EMailTemplateController {
}
