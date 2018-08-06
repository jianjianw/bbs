package cn.saymyname.dao;

import cn.saymyname.bean.RealTimeWeight;
import org.apache.ibatis.annotations.Insert;

public interface WeightMapper {
    @Insert("insert into real_time_weight (date_str,weight,create_time,user_id) values (#{dateStr},#{weight},#{createTime},#{userId})")
    void save(RealTimeWeight realTimeWeight);

    RealTimeWeight findWeightByUserIdAndDateStr(RealTimeWeight realTimeWeight);

    void update(RealTimeWeight realTimeWeight);

}
