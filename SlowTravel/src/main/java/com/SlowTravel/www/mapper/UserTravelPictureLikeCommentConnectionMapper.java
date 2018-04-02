package com.SlowTravel.www.mapper;


import com.SlowTravel.www.entity.Admins;
import com.SlowTravel.www.entity.UserTravelPictureLikeCommentConnection;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 用户游记图片喜欢评论连接模块持久化操作接口
 *
 */

public interface UserTravelPictureLikeCommentConnectionMapper {

    /**
     *
     * 查询热门达人的所有属性
     * @param limit 查询前几条
     * @return
     */
    public List<UserTravelPictureLikeCommentConnection> selectHotMaster(int limit);
}
