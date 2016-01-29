package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.domain.ParameterDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/parameterdetails")
@Controller
@RooWebScaffold(path = "parameterdetails", formBackingObject = ParameterDetail.class)
@RooWebJson(jsonObject = ParameterDetail.class)
public class ParameterDetailController {
}
