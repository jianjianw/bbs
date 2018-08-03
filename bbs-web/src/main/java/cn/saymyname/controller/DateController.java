package cn.saymyname.controller;


import cn.saymyname.bean.TDate;
import cn.saymyname.service.DateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
@RequestMapping("/date")
public class DateController {

    @Autowired
    private DateService dateService;

    @RequestMapping("/insert")
    public void insertDate(){
        dateService.insertDate();
    }

}
