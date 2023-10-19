package com.sunbase.asignment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageCustomerController {
    @RequestMapping("/manage_customer")
    public String loginMessage() {
        return "manage";
    }
}
