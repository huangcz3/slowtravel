package com.SlowTravel.www.entity.destinations;

import com.SlowTravel.www.entity.Picture;

import java.util.List;

/**
 *
 * 目的地详情基础信息对象
 */
public class DestinationDetails {
    private int id;
    private String city_name;
    private String photo;
    private  int hot;


    private WantToGo wantToGo;
    private List<Picture> picture;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }

    public WantToGo getWantToGo() {
        return wantToGo;
    }

    public void setWantToGo(WantToGo wantToGo) {
        this.wantToGo = wantToGo;
    }

    public List<Picture> getPicture() {
        return picture;
    }

    public void setPicture(List<Picture> picture) {
        this.picture = picture;
    }
}
