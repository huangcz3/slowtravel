package com.SlowTravel.www.entity;

import java.util.List;

/**
 * 游记展示实例
 *
 */
public class TravelsShow {

    //游记展示id
    private int id;

    //用户信息
    private St_user st_user;

    //游记信息
    private Travels travels;

    //游记图片
    private List<Pictures> pictures;

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

    public List<Pictures> getPictures() {
        return pictures;
    }

    public void setPictures(List<Pictures> pictures) {
        this.pictures = pictures;
    }

    public TravelsShow(int id, St_user st_user, Travels travels, List<Pictures> pictures) {
        this.id = id;
        this.st_user = st_user;
        this.travels = travels;
        this.pictures = pictures;
    }

    public TravelsShow() {
    }
}
