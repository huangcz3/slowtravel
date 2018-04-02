package com.SlowTravel.www.entity.manager;

/** 后台管理系统我的资料实体类
 *
 */
public class MyData {

    //用户名
    private String username;

    //性别
    private String sex;

    //出生年月
    private String birthday;

    //邮箱
    private String  eamil;

    //自我介绍
    private String introduce;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public MyData(String username, String sex, String birthday, String eamil, String introduce) {
        this.username = username;
        this.sex = sex;
        this.birthday = birthday;
        this.eamil = eamil;
        this.introduce = introduce;
    }

    public MyData() {
    }
}
