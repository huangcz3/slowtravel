package com.SlowTravel.www.web.controller;

import com.SlowTravel.www.entity.*;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.service.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * 用户模块controller控制层
 */
@Controller
@RequestMapping("st_user")
@SessionAttributes("st_user")
public class St_userController {

    @Resource(name = "st_userService")
    ISt_userService st_userService;

    @Resource(name = "travelsPictureService")
    ITravelsPictureService travelsPictureService;

    @Resource(name = "desService")
    IDestinationService destinationService;

    @Resource(name = "userTravelPictureLikeCommentConnectionService")
    IUserTravelPictureLikeCommentConnectionService userTravelPictureLikeCommentConnectionService;

    @Resource(name = "searchService")
    ISearchTravelService searchTravelService;


    @Resource(name = "userInfoService")
    IUserInfoService  UserInfoService;


    /**
     * 匹配用户账号密码进行登录操作
     *
     * @param st_user 用户对象，保存页面传递的用户属性值
     * @return 页面地址
     * @throws Exception
     */
    @RequestMapping("login")
    public String login(St_user st_user, Model model,HttpServletRequest request) throws Exception {
        Object obj = st_userService.findSt_user(st_user);
        List<TravelPictureConnection> hotTravels = travelsPictureService.findHotTravels();
        model.addAttribute("hotTravels",hotTravels);
        List<UserTravelPictureLikeCommentConnection> hotMaster = userTravelPictureLikeCommentConnectionService.findHotMaster(0);
        model.addAttribute("hotMaster",hotMaster);
        List<Destination> hotDest = destinationService.findHotDest(8);
        model.addAttribute("hotDest",hotDest);
        if (obj != null) {
            if (obj instanceof St_user) {
                St_user user = (St_user) obj;
                model.addAttribute("st_user", user);
                return "HOME_PAGE/HOME_PAGE";
            }
        }
        HttpSession session = request.getSession();
        session.invalidate();
        return "HOME_PAGE/HOME_PAGE";
    }

    /**
     * 利用ajax 判断用户名是否存在
     *
     * @param response
     * @param st_user  用户对象
     * @throws Exception
     */
    @RequestMapping("checkUsername")
    @ResponseBody
    public void checkUsername(HttpServletResponse response, St_user st_user) throws Exception {
        Object obj = st_userService.findSt_userByUsername(st_user.getUsername());
        if (obj != null) {
            PrintWriter out = response.getWriter();
            out.write("yes");
            out.close();
        }
    }

    /**
     * 去修改密码页面
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("goModifyPassword")
    public String goModifyPassword(int id,Model model) throws Exception{
        St_user st_user = st_userService.findSt_userById(id);
        model.addAttribute("st_user",st_user);
        return "liao/modifyPassword";
    }

    /**
     * 修改密码页面ajax判断密码是否正确
     * @param response
     * @param st_user
     * @throws Exception
     */
    @RequestMapping("checkPassword")
    @ResponseBody
    public void checkPassword(HttpServletResponse response,St_user st_user) throws Exception{
        St_user st_user1 = (St_user)st_userService.findSt_user(st_user);
        if(st_user1!=null){
            PrintWriter out = response.getWriter();
            out.write("yes");
            out.close();
        }
    }


    /**
     * 用户注册操作
     *
     * @param st_user 用户对象，保存页面传递的用户属性值
     * @return 首页
     * @throws Exception
     */
    @RequestMapping("register")
    public String register(St_user st_user,Model model) throws Exception {
        if (st_user.getUsername() != null && st_user.getPassword() != null && !st_user.getUsername().equals("") && !st_user.getPassword().equals("")) {
            st_userService.addSt_user(st_user);
            model.addAttribute("st_user", st_user);
            return "HOME_PAGE/HOME_PAGE";
        }
        return "liao/register";
    }

    /**
     *
     * 跳转到register页面
     * @return
     * @throws Exception
     */
    @RequestMapping("goRegister")
    public String register() throws Exception {
        return "liao/register";
    }
    /**
     * 查找热门达人
     *
     * @param limit 查询的个数
     *              查找用户
     * @param limit
     * @param model
     * @return 返回主页面
     * @throws Exception
     */
    @RequestMapping("findHotSt_user")
    public String findHotSt_user(int limit, Model model) throws Exception {
        List<St_user> hotSt_user = st_userService.findHotSt_user(limit);
        model.addAttribute("hotSt_user", hotSt_user);
        return "HOME_PAGE/HOME_PAGE";
    }

