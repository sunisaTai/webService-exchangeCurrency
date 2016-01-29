package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.domain.exc.DateExchangeCuurency;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/dateexchangecuurencys")
@Controller
@RooWebScaffold(path = "dateexchangecuurencys", formBackingObject = DateExchangeCuurency.class)
@RooWebJson(jsonObject = DateExchangeCuurency.class)
public class DateExchangeCuurencyController {
}
