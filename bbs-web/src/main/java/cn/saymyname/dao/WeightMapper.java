package cn.saymyname.dao;

import cn.saymyname.bean.RealTimeWeight;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface WeightMapper {
    @Insert("insert into real_time_weight (date_str,weight,create_time,user_id,waist) values (#{dateStr},#{weight},#{createTime},#{userId},#{waist})")
    void save(RealTimeWeight realTimeWeight);

    RealTimeWeight findWeightByUserIdAndDateStr(RealTimeWeight realTimeWeight);

    void update(RealTimeWeight realTimeWeight);

    @Select("select * from real_time_weight where user_id = #{userId} order by date_str desc")
    List<RealTimeWeight> findUserIdByRealTimeWeight(Integer userId);
}
