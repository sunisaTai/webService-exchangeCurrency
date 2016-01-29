package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.domain.exc.Currency;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/currencys")
@Controller
@RooWebScaffold(path = "currencys", formBackingObject = Currency.class)
@RooWebJson(jsonObject = Currency.class)
public class CurrencyController {
}
