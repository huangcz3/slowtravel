package com.SlowTravel.www.service.impl;

import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.mapper.St_userMapper;
import com.SlowTravel.www.service.ISt_userService;
import com.SlowTravel.www.tools.Encryption;
import com.SlowTravel.www.tools.RandomCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 * 用户模块业务逻辑处理实现类
 */
@Service("st_userService")
@Transactional
public class St_userServiceImpl implements ISt_userService {

    @Autowired
    St_userMapper st_userMapper;


    /**
     * 查找用户
     * @param st_user 用户对象，封装了查询需要的属性值
     * @return
     */
    @Override
    public Object findSt_user(St_user st_user) {
        String random_code = st_userMapper.selectSt_userRandom_codeByUsername(st_user.getUsername());
        if (random_code != null && !random_code.equals("")) {
            String password = Encryption.EncryString(st_user.getPassword() + random_code);
            st_user.setPassword(password);
            St_user st_user1 = st_userMapper.selectSt_user(st_user);
            if(st_user1!=null){
                return st_user1;
            }

        }
        return null;
    }

    /**
     * 根据用户注册信息 在数据库中添加用户信息
     * @param st_user 用户对象，封装了插入用户信息需要的属性值
     */
    @Override
    public void addSt_user(St_user st_user) {
        String random_code = RandomCode.getCodes();
        st_user.setRandom_code(random_code);
        st_user.setPassword(Encryption.EncryString(st_user.getPassword() + random_code));
        st_user.setRole_id(4);
        st_userMapper.addSt_user(st_user);
    }

    /**
     * 根据ajax 传来的用户名判断用户是否存在
     * @param username 用户名
     * @return 用户对象
     */
    @Override
    public Object findSt_userByUsername(String username) {
        return st_userMapper.selectSt_userByUsername(username);
    }

    @Override
    public List<St_user> findHotSt_user(int limit) {
        return st_userMapper.selectHotSt_user(limit);
    }

    @Override
    public St_user findSt_userById(int id) {
        return st_userMapper.selectSt_userById(id);
    }

    @Override
    public List<St_user> findSt_userAll(int pageNumberIndex) {
        return st_userMapper.selectSt_userAll(pageNumberIndex);
    }

    @Override
    public int findUserCount() {
        return st_userMapper.selectUserCount();
    }

    @Override
    public void modifyUserById(int id, int role_id, int hot) {
        st_userMapper.updateUserById(id,role_id,hot);
    }

    @Override
    public List<St_user> findUserByUsername(String str,int pageNumberIndex) {
        return st_userMapper.selectUserByUsername(str,pageNumberIndex);
    }

    @Override
    public int findUserByUsernameCount(String str) {
        return st_userMapper.selectUserByUsernameCount(str);
    }

    @Override
    public void removeUserById(int id) {
        st_userMapper.deleteUserById(id);
    }

    @Override
    public void modifySt_userPassword(St_user st_user) {
        String random_code = st_userMapper.selectSt_userRandom_codeByUsername(st_user.getUsername());
        st_user.setRandom_code(random_code);

        String password = Encryption.EncryString(st_user.getPassword() + random_code);
        st_user.setPassword(password);
        st_userMapper.updateSt_userPassword(st_user);
    }

}
