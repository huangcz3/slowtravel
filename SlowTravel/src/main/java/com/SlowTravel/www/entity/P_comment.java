package com.SlowTravel.www.entity;

/**
 * 图片消息实体类
 *
 */
public class P_comment {

    //消息id
    private int id;

    //图片id
    private int p_id;

    //消息内容
    private String content;

    //用户名
    private String username;

    //对方用户
    private String receive_username;

    //时间
    private String date;

    //回复区分
    private int status;

    //状态
    private int state;

    //用户头像
    private String photo;

    public P_comment(int id, int p_id, String content, String username, String receive_username, String date, int status, int state, String photo) {
        this.id = id;
        this.p_id = p_id;
        this.content = content;
        this.username = username;
        this.receive_username = receive_username;
        this.date = date;
        this.status = status;
        this.state = state;
        this.photo = photo;
    }

    public P_comment() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getReceive_username() {
        return receive_username;
    }

    public void setReceive_username(String receive_username) {
        this.receive_username = receive_username;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
