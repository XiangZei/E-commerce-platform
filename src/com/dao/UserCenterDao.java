package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("userCenterDao")
@Mapper
public interface UserCenterDao {
    List<Map<String,Object>> myOrder(Integer bid);
    List<Map<String,Object>> myFocus(Integer bid);
    List<Map<String,Object>> orderDetail(Integer ordersn);
}
