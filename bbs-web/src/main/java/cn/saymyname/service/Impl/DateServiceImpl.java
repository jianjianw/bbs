package cn.saymyname.service.Impl;

import cn.saymyname.bean.TDate;
import cn.saymyname.dao.DateMapper;
import cn.saymyname.service.DateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Service
public class DateServiceImpl implements DateService {

    @Autowired
    private DateMapper dateMapper;

    @Override
    public void insertDate() {
        Calendar calendar = Calendar.getInstance();
        Date time = calendar.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(time);
        TDate date = new TDate();
        date.setCreateTime(time);
        date.setDateStr(format);
        dateMapper.insertDate(date);
    }
}
