package com.SlowTravel.www.entity.manager;

/** 后台获取游记信息实体类
 *
 */
public class TravelsList {

    //游记id
    private int id;

    //游记名
    private String t_name;

    //游记热度
    private int hot;

    //创建游记时间
    private String calendar;

    //游记地点
    private String local;

    //创建游记的人
    private String username;

    //人物角色
    private int role_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }

    public String getCalendar() {
        return calendar;
    }

    public void setCalendar(String calendar) {
        this.calendar = calendar;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public TravelsList(int id, String t_name, int hot, String calendar, String local, String username, int role_id) {
        this.id = id;
        this.t_name = t_name;
        this.hot = hot;
        this.calendar = calendar;
        this.local = local;
        this.username = username;
        this.role_id = role_id;
    }

    public TravelsList() {
    }
}
