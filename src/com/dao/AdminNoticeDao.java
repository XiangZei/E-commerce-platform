package com.dao;

import com.po.Notice;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("adminNoticeDao")
@Mapper
public interface AdminNoticeDao {
    int addNotice(Notice notice);
    List<Notice> deleteNoticeSelect();
    int deleteNotice(Integer id);
    Notice selectANotice(Integer id);
}
