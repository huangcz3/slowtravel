package com.SlowTravel.www.web.controller;

import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.entity.myHomePage.MyPhotosAndCount;
import com.SlowTravel.www.entity.myHomePage.MyTravels;
import com.SlowTravel.www.entity.myHomePage.WantToGo;
import com.SlowTravel.www.service.IMyHomePageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * 我的主页显示控制层
 */
@Controller
@RequestMapping("myHomePage")
@SessionAttributes("st_user")
public class MyHomePageController {

    @Resource(name = "myHomePageService")
    IMyHomePageService myHomePageService;

    /**
     * 去 我的首页
     * @param st_user 用户
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("goMyHomePage")
    public String goMyHomePage(St_user st_user, Model model) throws Exception {
        List<MyTravels> myTravels=myHomePageService.findMyTravels(st_user.getId());
        model.addAttribute("myTravels",myTravels);
        List<MyPhotosAndCount> myPhotosUrlAndCount=myHomePageService.findMyPhotosAndCount(st_user.getId());
        model.addAttribute("myPhotosUrlAndCount",myPhotosUrlAndCount);
        List<WantToGo> wantToGos=myHomePageService.findWantToGo(st_user.getId());
        model.addAttribute("wantToGos",wantToGos);
        int collectCount=myHomePageService.findCollectCount(st_user.getId());
        model.addAttribute("collectCount",collectCount);
        return "liao/myHomePage";
    }

    /**
     * 跳转到添加游记页面
     * @return 游记页面
     * @throws Exception
     */
    @RequestMapping("goAddUpLoad")
    public String goAddUpLoad() throws Exception{
        return "shi/CreateTravels";
    }


    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}
