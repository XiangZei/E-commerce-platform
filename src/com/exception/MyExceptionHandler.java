package com.exception;

import com.po.Auser;
import com.po.Buser;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

public class MyExceptionHandler implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1,Object arg2,
                                         Exception arg3){
        Map<String,Object> model = new HashMap<>();
        model.put("ex",arg3);
        if(arg3 instanceof AdminLoginNoException){
            arg0.setAttribute("auser",new Auser());
            arg0.setAttribute("msg","Ã»ÓÐµÇÂ½£¬ÇëµÇÂ¼£¡");
            return new ModelAndView("admin/login",model);
        }else if(arg3 instanceof UserLoginNoException){
            arg0.setAttribute("buser" ,new Buser());
            arg0.setAttribute("msg","Ã»ÓÐµÇÂ½,ÇëµÇÂ¼!");
            return new ModelAndView("before/login",model);
        }else{
            return new ModelAndView("error/error",model);
        }
    }

}
