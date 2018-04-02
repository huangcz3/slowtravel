package com.SlowTravel.www.entity;

/**
 * 后台管理员对象实体类
 *
 */
public class Role {

    //管理员主键id，自增
    private int id;

    //管理员名字
    private String role_name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public Role() {
    }

    public Role(int id, String role_name) {
        this.id = id;
        this.role_name = role_name;
    }
}
