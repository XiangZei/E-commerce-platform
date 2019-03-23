package com.service.admin;

import com.dao.AdminDao;
import com.dao.AdminTypeDao;
import com.po.Auser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private AdminTypeDao adminTypeDao;
    @Override
    public String login(Auser auser, Model model, HttpSession session){
        if(adminDao.login(auser)!=null&& adminDao.login(auser).size()>0){
            session.setAttribute("auser",auser);
            session.setAttribute("goodsType",adminTypeDao.selectGoodsType());
            return "admin/main";
        }
        model.addAttribute("msg","用户名或密码错误");
        return "admin/login";
    }
}
