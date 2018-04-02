package com.SlowTravel.www.entity;

/**
 * 游记图片链接实例
 *
 */
public class TravelPictureConnection {

    //类型区分Id
    private int id;

    //用户游记
    private Travels travels;

    //游记图片
    private Picture picture;

    //用户信息
    private St_user st_user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Travels getTravels() {
        return travels;
    }

    public void setTravels(Travels travels) {
        this.travels = travels;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    public St_user getSt_user() {
        return st_user;
    }

    public void setSt_user(St_user st_user) {
        this.st_user = st_user;
    }

    public TravelPictureConnection(int id, Travels travels, Picture picture, St_user st_user) {
        this.id = id;
        this.travels = travels;
        this.picture = picture;
        this.st_user = st_user;
    }

    public TravelPictureConnection() {
    }
}
