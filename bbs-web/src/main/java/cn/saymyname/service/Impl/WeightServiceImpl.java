package cn.saymyname.service.Impl;

import cn.saymyname.bean.RealTimeWeight;
import cn.saymyname.dao.WeightMapper;
import cn.saymyname.service.WeightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WeightServiceImpl implements WeightService {

    @Autowired
    private WeightMapper weightMapper;
    @Override
    public void save(RealTimeWeight realTimeWeight) {
        weightMapper.save(realTimeWeight);
    }

    @Override
    public RealTimeWeight findWeightByUserIdAndDateStr(RealTimeWeight realTimeWeight) {
        return weightMapper.findWeightByUserIdAndDateStr(realTimeWeight);
    }

    @Override
    public void update(RealTimeWeight realTimeWeight) {
        weightMapper.update(realTimeWeight);
    }

    @Override
    public List<RealTimeWeight> findUserIdByRealTimeWeight(Integer userId) {
        return weightMapper.findUserIdByRealTimeWeight(userId);
    }
}
