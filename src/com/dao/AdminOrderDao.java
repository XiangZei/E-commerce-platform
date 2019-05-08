package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository("adminOrderDao")
@Mapper

public interface AdminOrderDao {

    List<Map<String, Object>> orderInfo();

    void deleteOrderDetail(Integer id);

    void deleteOrderBase(Integer id);
}
