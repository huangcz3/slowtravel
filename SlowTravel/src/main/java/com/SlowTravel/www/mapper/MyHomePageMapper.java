package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.myHomePage.MyPhotosAndCount;
import com.SlowTravel.www.entity.myHomePage.MyTravels;
import com.SlowTravel.www.entity.myHomePage.WantToGo;

import java.util.List;

/**
 *
 */
public interface MyHomePageMapper {

    /**
     * 在我的首页查找用户曾经的游记
     * @param userId 用户id
     * @return 用户曾经的游记集合
     */
    public List<MyTravels> selectMyTravelsByUserId(int userId);

    /**
     * 在我的首页查找喜欢的照片
     * @param userId 用户 id
     * @return 喜欢的照片地址
     */
    public List<MyPhotosAndCount> selectMyPhotosAndCountByUserId(int userId);

    /**
     * 在我的首页查找 想去的地方
     * @param userId 用户id
     * @return 想去的地方集合
     */
    public List<WantToGo> selectWantToGoByUserId(int userId);

    /**
     * 在我的首页查找 我的收藏条数
     * @param userId
     * @return 我的收藏条数
     */
    public int selectCollectCountByUserId(int userId);
}
