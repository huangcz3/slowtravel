package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.St_user;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 *
 * 用户模块持久化操作接口
 */
public interface St_userMapper {

    /**
     * 根据用户注册页面提供的注册信息存储到数据库
     * @param st_user 用户
     */
    public void addSt_user(St_user st_user);

    /**
     * 根据提供的用户对象属性查询用户对象
     * @param st_user 封装了查询条件的用户对象
     * @return   用户对象
     */
    public St_user selectSt_user(St_user st_user);

    /**
     * 注册 页面利用 ajax 传递的账号判断用户是否存在
     * @param username 用户名
     * @return 用户对象
     */
    public St_user selectSt_userByUsername(String username);

    /**
     * 根据用户账号查询账号对应的存储在数据库的随机字符
     * @param username 账号
     * @return  随机码
     */
    public String selectSt_userRandom_codeByUsername(String username);

    /**
     *
     * 查询出热门用户的信息
     * @param limit 查询的条数
     * @return 用户List集合
     */
    public List<St_user> selectHotSt_user(int limit);

    /**
     *
     * 根据id查找用户
     * @param id
     * @return
     */
    public St_user selectSt_userById(int id);

    /**
     * 分页查询所有user
     * @return
     */
    public List<St_user> selectSt_userAll(int pageNumberIndex);

    /**
     * 查询用户总数
     * @return
     */
    public int selectUserCount();

    /**
     * 更新用户基本信息
     * @param id
     * @param role_id
     * @param hot
     */
    public void updateUserById(int id,int role_id,int hot);

    /**
     * 用户名模糊查询
     * @param str
     * @return
     */
    public List<St_user> selectUserByUsername(String str,int pageNumberIndex);

    /**
     * 模糊查询用户总数
     * @return
     */
    public int selectUserByUsernameCount(String str);

    /**
     * 通过id删除用户
     */
    public void deleteUserById(int id);

    /**
     * 修改用户密码
     */
    public void updateSt_userPassword(St_user st_user);

}
