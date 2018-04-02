package com.SlowTravel.www.entity;

import java.util.Date;

/**
 * 游记实体对象
 *
 */
public class Travels {

    //游记id
    private int id;

    //游记名
    private String t_name;

    //热度
    private int hot;

    //时间
    private String calendar;

    //状态
    private int state;

    //用户id
    private int user_id;

    //起始地址
    private String local;

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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public Travels() {
    }

    public Travels(int id, String t_name, int hot, String calendar, int state, int user_id, String local) {
        this.id = id;
        this.t_name = t_name;
        this.hot = hot;
        this.calendar = calendar;
        this.state = state;
        this.user_id = user_id;
        this.local = local;
    }

    @Override
    public String toString() {
        return "Travels{" +
                "id=" + id +
                ", t_name='" + t_name + '\'' +
                ", hot=" + hot +
                ", calendar='" + calendar + '\'' +
                ", state=" + state +
                ", user_id=" + user_id +
                ", local='" + local + '\'' +
                '}';
    }
}
