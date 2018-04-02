package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.P_comment;
import com.SlowTravel.www.entity.Travels;

import java.util.List;

/**
 * 图片消息模块业务逻辑处理层接口类
 *
 *
 */
public interface IP_commentService {


    /**
     *
     * 根据图片id查找消息
     * @param pid 图片Id
     * @return
     */
    public List<P_comment> findMessageByPid(int pid);

    /**
     *
     * 图片区留言
     */
    public void addMessage(P_comment comment);

    /**
     *
     * 删除消息
     * @param pid
     */
    public void removeMessage(int pid);

    /**
     *
     * 通过图片id查询喜欢人数
     * @param pid
     * @return
     */
    public int findMessageCount(int pid);

    /**
     * 查询删除游记信息
     * @return
     */
    public List<P_comment> findDeleteComment(int pageNumberIndex);

    /**
     * 查询删除游记总数
     * @return
     */
    public int findDeleteCommentCount();

    /**
     * 恢复删除数据
     * @param id
     */
    public void renewComment(int id);

    /**
     * 彻底删除数据
     * @param id
     */
    public void shiftDeleteComment(int id);

    /**
     * 模糊查询删除数据
     * @param search
     * @return
     */
    public List<P_comment> findSearchDeletePicture(String search,int pageNumberIndex);

    /**
     * 模糊查询总数
     * @param search
     * @return
     */
    public int searchDeleteCommentCount(String search);
}
