package cn.saymyname.controller;

import cn.saymyname.bean.AJAXResult;
import cn.saymyname.bean.RealTimeWeight;
import cn.saymyname.service.WeightService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

@RequestMapping("/weight")
@Controller
public class WeightController {

    private static Logger logger = LoggerFactory.getLogger(WeightController.class);


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
        String json = null;
        try {
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(realTimeWeight);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        logger.info(json);
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
            logger.info(e.getMessage());
        }

        return result;
    }
    @ResponseBody
    @RequestMapping("/findUserIdByRealTimeWeight")
    public AJAXResult findUserIdByRealTimeWeight(Integer userId){
        AJAXResult result = new AJAXResult();
        Map<String,Object> map = new HashMap<>();
        List<BigDecimal> weight = new ArrayList<>();
        List<BigDecimal> waist = new ArrayList<>();
        List<String> dates = new ArrayList<>();

        try {

            List<RealTimeWeight> realTimeWeights =  weightService.findUserIdByRealTimeWeight(userId);
            Comparator<RealTimeWeight> comparing = Comparator.comparing(RealTimeWeight::getDateStr);
            realTimeWeights.sort(comparing);//默认是升序

            if(realTimeWeights != null && realTimeWeights.size()>=8){//获取最近7天的数据
                realTimeWeights = realTimeWeights.subList(realTimeWeights.size() - 7, realTimeWeights.size());
            }
            for (RealTimeWeight realTimeWeight : realTimeWeights){
                weight.add(realTimeWeight.getWeight());
                waist.add(realTimeWeight.getWaist());
                dates.add(realTimeWeight.getDateStr());
            }
            map.put("weight",weight);
            map.put("waist",waist);
            map.put("dates",dates);
            result.setData(map);
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
        }

        return result;
    }

}
