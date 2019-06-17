package com.service.admin;


import com.dao.AdminOrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;

@Service("adminOrderService")

public class AdminOrderServiceImpl implements AdminOrderService {

    @Autowired
    AdminOrderDao adminOrderDao;
    @Override
    public String orderInfo(Model model) {
        List<Map<String,Object>> list = adminOrderDao.orderInfo();
        model.addAttribute("orderList",list);
        return "/admin/orderManager";
    }


    @Override
    public String deleteOrderManager(Model model, Integer id) {
        //先删除明细
        adminOrderDao.deleteOrderDetail(id);
        //在删除订单基础
        adminOrderDao.deleteOrderBase(id);
        return "forward:/adminOrder/orderInfo";

    }


}
