package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.P_comment;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.mapper.P_commentMapper;
import com.SlowTravel.www.service.IP_commentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 图片消息模块业务逻辑处理实现类
 *
 */
@Service("p_commentService")
@Transactional
public class P_commentServiceImpl implements IP_commentService {

    @Autowired
    P_commentMapper p_commentMapper;


    @Override
    public List<P_comment> findMessageByPid(int pid) {
        return p_commentMapper.selectMessageByPid(pid);
    }

    @Override
    public void addMessage(P_comment comment) {
        p_commentMapper.insertMessage(comment);
    }

    @Override
    public void removeMessage(int pid) {
        p_commentMapper.deleteMessage(pid);
    }

    @Override
    public int findMessageCount(int pid) {
        int count = p_commentMapper.selectMessageCount(pid);
        if("".equals(String.valueOf(count))){
           return 0;
        }else{
            return count;
        }
    }

    @Override
    public List<P_comment> findDeleteComment(int pageNumberIndex) {
        return p_commentMapper.selectDeleteComment(pageNumberIndex);
    }

    @Override
    public int findDeleteCommentCount() {
        return p_commentMapper.selectDeleteCommentCount();
    }

    @Override
    public void renewComment(int id) {
        p_commentMapper.renewComment(id);
    }

    @Override
    public void shiftDeleteComment(int id) {
        p_commentMapper.shiftDeleteComment(id);
    }

    @Override
    public List<P_comment> findSearchDeletePicture(String search, int pageNumberIndex) {
        return p_commentMapper.searchDeleteComment(search, pageNumberIndex);
    }

    @Override
    public int searchDeleteCommentCount(String search) {
        return p_commentMapper.searchDeleteCommentCount(search);
    }
}
