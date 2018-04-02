package com.SlowTravel.www.service.impl;



import com.SlowTravel.www.entity.Admins;
import com.SlowTravel.www.mapper.AdminMapper;
import com.SlowTravel.www.service.IAdminService;
import com.SlowTravel.www.tools.Encryption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 管理员模块业务逻辑处理实现类
 *
 */
@Service("adminService")
@Transactional
public class AdminServiceImpl implements IAdminService {
    @Autowired
    AdminMapper adminMapper;

    public Object findAdmins(Admins admin) {
        String rnum=adminMapper.selectAdminsRnumByName(admin.getAname());
        if(null!=rnum&&!("".equals(rnum))) {
            String pwd = Encryption.EncryString(admin.getApwd()+rnum);
            admin.setApwd(pwd);
            return adminMapper.selectAdmins(admin);
        }
        return 0;
    }
}
