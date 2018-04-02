package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.entity.SearchTravel;
import com.SlowTravel.www.mapper.RoleMapper;
import com.SlowTravel.www.mapper.SearchTravelMapper;
import com.SlowTravel.www.service.IRoleService;
import com.SlowTravel.www.service.ISearchTravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 管理员模块业务逻辑处理实现类
 *
 */
@Service("searchService")
@Transactional
public class SearchTravelServiceImpl implements ISearchTravelService {

    @Autowired
    SearchTravelMapper searchTravelMapper;


    @Override
    public List<SearchTravel> findTravels(String search) {
        return searchTravelMapper.selectTravels(search);
    }
}
