package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.Role;

/**
 * 管理员持久化操作接口
 *
 */
public interface RoleMapper {
    /**
     * 查找所有的管理员信息
     * @return role管理对象
     */
    public Role selectRole(int id);
}
