package com.SlowTravel.www.entity.destinations;

import com.SlowTravel.www.entity.Picture;

/**
 *.
 * 目的地实体类
 */
public class Destination {

    private int id;
    private String city_name;
    private String photo;
    private int hot;

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

    @Override
    public String toString() {
        return "Destination{" +
                "id=" + id +
                ", city_name='" + city_name + '\'' +
                ", phtot='" + photo + '\'' +
                ", hot=" + hot +
                '}';
    }
}
