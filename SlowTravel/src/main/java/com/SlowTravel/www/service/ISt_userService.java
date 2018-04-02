package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.St_user;

import java.util.List;

/**
 *
 * 用户模块业务逻辑处理层接口类
 */
public interface ISt_userService {

    /**
     *根据提供的用户属性查找用户对象
     * @param st_user 用户对象，封装了查询需要的属性值
     * @return  返回用户对象
     */
    public Object findSt_user(St_user st_user);

    /**
     * 根据注册页面传来的用户信息存储到数据库
     * @param st_user 用户对象，封装了插入用户信息需要的属性值
     */
    public void addSt_user(St_user st_user);

    /**
     * 注册页面利用 ajax 传递的账号判断用户是否存在
     * @param username 用户名
     * @return 返回用户对象
     */
    public Object findSt_userByUsername(String username);

    /**
     *
     * 查询出热门用户的信息
     * @param limit 查询的条数
     * @return 用户List集合
     */
    public List<St_user> findHotSt_user(int limit);

    /**
     * 根据id找用户
     * @param id
     * @return
     */
    public St_user findSt_userById(int id);

    /**
     * 分页查询所有user
     * @return
     */
    public List<St_user> findSt_userAll(int pageNumberIndex);

    /**
     * 查询用户总数
     * @return
     */
    public int findUserCount();

    /**
     * 修改用户信息
     * @param id
     * @param role_id
     * @param hot
     */
    public void modifyUserById(int id,int role_id,int hot);

    /**
     * 用户名模糊查询
     * @param str
     * @return
     */
    public List<St_user> findUserByUsername(String str,int pageNumberIndex);

    /**
     * 模糊查询用户总数
     * @return
     */
    public int findUserByUsernameCount(String str);

    /**
     * 通过id删除用户
     * @param id
     */
    public void removeUserById(int id);

    /**
     * 修改用户密码
     * @param st_user
     */
    public void modifySt_userPassword(St_user st_user);
}
