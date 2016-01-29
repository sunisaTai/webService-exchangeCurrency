package com.exc.exchangecurrency.web.exc;
import com.exc.exchangecurrency.security.AppUser;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/appusers")
@Controller
@RooWebScaffold(path = "appusers", formBackingObject = AppUser.class)
@RooWebJson(jsonObject = AppUser.class)
public class AppUserController {
}
