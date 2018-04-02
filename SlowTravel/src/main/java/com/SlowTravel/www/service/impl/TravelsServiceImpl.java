package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.Picture;

import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.manager.TravelsList;
import com.SlowTravel.www.mapper.TravelsMapper;
import com.SlowTravel.www.service.ITravelsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 游记模块业务逻辑处理实现类
 *
 */
@Service("travelsService")
@Transactional
public class TravelsServiceImpl implements ITravelsService {


    @Autowired
    TravelsMapper travelsMapper;
    @Override
    public List<Travels> findHotTravels() {
        return travelsMapper.selectHotTravels();
    }

    @Override
    public void  addLoadTravels(Travels travels){
        travelsMapper.insertTravels(travels );
    }

    @Override
    public void addLoadPictrue(Picture picture) {
        travelsMapper.insertPictrue(picture);
    }

    @Override
    public int findTravelId(String time){
        int TravelsId=travelsMapper.insertTravelsId(time);
        return  TravelsId;
    }

    @Override
    public List<TravelsList> findTravelsList(int pageNumberIndex) {
        return travelsMapper.selectTravelsList(pageNumberIndex);
    }

    @Override
    public void modifyTravelsById(int travelsId) {
        travelsMapper.logicDeleteTravelsById(travelsId);
    }

    @Override
    public void modifyTravels(Travels travels) {
        travelsMapper.updateTravelsById(travels);
    }

    @Override
    public int findTravelsCount() {
        return travelsMapper.selectTravelsCount();
    }

    @Override
    public List<TravelsList> findTravelsInfo(String t_name, String local, String username, int pageNumberIndex) {
        return travelsMapper.searchTravelsInfo(t_name,local,username,pageNumberIndex);
    }

    @Override
    public int findTravelsInfoCount(TravelsList travelsList) {
        return travelsMapper.searchTravelsInfoCount(travelsList);
    }

    @Override
    public List<Travels> findDeleteTravel(int pageNumberIndex) {
        return travelsMapper.selectDeleteTravel(pageNumberIndex);
    }

    @Override
    public int findDeleteTravelCount() {
        return travelsMapper.selectDeleteTravelCount();
    }

    @Override
    public void renewTravel(int id) {
        travelsMapper.renewTravel(id);
    }

    @Override
    public void shiftDeleteTravel(int id) {
        travelsMapper.shiftDeleteTravel(id);
    }

    @Override
    public List<Travels> findSearchDeleteTravel(String search, int pageNumberIndex) {
        return travelsMapper.searchDeleteTravel(search,pageNumberIndex);
    }

    @Override
    public int searchDeleteTravelCount(String search) {
        return travelsMapper.searchDeleteTravelCount(search);
    }

    @Override
    public void modifyTravelHot(int id) {
        travelsMapper.updateTravelHot(id);
    }


}
