package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.mapper.PictureMapper;
import com.SlowTravel.www.mapper.RoleMapper;
import com.SlowTravel.www.mapper.TravelsMapper;
import com.SlowTravel.www.service.IPictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 图片模块业务逻辑处理实现类
 *
 */
@Service("pictureService")
@Transactional
public class PictureServiceImpl implements IPictureService {


    @Autowired
    PictureMapper pictureMapper;

    @Override
    public List<Picture> findDeletePicture(int pageNumberIndex) {
        return pictureMapper.selectDeletePicture(pageNumberIndex);
    }

    @Override
    public int findDeletePictureCount() {
        return pictureMapper.selectDeletePictureCount();
    }

    @Override
    public void renewPicture(int id) {
        pictureMapper.renewPicture(id);
    }

    @Override
    public void shiftDeletePicture(int id) {
        pictureMapper.shiftDeletePicture(id);
    }

    @Override
    public List<Picture> findSearchDeletePicture(String search, int pageNumberIndex) {
        return pictureMapper.searchDeletePicture(search,pageNumberIndex);
    }

    @Override
    public int searchDeletePictureCount(String search) {
        return pictureMapper.searchDeletePictureCount(search);
    }
}
