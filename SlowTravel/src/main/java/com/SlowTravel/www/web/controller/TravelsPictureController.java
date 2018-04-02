package com.SlowTravel.www.web.controller;


import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.entity.TravelPictureConnection;
import com.SlowTravel.www.entity.UserTravelPictureLikeCommentConnection;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 游记图片模块controller控制层
 *
 */

@Controller
@RequestMapping("travelsPicture")
public class TravelsPictureController {

    @Resource(name = "st_userService")
    ISt_userService st_userService;

    @Resource(name = "travelsPictureService")
    ITravelsPictureService travelsPictureService;

    @Resource(name = "desService")
    IDestinationService destinationService;

    @Resource(name = "userTravelPictureLikeCommentConnectionService")
    IUserTravelPictureLikeCommentConnectionService userTravelPictureLikeCommentConnectionService;


    /**
     * 查询热门游记
     *
     * @param model
     * @return
     */
    @RequestMapping("findHotTravels")
    public String findHotTravels(Model model) {
        List<TravelPictureConnection> hotTravels = travelsPictureService.findHotTravels();
        model.addAttribute("hotTravels", hotTravels);
        return "HOME_PAGE/HOME_PAGE";
    }

    /**
     * 修改用户密码
     * @param st_user
     * @return
     * @throws Exception
     */
    @RequestMapping("modifyPassword")
    public String modifyPassword(St_user st_user, HttpServletRequest request, Model model) throws Exception{
        st_userService.modifySt_userPassword(st_user);
        System.out.println(st_user);
        request.getSession().invalidate();
        List<TravelPictureConnection> hotTravels = travelsPictureService.findHotTravels();
        model.addAttribute("hotTravels",hotTravels);
        List<UserTravelPictureLikeCommentConnection> hotMaster = userTravelPictureLikeCommentConnectionService.findHotMaster(0);
        model.addAttribute("hotMaster",hotMaster);
        List<Destination> hotDest = destinationService.findHotDest(8);
        model.addAttribute("hotDest",hotDest);
        return "HOME_PAGE/HOME_PAGE";
    }

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}
