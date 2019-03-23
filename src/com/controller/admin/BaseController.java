package com.controller.admin;


import com.exception.AdminLoginNoException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BaseController {

    /**
     *登录权限控制，在处理方法前执行该方法
     * @throws AdminLoginNoException
     */
    @ModelAttribute
    public void isLogin(HttpSession session, HttpServletRequest request)
    throws AdminLoginNoException {
            if(session.getAttribute("auser")==null){
                throw new AdminLoginNoException("没有登陆");
            }
    }
}
