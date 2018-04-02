package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.entity.UserTravelPictureLikeCommentConnection;

import java.util.List;

/**
 * 用户游记图片喜欢评论连接模块业务逻辑处理层接口类
 *
 *
 */
public interface IUserTravelPictureLikeCommentConnectionService {

    public List<UserTravelPictureLikeCommentConnection> findHotMaster(int limit);
}
