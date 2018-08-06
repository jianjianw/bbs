package cn.saymyname.service;

import cn.saymyname.bean.RealTimeWeight;

import java.util.List;

public interface WeightService {
    void save(RealTimeWeight realTimeWeight);

    RealTimeWeight findWeightByUserIdAndDateStr(RealTimeWeight realTimeWeight);

    void update(RealTimeWeight realTimeWeight);

    List<RealTimeWeight> findUserIdByRealTimeWeight(Integer userId);
}
