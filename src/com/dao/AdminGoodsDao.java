package com.dao;

import com.po.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("adminGoodsDao")
@Mapper
public interface AdminGoodsDao {
    List<Goods> selectGoods();
    List<Goods> selectAllGoodsByPage(Map<String,Object> map);
    int addGoods(Goods goods);
    Goods selectGoodsById(Integer id);
    int deleteGoods(List<Integer> ids);
    int deleteAGoods(Integer id);
    int updateGoodsById(Goods goods);
    List<Map<String,Object>> selectCartGoods(Integer id);
    List<Map<String,Object>> selectFocusGoods(Integer id);
    List<Map<String ,Object>> selectOrderdetailGoods(Integer id);
}
