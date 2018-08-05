package cn.saymyname.controller;

import cn.saymyname.bean.AJAXResult;
import cn.saymyname.bean.RealTimeWeight;
import cn.saymyname.service.WeightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/weight")
@Controller
public class WeightController {


    @Autowired
    private WeightService weightService;
    @ResponseBody
    @RequestMapping("/save")
    public AJAXResult save(RealTimeWeight realTimeWeight){
        AJAXResult result = new AJAXResult();
        try {
            weightService.save(realTimeWeight);
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
        }
        return result;
    }
}
