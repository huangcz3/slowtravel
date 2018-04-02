package com.SlowTravel.www.entity.myHomePage;


public class WantToGo {

    //去过的地方
    private int go_number;

    //想去的地方
    private int want_number;

    //城市
    private String city_name;

    //照片
    private String photo;

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

    public WantToGo(int go_number, int want_number, String city_name, String photo) {
        this.go_number = go_number;
        this.want_number = want_number;
        this.city_name = city_name;
        this.photo = photo;
    }

    public WantToGo() {

    }
}
