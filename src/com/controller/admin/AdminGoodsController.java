package com.controller.admin;

import com.dao.AdminGoodsDao;
import com.po.Goods;
import com.service.admin.AdminGoodsService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/adminGoods")
public class AdminGoodsController extends BaseController{

    @Autowired
    private AdminGoodsService adminGoodsService;


    @RequestMapping("/selectGoods")
    public String selectGoods(Model model,Integer pageCur,String act){
        return adminGoodsService.selectGoods(model,pageCur,act);
    }

    /**
     * add页面初始化
     */
    @RequestMapping("/toAddGoods")
    public String toAddGoods(Model model){
        model.addAttribute("goods",new Goods());
        return "admin/addGoods";
    }

    /**
     * 增添与修改
     */
    @RequestMapping("/addGoods")
    public String addGoods(@ModelAttribute Goods goods, HttpServletRequest request,String updateAct){
        return adminGoodsService.addOrUpdateGoods(goods,request,updateAct);
    }

    /**
     * 查询一个名片
     * 选择一个物品后可以进行修改和查看详情，所以要在jsp页面中传参数，在selectAgoods的链接中传入一个act参数
     */
    @RequestMapping("/selectAGoods")
    public String selectAGoods(Model model,Integer id,String act){
        return adminGoodsService.selectAGoods(model,id,act);
    }

    /**
     * 删除多个商品
     */
    @RequestMapping("/deleteGoods")
    public String deleteGoods(Integer[] ids,Model model){
        return adminGoodsService.deleteGoods(ids,model);
    }

    /**
     * 删除单个商品
     */
    @RequestMapping("/deleteAGoods")
    public String deleteAGoods(Integer id,Model model){
        return adminGoodsService.deleteAGoods(id,model);
    }

}
