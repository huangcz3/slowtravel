package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.TravelPictureConnection;
import com.SlowTravel.www.entity.Travels;

import java.util.List;

/**
 * 游记图片持久化操作接口
 *
 */
public interface TravelsPictureMapper {

    /**
     *
     * 查找热门游记
     * @return 热度排名前6的游记
     */
    public List<TravelPictureConnection> selectHotTravels();
}
