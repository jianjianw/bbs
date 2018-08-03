package cn.saymyname.service.Impl;

import cn.saymyname.dao.DateMapper;
import cn.saymyname.service.DateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DateServiceImpl implements DateService {

    @Autowired
    private DateMapper dateMapper;

    @Override
    public void insertDate() {
        dateMapper.insertDate();
    }
}
