package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.P_comment;
import com.SlowTravel.www.mapper.LikeMapper;
import com.SlowTravel.www.mapper.P_commentMapper;
import com.SlowTravel.www.service.ILikeService;
import com.SlowTravel.www.service.IP_commentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 图片消息模块业务逻辑处理实现类
 *
 */
@Service("likeService")
@Transactional
public class LikeServiceImpl implements ILikeService {

    @Autowired
    LikeMapper likeMapper;

    @Override
    public int findLikeCount(int pid) {
            return  likeMapper.selectLikeCount(pid);
    }

    @Override
    public void removeLike(int pid,int user_id) {
        likeMapper.deleteLike(pid,user_id);
    }

    @Override
    public void addLike(int pid, int user_id) {
        likeMapper.insert(pid,user_id);
    }

    @Override
    public boolean findLikeById(int pid, int user_id) {
        int count = likeMapper.selectLikeById(pid, user_id);
        if(count>0){
            return true;
        }else{
            return false;
        }
    }
}
