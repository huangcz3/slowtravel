package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.TravelPictureConnection;
import com.SlowTravel.www.mapper.TravelsPictureMapper;
import com.SlowTravel.www.service.ITravelsPictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 游记图片模块业务逻辑处理实现类
 *
 */
@Service("travelsPictureService")
@Transactional
public class TravelsPictureServiceImpl implements ITravelsPictureService {

    @Autowired
    TravelsPictureMapper travelsPictureMapper;

    @Override
    public List<TravelPictureConnection> findHotTravels() {
        List<TravelPictureConnection> list = travelsPictureMapper.selectHotTravels();
        return list;
    }
}
