package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.SearchTravel;

import java.util.List;

/**
 * 搜索游记持久化操作接口
 *
 */
public interface SearchTravelMapper {

    /**
     * 搜索游记模糊查询
     * @param search
     * @return
     */
    public List<SearchTravel> selectTravels(String search);
}
