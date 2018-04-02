package com.SlowTravel.www.entity.destinations;

import com.SlowTravel.www.entity.Picture;

/**
 *
 * 目的的图片对象
 */
public class DesinationImg {

    private int id;
    private String url;
    private String place;
    private int praise;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getPraise() {
        return praise;
    }

    public void setPraise(int praise) {
        this.praise = praise;
    }
}
