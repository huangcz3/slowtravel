package com.SlowTravel.www.service.impl;


import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.mapper.RoleMapper;
import com.SlowTravel.www.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * 管理员模块业务逻辑处理实现类
 *
 */
@Service("roleService")
@Transactional
public class RoleServiceImpl implements IRoleService {

    @Autowired
    RoleMapper roleMapper;

    @Override
    public Role findRole(int id) {
        return roleMapper.selectRole(id);
    }
}
