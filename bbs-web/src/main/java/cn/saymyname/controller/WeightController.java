package cn.saymyname.controller;

import cn.saymyname.bean.AJAXResult;
import cn.saymyname.bean.RealTimeWeight;
import cn.saymyname.service.WeightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@RequestMapping("/weight")
@Controller
public class WeightController {


    @Autowired
    private WeightService weightService;

    @ResponseBody
    @RequestMapping("/findWeightByUserIdAndDateStr")
    public AJAXResult findWeightByUserIdAndDateStr(RealTimeWeight realTimeWeight){
        AJAXResult result = new AJAXResult();
        try {
            realTimeWeight = weightService.findWeightByUserIdAndDateStr(realTimeWeight);
            result.setSuccess(true);
            result.setData(realTimeWeight);
        } catch (Exception e) {
            result.setSuccess(false);
        }
        return result;
    }


    @ResponseBody
    @RequestMapping("/saveOrUpdate")
    public AJAXResult saveOrUpdate(RealTimeWeight realTimeWeight){
        AJAXResult result = new AJAXResult();

        Calendar calendar = Calendar.getInstance();
        Date date = calendar.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateStr = sdf.format(date);
        realTimeWeight.setDateStr(dateStr);
        try {
            RealTimeWeight dbRealTimeWeight = weightService.findWeightByUserIdAndDateStr(realTimeWeight);
            if(dbRealTimeWeight != null){
                //更新
                realTimeWeight.setId(dbRealTimeWeight.getId());
                weightService.update(realTimeWeight);
                result.setSuccess(true);
            }else{
                //保存
                realTimeWeight.setCreateTime(date);
                realTimeWeight.setDateStr(dateStr);
                weightService.save(realTimeWeight);
                result.setSuccess(true);
            }
        } catch (Exception e) {
            result.setSuccess(false);
        }

        return result;
    }
}
