package com.SlowTravel.www.web.controller;


import com.SlowTravel.www.entity.Admins;
import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.UserTravelPictureLikeCommentConnection;
import com.SlowTravel.www.service.IAdminService;
import com.SlowTravel.www.service.ISt_userService;
import com.SlowTravel.www.service.ITravelsService;
import com.SlowTravel.www.service.IUserTravelPictureLikeCommentConnectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * 管理员模块controller控制层
 *
 */

@Controller
@RequestMapping("admin")
public class AdminController {

    @Resource(name="travelsService")
    ITravelsService travelsService;

    @Resource(name="userTravelPictureLikeCommentConnectionService")
    IUserTravelPictureLikeCommentConnectionService userTravelPictureLikeCommentConnectionService;
    /**
     * 去登录页面
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("goLogin")
    public String goLogin() throws Exception {
        return "liao/login";
    }


    /**
     * 去注册页面
     *
     * @return 注册页面地址
     */
    @RequestMapping("goRegister")
    public String goRegister() {
        return "liao/register";
    }


@RequestMapping("hot")
    public  String hot(){return "hot/hot";}

    @RequestMapping("mail")
    public  String mail(){return "mail/mail";}

    @RequestMapping("joinus")
    public  String joinus(){return "joinus/joinus";}

    @RequestMapping("search")
    public String search(){
        return "search/search";
    }

    @RequestMapping("master")
    public String master(){
        return "master/master";
    }

    @RequestMapping("data")
    public String data(){
        return "shi/UserInformation";
    }

    @RequestMapping("update")
    public String updateUserInfo(){
        return "shi/updateReceptionUserInfo";
    }

    @RequestMapping("display")
    public String  display(){
        return "shi/DisplayUserInfo";
    }
}

