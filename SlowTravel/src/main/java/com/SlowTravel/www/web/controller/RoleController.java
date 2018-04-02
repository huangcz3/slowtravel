package com.SlowTravel.www.web.controller;



import com.SlowTravel.www.entity.*;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.mapper.UserInfoMapper;
import com.SlowTravel.www.service.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

/**
 * 管理员模块controller控制层
 *
 */

@Controller
@RequestMapping("role")
public class RoleController {

    @Resource(name = "roleService")
    IRoleService roleService;

    @Resource(name = "st_userService")
    ISt_userService st_userService;

    @Resource(name = "travelsPictureService")
    ITravelsPictureService travelsPictureService;

    @Resource(name = "desService")
    IDestinationService destinationService;

    @Resource(name = "userTravelPictureLikeCommentConnectionService")
    IUserTravelPictureLikeCommentConnectionService userTravelPictureLikeCommentConnectionService;

    @Resource(name = "userInfoService")
    IUserInfoService  UserInfoService;

    /**
     * 跳转到404页面
     * @return
     */
    @RequestMapping("404")
    public String go404(){
        return "404/500";
    }

    /**
     *
     * 退出
     * @return
     */
    @RequestMapping("quit")
    public String quit(Model model, HttpSession session){
        session.removeAttribute("st_user");
        session.invalidate();
        List<TravelPictureConnection> hotTravels = travelsPictureService.findHotTravels();
        model.addAttribute("hotTravels",hotTravels);
        List<UserTravelPictureLikeCommentConnection> hotMaster = userTravelPictureLikeCommentConnectionService.findHotMaster(0);
        model.addAttribute("hotMaster",hotMaster);
        List<Destination> hotDest = destinationService.findHotDest(8);
        model.addAttribute("hotDest",hotDest);
        return "HOME_PAGE/HOME_PAGE";
    }

    /**
     * 查询所有用户
     * @param pageModel
     * @param model
     * @return
     */
    @RequestMapping("findAllSt_user")
    public String findAllSt_user(PageModel<St_user> pageModel,Model model){
        int count = st_userService.findUserCount();
        pageModel.setRecordCount(count);
        List<St_user> st_userAll = st_userService.findSt_userAll((pageModel.getPageNo() - 1) * 10);
        pageModel.setDatas(st_userAll);
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/UserList";
    }

    /**
     * 查询用户信息
     * @param id
     * @param response
     * @throws Exception
     */
    @RequestMapping("findUserInfo")
    @ResponseBody
    public void findUserInfo(int id, HttpServletResponse response)throws Exception{
        St_user st_userById = st_userService.findSt_userById(id);
        UserInfo userInfo = UserInfoService.findUserInfo(id);
        StringBuffer json = new StringBuffer("\"{options:[");
        if(null != userInfo){
            json.append("{id:'").append(st_userById.getId()).append("',username:'").append(st_userById.getUsername()).append("',role_id:'").append(st_userById.getRole_id()).append("',hot:'").append(st_userById.getHot()).append("',uid:'").append(userInfo.getId()).append("',sex:'").append(userInfo.getSex()).append("',eamil:'").append(userInfo.getEamil()).append("',birthday:'").append(userInfo.getBirthday()).append("',introduce:'").append(userInfo.getIntroduce());
        }else{
            json.append("{id:'").append(st_userById.getId()).append("',username:'").append(st_userById.getUsername()).append("',role_id:'").append(st_userById.getRole_id()).append("',hot:'").append(st_userById.getHot());
        }
        json.append("'}").append("]}\"");
        PrintWriter out = response.getWriter();
        out.write(String.valueOf(json));
        out.close();
    }

    /**
     * 修改用户信息
     * @param model
     * @return
     */
    @RequestMapping("modifyUser")
    public String modifyUser(int id,int uid,String role_id,int hot,String sex,String birthday,String eamil,String introduce,Model model,PageModel<St_user> pageModel){
        int count = st_userService.findUserCount();
        pageModel.setRecordCount(count);
        List<St_user> st_userAll = st_userService.findSt_userAll((pageModel.getPageNo() - 1) * 10);
        pageModel.setDatas(st_userAll);
        model.addAttribute("pageModel",pageModel);
        int role;
        switch (role_id){
            case "普通用户":
                role = 4;
                break;
            case "一般管理员":
                role = 3;
                break;
            case "系统管理员":
                role = 2;
                break;
            default:
                role = 1;
                break;
        }
        st_userService.modifyUserById(id,role,hot);
        if(uid>0){
            UserInfoService.modifyManagerUserInfo(sex,birthday,eamil,introduce,id);
        }else{
            UserInfo userInfo = new UserInfo();
            userInfo.setSex(sex);
            userInfo.setBirthday(birthday);
            userInfo.setEamil(eamil);
            userInfo.setIntroduce(introduce);
            userInfo.setUser_id(id);
            UserInfoService.addUserInfo(userInfo);
        }
        return "manager/manager_right/UserList";
    }

    /**
     * 根据用户名查询用户
     * @return
     */
    @RequestMapping("searchUser")
    public String searchUser(String search,Model model,PageModel<St_user> pageModel){
        StringBuffer str = new StringBuffer("");
        for (int i =0 ;i<search.length();i++){
            str.append(search.charAt(i));
            if(i<search.length()-1){
                str.append("%");
            }
        }
        pageModel.setRecordCount(st_userService.findUserByUsernameCount(String.valueOf(str)));
        pageModel.setDatas(st_userService.findUserByUsername(String.valueOf(str),(pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "/manager/manager_right/UserList";
    }

    /**
     * 注销用户
     * @param uid
     * @return
     */
    @RequestMapping("Cancellation")
    public String Cancellation(int uid,PageModel<St_user> pageModel,Model model,HttpServletRequest request){
        st_userService.removeUserById(uid);
        HttpSession session = request.getSession();
        St_user st_user = (St_user) session.getAttribute("st_user");
        if(st_user!=null&&st_user.getId()==uid){
            session.removeAttribute("st_user");
        }
        int count = st_userService.findUserCount();
        pageModel.setRecordCount(count);
        List<St_user> st_userAll = st_userService.findSt_userAll((pageModel.getPageNo() - 1) * 10);
        pageModel.setDatas(st_userAll);
        model.addAttribute("pageModel",pageModel);
        return "/manager/manager_right/UserList";
    }
}
