package com.SlowTravel.www.service.impl;

import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.destinations.DesinationImg;
import com.SlowTravel.www.entity.destinations.DestImgWantToGo;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.entity.destinations.DestinationDetails;
import com.SlowTravel.www.mapper.DestinationMapper;
import com.SlowTravel.www.service.IDestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 * 目的的业务操作实体类
 */
@Service(value="desService")
@Transactional
public class DestinationServiceImpl implements IDestinationService{

    @Autowired
    DestinationMapper destinationMapper;

    /**
     * 获取热度前20目的地方法
     * @return
     */
    @Override
    public List<Destination> findHotDest(int number) {
        return destinationMapper.selectHotDest(number);
    }

    /**
     * 获取目的地详情基本数据对象
     * @return
     */

    @Override
    public DestinationDetails findDestById(int id) {
        return destinationMapper.selectDestById(id);
    }

    /**
     * 通过类别获取图片
     * @param id
     * @param menu
     * @return
     */
    @Override
    public List<DesinationImg> findDestPhotoByType(int id, String menu,int number) {

        return destinationMapper.selectDestPhotoByType(id,menu,number);
    }

    /**
     * 通过目的地ID 数量获取目的的图片
     * \* @param id
     * @param number
     * @return
     */
    @Override
    public List<DesinationImg> selectDestImg(int id, int number) {
        return destinationMapper.selectDestPhoto(id,number);
    }

    @Override
    public List<DestImgWantToGo> findDestTypeImg(int did, String ptype, int number) {
        return destinationMapper.selectDestTypePhoto(did,ptype,number);
    }

    @Override
    public int findDestImgNumber() {
        return destinationMapper.selectDestImgNumber();
    }


}
