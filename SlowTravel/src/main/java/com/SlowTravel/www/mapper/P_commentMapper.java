package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.P_comment;
import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.TravelsShow;

import java.util.List;

/**
 * 图片消息持久化操作接口
 *
 */
public interface P_commentMapper {

    /**
     *
     * 根据图片id查找消息
     * @return
     */
    public List<P_comment> selectMessageByPid(int pid);

    /**
     *
     * 图片区留言
     */
    public void insertMessage(P_comment comment);

    /**
     *
     * 删除留言
     */
    public void deleteMessage(int pid);

    /**
     *
     * 通过图片id查询喜欢人数
     * @param pid 图片id
     * @return
     */
    public int selectMessageCount(int pid);

    /**
     * 查询删除游记信息
     * @return
     */
    public List<P_comment> selectDeleteComment(int pageNumberIndex);

    /**
     * 查询删除游记总数
     * @return
     */
    public int selectDeleteCommentCount();

    /**
     * 恢复删除
     * @param id
     */
    public void renewComment(int id);

    /**
     * 彻底删除
     * @param id
     */
    public void shiftDeleteComment(int id);

    /**
     * 模糊查询
     * @param search
     * @return
     */
    public List<P_comment> searchDeleteComment(String search,int pageNumberIndex);

    /**
     * 模糊查询总数
     */
    public int searchDeleteCommentCount(String search);
}
