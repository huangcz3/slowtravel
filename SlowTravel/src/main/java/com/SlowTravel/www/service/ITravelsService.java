package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.manager.TravelsList;

import java.util.List;

/**
 * 游记模块业务逻辑处理层接口类
 *
 *
 */
public interface ITravelsService {

    /**
     *查询热门游记
     * @return
     */
    public List<Travels> findHotTravels();

    /**
     * 上传游记
     * @param travels
     */
    public void addLoadTravels(Travels travels);

    /**
     * 上传图片
     * @param picture
     */
    public void addLoadPictrue(Picture picture);

    /**
     * 根据时间查询游记id
     * @param time
     * @return
     */
    public int findTravelId(String  time);

    /**
     * 后台游记管理显示
     * @param pageNumberIndex
     * @return
     */
    public List<TravelsList> findTravelsList(int pageNumberIndex);

    /**
     * 根据游记id修改游记
     * @param travelsId
     */
    public void modifyTravelsById(int travelsId);

    /**
     * 修改游记
     * @param travels
     */
    public void modifyTravels(Travels travels);

    /**
     * 查找游记个数
     * @return
     */
    public int findTravelsCount();


    /**
     * 查看游记详情
     * @param t_name
     * @param local
     * @param username
     * @param pageNumberIndex
     * @return
     */
    public List<TravelsList> findTravelsInfo(String t_name,String local,String username,int pageNumberIndex);

    /**
     * 查找游记详情个数
     * @param travelsList
     * @return
     */
    public int findTravelsInfoCount(TravelsList travelsList);

    /**
     * 查询删除游记信息
     * @return
     */
    public List<Travels> findDeleteTravel(int pageNumberIndex);

    /**
     * 查询删除游记总数
     * @return
     */
    public int findDeleteTravelCount();

    /**
     * 恢复删除数据
     * @param id
     */
    public void renewTravel(int id);

    /**
     * 彻底删除数据
     * @param id
     */
    public void shiftDeleteTravel(int id);

    /**
     * 模糊查询删除数据
     * @param search
     * @return
     */
    public List<Travels> findSearchDeleteTravel(String search,int pageNumberIndex);

    /**
     * 模糊查询总数
     * @param search
     * @return
     */
    public int searchDeleteTravelCount(String search);

    /**
     * 游记热门度增加
     * @param id
     */
    public void modifyTravelHot(int id);
}
