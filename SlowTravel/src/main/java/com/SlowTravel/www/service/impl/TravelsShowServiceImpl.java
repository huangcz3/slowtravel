package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.TravelsShow;
import com.SlowTravel.www.mapper.TravelsShowMapper;
import com.SlowTravel.www.service.ITravelsShowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * 游记展示模块业务逻辑处理实现类
 *
 */
@Service("travelsShowService")
@Transactional
public class TravelsShowServiceImpl implements ITravelsShowService {

    @Autowired
    TravelsShowMapper travelsShowMapper;


    @Override
    public TravelsShow findTravelsShowById(int tid) {
        return travelsShowMapper.selectTravelsShow(tid);
    }
}
