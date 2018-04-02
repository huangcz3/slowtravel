package com.SlowTravel.www.service;

import com.SlowTravel.www.entity.Role;

/**
 * 管理员模块业务逻辑处理层接口类
 *
 *
 */
public interface IRoleService {

    /**
     *根据提供的管理员属性查找管理员对象
     * @param   id 为管理员主键id
     * @return  返回管理员对象
     */
    public Role findRole(int id);
}
