package cn.saymyname.controller;


import cn.saymyname.bean.AJAXResult;
import cn.saymyname.bean.TDate;
import cn.saymyname.service.DateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/date")
public class DateController {

    @Autowired
    private DateService dateService;

    @RequestMapping("/insert")
    public void insertDate(){
        dateService.insertDate();
    }
    @ResponseBody
    @RequestMapping("/findDates")
    private AJAXResult findDates(){
        AJAXResult result = new AJAXResult();
        try {
            List<String> dates = dateService.findDates();
            result.setSuccess(true);
            result.setData(dates);
        } catch (Exception e) {
            result.setSuccess(false);
        }
        return result;
    }

}
