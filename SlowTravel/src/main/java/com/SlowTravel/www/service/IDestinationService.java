package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.destinations.DesinationImg;
import com.SlowTravel.www.entity.destinations.DestImgWantToGo;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.entity.destinations.DestinationDetails;

import java.util.List;

/**
 *
 * 目的首页业务接口
 */
public interface IDestinationService {

    /**
     * 获取热度前20目的地
     * @return List
     */
    public List<Destination> findHotDest(int number);

    /**
     * 通过ID 查询目的地图片信息
     * @param id
     * @return
     */
    public DestinationDetails findDestById(int id);


    /**
     * 通过目的地ID 和图片类别 分类查询图片
     * @param id
     * @param menu
     * @return
     */
    public List<DesinationImg> findDestPhotoByType(int id, String menu,int number);

    /**
     * 通过目的地ID 查询数量 查询目的地图片
     */
    public List<DesinationImg> selectDestImg(int id ,int number);


    /**
     * 分类查询照片
     * @param did
     * @param ptype
     * @param number
     * @return
     */
    public List<DestImgWantToGo> findDestTypeImg(int did, String ptype, int number);


    //查询目的地图片总数量
    public int findDestImgNumber();


}
