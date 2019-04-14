package com.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminOrder")
public class AdminOrderController {

    @RequestMapping("/orderInfo")
    public String orderInfo(Model model){
        return null;
    }
}
