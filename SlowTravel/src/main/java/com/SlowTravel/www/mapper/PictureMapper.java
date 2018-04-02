package com.SlowTravel.www.mapper;


import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Travels;

import java.util.List;

/**
 * 图片持久化操作接口
 *
 */
public interface PictureMapper {

    /**
     * 查询删除游记信息
     * @return
     */
    public List<Picture> selectDeletePicture(int pageNumberIndex);

    /**
     * 查询删除游记总数
     * @return
     */
    public int selectDeletePictureCount();

    /**
     * 恢复删除
     * @param id
     */
    public void renewPicture(int id);

    /**
     * 彻底删除
     * @param id
     */
    public void shiftDeletePicture(int id);

    /**
     * 模糊查询
     * @param search
     * @return
     */
    public List<Picture> searchDeletePicture(String search,int pageNumberIndex);

    /**
     * 模糊查询总数
     */
    public int searchDeletePictureCount(String search);
}
