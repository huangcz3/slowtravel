package com.SlowTravel.www.entity;

/**
 * 后台管理员对象实体类
 *
 */
public class Admins {
    //管理员主键ID，自增
    private int aid;
    //管理员姓名
    private String aname;
    //管理员密码
    private String apwd;
    //密码加密随机字符
    private  String rnum;
    //管理员关联的权限ID，权限表外键字段
    private int powerid;

    public Admins(){}

    public Admins(int aid, String aname, String apwd, int powerid) {
        this.aid = aid;
        this.aname = aname;
        this.apwd = apwd;
        this.powerid = powerid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApwd() {
        return apwd;
    }

    public void setApwd(String apwd) {
        this.apwd = apwd;
    }

    public int getPowerid() {
        return powerid;
    }

    public void setPowerid(int powerid) {
        this.powerid = powerid;
    }
}
