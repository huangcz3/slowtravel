package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.UserInfo;
import com.SlowTravel.www.entity.manager.MyData;
import org.apache.ibatis.annotations.Param;

/**
 *
 * 后台我的资料持久层接口
 *
 *
 */
public interface UserInfoMapper {



    //返回用户信息
    public MyData selectManagerUserInfo(int userid);

    //修改用户信息
    public void updateManagerUserInfo(@Param("sex")String sex,
                                      @Param("birthday")String birthday,
                                      @Param("eamil")String eamil,
                                      @Param("introduce")String introduce,
                                      @Param("userId")int userId);

    //返回用户信息
    public UserInfo selectUserInfo(int user_id);

    //添加用户信息到数据库
    public void insertUserInfo(UserInfo userInfo);

    //前台修改用户信息添加到数据库
    public void updateUserInfo(@Param("sex")String sex,
                                      @Param("birthday")String birthday,
                                      @Param("eamil")String eamil,
                                      @Param("introduce")String introduce,
                                      @Param("userId")int userId);

}
