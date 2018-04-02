package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.P_comment;

import java.util.List;

/**
 * 喜欢模块业务逻辑处理层接口类
 *
 *
 */
public interface ILikeService {

    /**
     *
     * 通过图片id查询喜欢条数
     * @param pid
     * @return
     */
    public int findLikeCount(int pid);

    /**
     *删除喜欢
     * @param pid
     */
    public void removeLike(int pid,int user_id);

    /**
     *添加喜欢
     * @param pid
     * @param user_id
     */
    public void addLike(int pid,int user_id);

    /**
     * 通过id查找用户是否喜欢过
     * @param pid
     * @param user_id
     * @return
     */
    public boolean findLikeById(int pid,int user_id);
}
