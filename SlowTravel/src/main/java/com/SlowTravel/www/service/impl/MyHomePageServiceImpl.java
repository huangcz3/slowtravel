package com.SlowTravel.www.service.impl;

import com.SlowTravel.www.entity.myHomePage.MyPhotosAndCount;
import com.SlowTravel.www.entity.myHomePage.MyTravels;
import com.SlowTravel.www.entity.myHomePage.WantToGo;
import com.SlowTravel.www.mapper.MyHomePageMapper;
import com.SlowTravel.www.service.IMyHomePageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**我的主页显示处理逻辑类
 *
 */
@Service("myHomePageService")
@Transactional
public class MyHomePageServiceImpl implements IMyHomePageService {

    @Autowired
    MyHomePageMapper myHomePageMapper;

    /**
     * 查找用户曾经的游记
     * @param userId 用户id
     * @return 用户游记集合
     */
    @Override
    public List<MyTravels> findMyTravels(int userId) {
        return myHomePageMapper.selectMyTravelsByUserId(userId);
    }

    /**
     * 在我的首页查找喜欢的照片
     * @param userId 用户 id
     * @return 喜欢的照片地址和数量
     */
    @Override
    public List<MyPhotosAndCount> findMyPhotosAndCount(int userId) {
        return myHomePageMapper.selectMyPhotosAndCountByUserId(userId);
    }

    /**
     * 在我的首页查找 想去的地方
     * @param userId 用户id
     * @return 想去的地方集合
     */
    @Override
    public List<WantToGo> findWantToGo(int userId) {
        return myHomePageMapper.selectWantToGoByUserId(userId);
    }

    /**
     * 在我的首页查找 我的收藏条数
     * @param userId
     * @return 我的收藏条数
     */
    @Override
    public int findCollectCount(int userId) {
        return myHomePageMapper.selectCollectCountByUserId(userId);
    }


}
