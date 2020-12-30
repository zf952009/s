package cn.itcast.s.s.controller;


import cn.itcast.s.s.bean.Email;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path = "/mail")
public class MailController {


    @RequestMapping(path = "/sendMail")
    @ResponseBody
    public String sendMail(Email email) {

        System.out.println(email);
        return JSON.toJSONString(email).trim();
    }
}
