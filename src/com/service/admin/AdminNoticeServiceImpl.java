package com.service.admin;

import com.dao.AdminNoticeDao;
import com.po.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service("adminNoticeService")
public class AdminNoticeServiceImpl implements AdminNoticeService {
    @Autowired
    AdminNoticeDao adminNoticeDao;
    @Override
    public String addNotice(Notice notice) {
        adminNoticeDao.addNotice(notice);
        return "forward:/adminNotice/deleteNoticeSelect";
    }

    @Override
    public String deleteNoticeSelect(Model model) {
        List<Notice> notices=adminNoticeDao.deleteNoticeSelect();
        model.addAttribute("allNotices",notices);
        return "admin/deleteNoticeSelect";
    }

    @Override
    public String delteNotice(Integer id) {
        adminNoticeDao.deleteNotice(id);
        return "forward:/adminNotice/deleteNoticeSelect";
    }

    @Override
    public String selectANotice(Model model, Integer id) {
        Notice notice=adminNoticeDao.selectANotice(id);
        model.addAttribute("notice",notice);
        return "admin/noticeDetail";
    }
}
