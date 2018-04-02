package com.SlowTravel.www.service;


import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Travels;

import java.util.List;

/**
 * 图片模块业务逻辑处理层接口类
 *
 *
 */
public interface IPictureService {

    /**
     * 查询删除游记信息
     * @return
     */
    public List<Picture> findDeletePicture(int pageNumberIndex);

    /**
     * 查询删除游记总数
     * @return
     */
    public int findDeletePictureCount();


    /**
     * 恢复删除数据
     * @param id
     */
    public void renewPicture(int id);

    /**
     * 彻底删除数据
     * @param id
     */
    public void shiftDeletePicture(int id);

    /**
     * 模糊查询删除数据
     * @param search
     * @return
     */
    public List<Picture> findSearchDeletePicture(String search, int pageNumberIndex);

    /**
     * 模糊查询总数
     * @param search
     * @return
     */
    public int searchDeletePictureCount(String search);
}
