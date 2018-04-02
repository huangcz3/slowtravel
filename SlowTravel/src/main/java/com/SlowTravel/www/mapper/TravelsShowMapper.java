package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.TravelsShow;

import java.util.List;

/**
 * 游记展示持久化操作接口
 *
 */
public interface TravelsShowMapper {

    /**
     *
     * 查找游记id的所有信息
     * @return 热度排名前6的游记
     */
    public TravelsShow selectTravelsShow(int tid);
}
