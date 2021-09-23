package com.ambow.service;

import com.ambow.dao.AdminMapper;
import com.ambow.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    private AdminMapper adminMapper;

    public Admin loginService(Admin admin) {
        return adminMapper.loginDao(admin);
    }
}
