package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.myHomePage.MyPhotosAndCount;
import com.SlowTravel.www.entity.myHomePage.MyTravels;
import com.SlowTravel.www.entity.myHomePage.WantToGo;

import java.util.List;

/**
 *
 */
public interface IMyHomePageService {

    /**
     * 查找用户曾经的游记
     * @param userId 用户id
     * @return 用户游记集合
     */
    public List<MyTravels> findMyTravels(int userId);

    /**
     * 在我的首页查找喜欢的照片
     * @param userId 用户 id
     * @return 喜欢的照片地址和数量
     */
    public List<MyPhotosAndCount> findMyPhotosAndCount(int userId);

    /**
     * 在我的首页查找 想去的地方
     * @param userId 用户id
     * @return 想去的地方集合
     */
    public List<WantToGo> findWantToGo(int userId);

    /**
     * 在我的首页查找 我的收藏条数
     * @param userId
     * @return 我的收藏条数
     */
    public int findCollectCount(int userId);
}
