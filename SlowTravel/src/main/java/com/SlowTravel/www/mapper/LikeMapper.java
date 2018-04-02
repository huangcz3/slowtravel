package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.P_comment;

import java.util.List;

/**
 * 喜欢持久化操作接口
 *
 */
public interface LikeMapper {

    /**
     * 通过图片Id查询喜欢条数
     * @param pid
     * @return
     */
    public int selectLikeCount(int pid);

    /**
     *
     * 删除喜欢
     * @param pid
     */
    public void deleteLike(int pid,int user_id);

    /**
     *
     * 添加喜欢
     * @param pid
     * @param user_id
     */
    public void insert(int pid,int user_id);

    /**
     *
     * 通过id查找用户是否已经喜欢
     * @param pid
     * @param user_id
     * @return
     */
    public int selectLikeById(int pid,int user_id);
}