    /**
     * 主页展示
     *
     * @return 页面地址
     */
    @RequestMapping("HOME_PAGE")
    public String Home_Page(Model model) {
        List<TravelPictureConnection> hotTravels = travelsPictureService.findHotTravels();
        model.addAttribute("hotTravels",hotTravels);
        List<UserTravelPictureLikeCommentConnection> hotMaster = userTravelPictureLikeCommentConnectionService.findHotMaster(0);
        model.addAttribute("hotMaster",hotMaster);
        List<Destination> hotDest = destinationService.findHotDest(8);
        model.addAttribute("hotDest",hotDest);
        return "HOME_PAGE/HOME_PAGE";
    }


    /**
     * 跳转到添加游记页面
     * @return 添加游记地址
     * @throws Exception
     */
    @RequestMapping("addTravelNotes")
    public String addTravelNotes() throws Exception {
        return "shi/CreateTravels";
    }

    /**
     * 搜索页面
     * @return
     */
    @RequestMapping("goSearch")
    public String goSearch(String search, Model model){
        StringBuffer str = new StringBuffer("");
        String str1 = search.trim();
        int len = str1.length();
        for (int i =0 ;i<len;i++){
            str.append(str1.charAt(i));
            if(i<len-1){
                str.append("%");
            }
        }
        List<SearchTravel> searchTravels = searchTravelService.findTravels(String.valueOf(str));
        model.addAttribute("searchTravels",searchTravels);
        return "search/search";
    }



    /**
     * 热门游记页面
     * @param model
     * @return
     */
    @RequestMapping("goHot")
    public String goHot(Model model){
        List<TravelPictureConnection> hotTravels = travelsPictureService.findHotTravels();
        model.addAttribute("hotTravels",hotTravels);
        return "hot/hot";
    }

    /**
     * 加入我们页面
     * @return
     */
    @RequestMapping("goJoinUs")
    public String goJoinUS(){
        return "joinus/joinus";
    }


    /**
     * 用户基本信息添加到数据库
     *
     * @param request
     * @param userInfo
     * @param st_user
     * @return 前台用户信息页面
     * @throws Exception
     */
    @RequestMapping("addUserInfo")
    public String addUserInfo(HttpServletRequest request, UserInfo userInfo, St_user st_user){
        //获取前台传的数据
        String sex=request.getParameter("userInfo_select1");
        String year=request.getParameter("userInfo_year");
        String month=request.getParameter("userInfo_montrh");
        String day=request.getParameter("userInfo_day");
        String email=request.getParameter("email");
        String introduce=request.getParameter("userInfo_text");
        //拼接字符组成生日
        String birthday=year+month+day;
        //设置上传用户信息
        userInfo.setSex(sex);
        userInfo.setBirthday(birthday);
        userInfo.setEamil(email);
        userInfo.setIntroduce(introduce);
        userInfo.setUser_id(st_user.getId());
        System.out.println(userInfo.toString());
        UserInfoService.addUserInfo(userInfo);
        return "shi/DisplayUserInfo";
    }

    /***
     *
     *获取用户基本信息
     *
     * @param  st_user
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("Action")
    public String findUserInfo(St_user st_user,Model model) throws Exception{
        UserInfo userInfo=UserInfoService.findUserInfo(st_user.getId());
        model.addAttribute("userInfo" ,userInfo );
        return "shi/DisplayUserInfo";
    }

    /***
     *
     *修改用户基本信息
     *
     * @param st_user
     * @param request
     * @param
     *
     * @return 前台用户信息页面
     * @throws Exception
     */
    @RequestMapping("updateUserInfo")
    public String updateReceptionUserInfo(St_user st_user,UserInfo userInfo, HttpServletRequest request ,Model model){
        String sex=request.getParameter("userInfo_select1");
        String year=request.getParameter("userInfo_year");
        String month=request.getParameter("userInfo_montrh");
        String day=request.getParameter("userInfo_day");
        String email=request.getParameter("email");
        String introduce=request.getParameter("userInfo_text");
        String birthday=year+month+day;
        UserInfoService.modifyUserInfo(sex,birthday,email,introduce,st_user.getId());
        UserInfo userInfo1=UserInfoService.findUserInfo(st_user.getId());
        model.addAttribute("userInfo" ,userInfo1);
        return "shi/DisplayUserInfo";
    }


    @RequestMapping("*")
    public String check(){
        return "404/four";
    }

}
