package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.UserInfo;
import com.SlowTravel.www.entity.manager.MyData;

/**
 * 用户信息模块逻辑处理层接口
 *
 *
 */
public interface IUserInfoService {

    /**
     * 后台管理系统我的资料显示
     * @param userId
     * @return
     */
    public MyData findManagerUserInfo(int userId);

    /**
     * 后台管理系统修改我的资料
     * @param sex
     * @param birthday
     * @param eamil
     * @param introduce
     * @param userId
     */
    public void modifyManagerUserInfo(String sex,String birthday,String eamil,String  introduce,int userId);

    /**
     * 前台显示用户所有信息
     *
     * @param user_id
     *
     * @return UserInfo
     */
    //返回用户信息
    public UserInfo findUserInfo(int user_id);

    /**
     * 前台填写用户信息添加到数据库
     *
     * @param userInfo
     *
     */
    public void addUserInfo(UserInfo userInfo);

    /**
     * 后台管理系统修改我的资料
     * @param sex
     * @param birthday
     * @param eamil
     * @param introduce
     * @param userId
     */
    public  void modifyUserInfo(String sex,String birthday,String eamil,String  introduce,int userId);
}
