package com.SlowTravel.www.entity.myHomePage;


public class MyTravels {

    //创建犹记得人
    private String username;

    //游记ID
    private int id;

    //游记名
    private String t_name;

    //创建游记时间
    private String calendar;

    //游记照片
    private String url;

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getCalendar() {
        return calendar;
    }

    public void setCalendar(String calendar) {
        this.calendar = calendar;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public MyTravels(String username, int id, String t_name, String calendar, String url) {
        this.username = username;
        this.id = id;
        this.t_name = t_name;
        this.calendar = calendar;
        this.url = url;
    }

    public MyTravels() {

    }
}
