package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.TravelsShow;

import java.util.List;

/**
 * 游记展示模块业务逻辑处理层接口类
 *
 *
 */
public interface ITravelsShowService {

    /**
     *
     * 根据id查询游记展示信息
     * @param tid
     * @return
     */
    public TravelsShow findTravelsShowById(int tid);
}
