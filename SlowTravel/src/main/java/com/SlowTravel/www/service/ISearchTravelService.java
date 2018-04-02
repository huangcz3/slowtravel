package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.entity.SearchTravel;

import java.util.List;

/**
 * 搜索游记模块业务逻辑处理层接口类
 *
 *
 */
public interface ISearchTravelService {

    /**
     * 搜索游记模糊查询
     * @param search
     * @return
     */
    public List<SearchTravel> findTravels(String search);
}
