package com.SlowTravel.www.entity;

/**
 * 搜索游记实体类
 *
 */
public class SearchTravel {

    //搜索id
    private int id;

    //搜索游记用户
    private St_user st_user;

    //搜索游记
    private Travels travels;

    //游记图片
    private Picture picture;

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    public SearchTravel(int id, St_user st_user, Travels travels) {
        this.id = id;
        this.st_user = st_user;
        this.travels = travels;
    }

    public SearchTravel() {
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

    public Travels getTravels() {
        return travels;
    }

    public void setTravels(Travels travels) {
        this.travels = travels;
    }
}
