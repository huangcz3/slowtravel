package com.SlowTravel.www.entity;

/**
 *
 * 用户实体类
 */
public class St_user {
    //用户ID 主键自增
    private int id;
    //用户名
    private String username;
    //用户密码
    private String password;
    ////密码加密随机字符
    private String random_code;
    //用户头像
    private String photo;
    //用户角色ID
    private int role_id;
    //用户热度
    private int hot;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRandom_code() {
        return random_code;
    }

    public void setRandom_code(String random_code) {
        this.random_code = random_code;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }

    public St_user(String username, String password, String random_code) {
        this.username = username;
        this.password = password;
        this.random_code = random_code;
    }

    public St_user() {

    }
}
