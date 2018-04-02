package com.SlowTravel.www.service;


import com.SlowTravel.www.entity.Admins;

/**
 * 管理员模块业务逻辑处理层接口类
 *
 *
 */
public interface IAdminService {

    /**
     *根据提供的管理员属性查找管理员对象
     * @param admin 管理员对象，封装了查询需要的属性值
     * @return  返回管理员对象
     */
    public Object findAdmins(Admins admin);
}
