package com.SlowTravel.www.service.impl;

import com.SlowTravel.www.entity.UserInfo;
import com.SlowTravel.www.entity.manager.MyData;
import com.SlowTravel.www.mapper.UserInfoMapper;
import com.SlowTravel.www.service.IUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户信息操作层
 *
 *
 */

@Service(value="userInfoService")
@Transactional

public class UserInfoServiceImpl implements IUserInfoService{

    @Autowired
    UserInfoMapper userInfoMapper;

    @Override
    public MyData findManagerUserInfo(int userId) {
        return userInfoMapper.selectManagerUserInfo(userId);
    }

    @Override
    public void modifyManagerUserInfo(String sex, String birthday, String eamil, String introduce, int userId) {
        userInfoMapper.updateManagerUserInfo(sex,birthday,eamil,introduce,userId);
    }

    @Override
    public void  addUserInfo(UserInfo userInfo) {
        userInfoMapper.insertUserInfo(userInfo);
    }


    @Override
    public UserInfo findUserInfo(int user_id) {
        UserInfo userInfo = userInfoMapper.selectUserInfo(user_id);
        return userInfo;
    }

    @Override
    public  void modifyUserInfo(String sex, String birthday, String eamil, String introduce, int userId){
        userInfoMapper.updateUserInfo(sex,birthday,eamil,introduce,userId);
    }
}
