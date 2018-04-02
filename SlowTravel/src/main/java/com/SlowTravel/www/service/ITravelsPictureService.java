package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.TravelPictureConnection;
import com.SlowTravel.www.entity.Travels;

import java.util.List;

/**
 * 游记图片模块业务逻辑处理层接口类
 *
 *
 */
public interface ITravelsPictureService {

    public List<TravelPictureConnection> findHotTravels();
}
