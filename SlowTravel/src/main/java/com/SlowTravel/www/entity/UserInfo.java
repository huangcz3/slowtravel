package com.SlowTravel.www.entity;

/**
 * 用户信息实体类
 *
 */
public class UserInfo {

    //用户信息Id
    private int id;

    //用户性别
    private String sex;

    //用户生日
    private String birthday;

    //用户电子邮箱
    private String eamil;

    //用户自我介绍
    private String introduce;

    //用户userId
    private int user_id;

    public UserInfo(int id, String sex, String birthday, String eamil, String introduce, int user_id) {
        this.id = id;
        this.sex = sex;
        this.birthday = birthday;
        this.eamil = eamil;
        this.introduce = introduce;
        this.user_id = user_id;
    }

    public UserInfo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getEamil() {
        return eamil;
    }

    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "id=" + id +
                ", sex='" + sex + '\'' +
                ", birthday='" + birthday + '\'' +
                ", eamil='" + eamil + '\'' +
                ", introduce='" + introduce + '\'' +
                ", user_id=" + user_id +
                '}';
    }
}
