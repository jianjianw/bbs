package cn.saymyname.dao;

import cn.saymyname.bean.TDate;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DateMapper {

    void insertDate(TDate date);

    @Select("select date_str from t_date")
    List<String> findDates();

}
