package com.SlowTravel.www.entity;

/**
 * 用户详细信息实体类
 *
 */
public class St_userInfo {

    //类id
    private int id;

    //用户基本信息
    private St_user st_user;

    //用户详细信息
    private UserInfo userInfo;

    public St_userInfo(int id, St_user st_user, UserInfo userInfo) {
        this.id = id;
        this.st_user = st_user;
        this.userInfo = userInfo;
    }

    public St_userInfo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public St_user getSt_user() {
        return st_user;
    }

    public void setSt_user(St_user st_user) {
        this.st_user = st_user;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
}
