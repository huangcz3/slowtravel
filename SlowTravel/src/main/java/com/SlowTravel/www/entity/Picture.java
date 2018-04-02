package com.SlowTravel.www.entity;

/**
 * 图片实体类
 *
 */
public class Picture {

    //照片id
    private int id;

    //图片地址
    private String url;

    //图片上传时间
    private String date;

    //图片描述
    private String exp;

    //图片起始地址
    private String place;

    //连接游记的id
    private int travels_id;

    //状态
    private int state;

    //目的地
    private String local;

    //图片类型
    private int category;

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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getExp() {
        return exp;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getTravels_id() {
        return travels_id;
    }

    public void setTravels_id(int travels_id) {
        this.travels_id = travels_id;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public Picture(int id, String url, String date, String exp, String place, int travels_id, int state, String local, int category) {
        this.id = id;
        this.url = url;
        this.date = date;
        this.exp = exp;
        this.place = place;
        this.travels_id = travels_id;
        this.state = state;
        this.local = local;
        this.category = category;
    }

    public Picture() {
    }

    @Override
    public String toString() {
        return "Picture{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", date='" + date + '\'' +
                ", exp='" + exp + '\'' +
                ", place='" + place + '\'' +
                ", travels_id=" + travels_id +
                ", state=" + state +
                ", local='" + local + '\'' +
                ", category=" + category +
                '}';
    }
}
