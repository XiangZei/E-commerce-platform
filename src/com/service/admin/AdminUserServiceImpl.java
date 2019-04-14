package com.service.admin;

import com.dao.AdminUserDao;
import com.dao.CartDao;
import com.dao.UserCenterDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
@Service
public class AdminUserServiceImpl implements AdminUserService {
    @Autowired
    AdminUserDao adminUserDao;
    @Autowired
    CartDao cartDao;
    @Autowired
    UserCenterDao userCenterDao;
    @Override
    public String userInfo(Model model) {
        model.addAttribute("userList",adminUserDao.userInfo());
        return "admin/userManager";
    }

    @Override
    public String deleteuserManager(Integer id, Model model) {
        if(cartDao.selectCart(id).size()>0||
        userCenterDao.myFocus(id).size()>0||
        userCenterDao.myOrder(id).size()>0){
            return "forward:/adminUser/userInfo";
        }
        if(adminUserDao.deleteuserManager(id)>0){
            model.addAttribute("msg","成功删除用户!");
        }
        return "forward:/adminUser/userInfo";
    }
}
