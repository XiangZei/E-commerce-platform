package com.controller.admin;

import com.service.admin.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminUser")
public class AdminUserController extends BaseController {
    @Autowired
    private AdminUserService adminUserService;
    @RequestMapping("/userInfo")
    public String userInfo(Model model){
        return adminUserService.userInfo(model);
    }

    @RequestMapping("/deleteuserManager")
    public String delteuserManager(Integer id,Model model){
        return adminUserService.deleteuserManager(id,model);
    }

}
