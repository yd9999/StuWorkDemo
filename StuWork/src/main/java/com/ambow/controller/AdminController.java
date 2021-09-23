package com.ambow.controller;

import com.ambow.entity.Admin;
import com.ambow.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    //管理员登录
    @RequestMapping("/login.action")
    public String login(Admin admin, HttpSession session){
        Admin a=adminService.loginService(admin);
        System.out.println("controller测试登录"+admin);
        if (a!=null){
            return "redirect:index.jsp";
        }else {
            return "login";
        }
    }

    @RequestMapping("/admin/index.action")
    public String admiinindex(){

        return  null;
    }
}
