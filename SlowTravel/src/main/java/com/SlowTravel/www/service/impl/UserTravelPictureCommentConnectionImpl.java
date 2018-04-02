package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.entity.UserTravelPictureLikeCommentConnection;
import com.SlowTravel.www.mapper.RoleMapper;
import com.SlowTravel.www.mapper.UserTravelPictureLikeCommentConnectionMapper;
import com.SlowTravel.www.service.IRoleService;
import com.SlowTravel.www.service.IUserTravelPictureLikeCommentConnectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 用户游记图片喜欢评论连接模块业务逻辑处理实现类
 *
 */
@Service("userTravelPictureLikeCommentConnectionService")
@Transactional
public class UserTravelPictureCommentConnectionImpl implements IUserTravelPictureLikeCommentConnectionService {

    @Autowired
    UserTravelPictureLikeCommentConnectionMapper userTravelPictureLikeCommentConnectionMapper;

    @Override
    public List<UserTravelPictureLikeCommentConnection> findHotMaster(int limit) {
        return userTravelPictureLikeCommentConnectionMapper.selectHotMaster(limit);
    }

}
