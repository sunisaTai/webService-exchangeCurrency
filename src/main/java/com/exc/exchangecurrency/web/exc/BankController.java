package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.domain.exc.Bank;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/banks")
@Controller
@RooWebScaffold(path = "banks", formBackingObject = Bank.class)
@RooWebJson(jsonObject = Bank.class)
public class BankController {
}
