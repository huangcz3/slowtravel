package com.SlowTravel.www.entity;

/**
 * 用户游记图片喜欢评论连接实体类
 *
 */
public class UserTravelPictureLikeCommentConnection {

    //喜欢总数
    private int like;

    //消息总数
    private int message;

    //用户id
    private int id;

    //用户对象
    private St_user st_user;

    //游记对象
    private Travels travels;

    //图片对象
    private Picture picture;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public St_user getSt_user() {
        return st_user;
    }

    public void setSt_user(St_user st_user) {
        this.st_user = st_user;
    }

    public Travels getTravels() {
        return travels;
    }

    public void setTravels(Travels travels) {
        this.travels = travels;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public int getMessage() {
        return message;
    }

    public void setMessage(int message) {
        this.message = message;
    }

    public UserTravelPictureLikeCommentConnection(int id, St_user st_user, Travels travels, Picture picture, int like, int message) {
        this.id = id;
        this.st_user = st_user;
        this.travels = travels;
        this.picture = picture;
        this.like = like;
        this.message = message;
    }

    public UserTravelPictureLikeCommentConnection() {
    }
}
