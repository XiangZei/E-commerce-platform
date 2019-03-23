package com.dao;

import com.po.Auser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("adminDao")
@Mapper
public interface AdminDao {
    public List<Auser> login(Auser auser);
}
