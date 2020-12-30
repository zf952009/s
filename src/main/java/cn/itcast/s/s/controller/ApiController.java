package cn.itcast.s.s.controller;


import cn.itcast.s.s.bean.FileList;
import cn.itcast.s.s.bean.Table1;
import cn.itcast.s.s.bean.User;
import cn.itcast.s.s.service.FileListService;
import cn.itcast.s.s.service.Table1Service;
import cn.itcast.s.s.service.UserService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(path = "/table1")
public class ApiController {


    @Autowired
    @Qualifier("table1Service")
    private Table1Service table1Service;

    @Autowired
    @Qualifier("userService")
    private UserService userService;

    @Autowired
    @Qualifier("fileListService")
    private FileListService fileListService;

    @ResponseBody
    @RequestMapping(value = "/doTable1List")
    public String table1List() {
        List<Table1> list = table1Service.findAll();

        return JSON.toJSONString(list).trim();

    }

    @ResponseBody
    @RequestMapping(path = "/userTable")
    public String userTable(){
        List<User> list = userService.findAll();
        return JSON.toJSONString(list).trim();
    }

    @ResponseBody
    @RequestMapping(path = "/fileList")
    public String fileList(){

        List<FileList> lists = fileListService.findAll();
        return JSON.toJSONString(lists).trim();
    }




    @ResponseBody
    @RequestMapping(path = "/test")
    public String toTest() {
        String str1 = "https://www.bilibili.com/video/BV17E411N7KN?p=";
        String str2 = "you-get -o D://360极速浏览器下载//MyBatisPlus ";

        StringBuffer stringBuffer = new StringBuffer().append(str2);
        for (int i = 1; i <= 17; i++) {
            stringBuffer.append(str1 + i + " ");
        }
        return stringBuffer.toString();
    }



}
