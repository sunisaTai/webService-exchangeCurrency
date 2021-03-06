package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.domain.exc.ExchangeCurrency;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/exchangecurrencys")
@Controller
@RooWebScaffold(path = "exchangecurrencys", formBackingObject = ExchangeCurrency.class)
@RooWebJson(jsonObject = ExchangeCurrency.class)
public class ExchangeCurrencyController {
}
