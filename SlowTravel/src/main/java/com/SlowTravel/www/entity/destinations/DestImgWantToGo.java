package com.SlowTravel.www.entity.destinations;

/**目的地分类照片类
 *
 */
public class DestImgWantToGo {
    private int id ;
    private String place;
    private String url;
    private int go_number;
    private int want_number;

    public DestImgWantToGo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getGo_number() {
        return go_number;
    }

    public void setGo_number(int go_number) {
        this.go_number = go_number;
    }

    public int getWant_number() {
        return want_number;
    }

    public void setWant_number(int want_number) {
        this.want_number = want_number;
    }
}
