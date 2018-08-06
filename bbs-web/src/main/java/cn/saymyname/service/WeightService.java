package cn.saymyname.service;

import cn.saymyname.bean.RealTimeWeight;

public interface WeightService {
    void save(RealTimeWeight realTimeWeight);

    RealTimeWeight findWeightByUserIdAndDateStr(RealTimeWeight realTimeWeight);

    void update(RealTimeWeight realTimeWeight);
}
