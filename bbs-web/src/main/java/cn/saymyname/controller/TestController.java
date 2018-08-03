package cn.saymyname.controller;

import cn.saymyname.bean.User;
import cn.saymyname.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("test")
@Controller
public class TestController {


    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/queryAll")
    public List<User> queryAll() {
        List<User> users = userService.queryAll();
        return users;
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @ResponseBody
    @RequestMapping("/json")
    public Object json() {
        Map map = new HashMap();
        map.put("username", "zhangsan");
        return map;
    }
}
