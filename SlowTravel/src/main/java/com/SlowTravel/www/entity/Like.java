package com.SlowTravel.www.entity;

/**
 * 喜欢实体类
 * Created by helei on 2017/6/29.
 */
public class Like {

    //喜欢id
    private int id;

    //图片id
    private int p_id;

    //用户id
    private int user_id;

    public Like(int id, int p_id, int user_id) {
        this.id = id;
        this.p_id = p_id;
        this.user_id = user_id;
    }

    public Like() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
}
