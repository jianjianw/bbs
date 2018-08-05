package cn.saymyname.service.Impl;

import cn.saymyname.bean.RealTimeWeight;
import cn.saymyname.dao.WeightMapper;
import cn.saymyname.service.WeightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeightServiceImpl implements WeightService {

    @Autowired
    private WeightMapper weightMapper;
    @Override
    public void save(RealTimeWeight realTimeWeight) {
        weightMapper.save(realTimeWeight);
    }
}
