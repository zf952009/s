package cn.itcast.s.s.controller;


import cn.itcast.s.s.bean.Bioarea;
import cn.itcast.s.s.bean.Table1;
import cn.itcast.s.s.bean.UserLogin;
import cn.itcast.s.s.service.Table1Service;
import cn.itcast.s.s.utils.WebUtils;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(path = "/login")
public class LoginController {


    @Autowired
    @Qualifier("table1Service")
    private Table1Service table1Service;

    //6位验证码生成
    @RequestMapping(value = "/token")
    @ResponseBody
    public Object getToken(HttpServletRequest request) {
        String token = WebUtils.token();
        request.getSession(true).setAttribute("userToken", token);
        System.out.println(token);
        return token;
    }

    //登录页面处理
    @ResponseBody
    @RequestMapping(value = "/doLogin")
    public String doLogin(UserLogin userLogin, HttpServletRequest request) {

        userLogin.setUserToken(request.getSession().getAttribute("userToken").toString());


        System.out.println(userLogin);
        return JSON.toJSONString(userLogin).trim();
    }


    @RequestMapping(path = "/toLogin")
    public String toLogin(Model model) {
        List<Table1> list = table1Service.findAll();
        model.addAttribute("data", list);


        return "login";
    }

    @ResponseBody
    @RequestMapping(path = "/bioarea")
    public String doBioarea(Bioarea bioarea) {
        System.out.println(bioarea);
        return JSON.toJSONString(bioarea).trim();
    }
}
