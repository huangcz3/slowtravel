package com.SlowTravel.www.mapper;


import com.SlowTravel.www.entity.Admins;
import org.springframework.stereotype.Component;

/**
 * 管理员模块持久化操作接口
 *
 */

public interface AdminMapper {

    /**
     * 根据提供的管理员对象属性查询管理员对象
     * @param admin  封装了查询条件的管理员对象
     * @return   管理员对象
     */
     public Admins selectAdmins(Admins admin);

    /**
     * 根据管理员账号查询账号对应的存储在数据库的随机字符
     * @param str 账号
     * @return  随机码
     */
    public String selectAdminsRnumByName(String str);
}
