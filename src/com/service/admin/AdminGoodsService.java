package com.service.admin;

import com.po.Goods;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

public interface AdminGoodsService {
    String selectGoods(Model model, Integer pageCur, String act);
    String addOrUpdateGoods(Goods goods, HttpServletRequest request,String updateAct);
    String selectAGoods(Model model,Integer id,String act);
    String deleteGoods(Integer[] ids,Model model);
    String deleteAGoods(Integer id,Model model);
}
