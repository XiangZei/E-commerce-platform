package com.controller.admin;

import com.service.admin.AdminOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminOrder")
public class AdminOrderController {

    @Autowired
    AdminOrderService adminOrderService;
    @RequestMapping("/orderInfo")
    public String orderInfo(Model model){
        return adminOrderService.orderInfo(model);
    }

    public String deleteOrderManager(Model model,Integer id){
        return adminOrderService.deleteOrderManager(model,id);
    }


}
