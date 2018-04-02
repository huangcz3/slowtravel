package com.SlowTravel.www.web.controller;

import com.SlowTravel.www.entity.PageModel;
import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.manager.MyData;
import com.SlowTravel.www.entity.manager.TravelsList;
import com.SlowTravel.www.service.ISt_userService;
import com.SlowTravel.www.service.ITravelsService;
import com.SlowTravel.www.service.IUserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.net.URLDecoder;
import java.util.List;

/**
 *
 */
@Controller
@RequestMapping("manager")
@SessionAttributes("st_user")
public class ManagerController {

    @Resource(name = "travelsService")
    ITravelsService travelsService;


    @Resource(name="userInfoService")
    IUserInfoService userInfoService;


    /**
     * 去管理页面
     * @param model
     * @return 管理页面
     * @throws Exception
     */
    @RequestMapping("goManagerHomePage")
    public String goManagerHomePage(St_user st_user,Model model) throws Exception{
        model.addAttribute("st_user",st_user);
        return "manager/managerHomePage";
    }

    /**
     * 去管理页面顶部
     * @param model
     * @return 管理页面顶部
     * @throws Exception
     */
    @RequestMapping("goManagerTop")
    public String goManagerTop(Model model) throws Exception{
        return "manager/managerTop";
    }

    /**
     * 去 管理页面左边部分
     * @param model
     * @return 管理页面左边部分
     * @throws Exception
     */
    @RequestMapping("goManagerLeft")
    public String goManagerLeft(Model model) throws Exception{
        return "manager/managerLeft";
    }

    /**
     * 去 管理页面右边部分
     * @param model
     * @return 管理页面右边部分
     * @throws Exception
     */
    @RequestMapping("goManagerRight")
    public String goManagerRight(Model model) throws Exception{
        return "manager/managerRight";
    }

    /**
     * 显示游记列表
     * @param model
     * @return 游记列表页面
     * @throws Exception
     */
    @RequestMapping("travelsManager")
    public String travelsManager(Model model, PageModel<TravelsList> pageModel) throws Exception{
        int travelsCount = travelsService.findTravelsCount();
        pageModel.setRecordCount(travelsCount);
        List<TravelsList> travelsList = travelsService.findTravelsList((pageModel.getPageNo()-1)*10);
        pageModel.setDatas(travelsList);
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/travelsList";
    }

    /**
     * 逻辑删除游记
     * @param travelsId 游记ID
     * @param model
     * @return 显示游记页面
     * @throws Exception
     */
    @RequestMapping("logicDeleteTravels")
    public String logicDeleteTravels(int travelsId,Model model,PageModel<TravelsList> pageModel) throws Exception{
        travelsService.modifyTravelsById(travelsId);
        int travelsCount = travelsService.findTravelsCount();
        pageModel.setRecordCount(travelsCount);
        List<TravelsList> travelsList = travelsService.findTravelsList((pageModel.getPageNo()-1)*10);
        pageModel.setDatas(travelsList);
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/travelsList";
    }

    /**
     * 去 修改游记页面
     * @param travels
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("goUpdateTravels")
    public String goUpdateTravels(Travels travels,Model model)throws Exception{
        model.addAttribute("travels",travels);
        return "manager/manager_right/updateTravels";
    }

    /**
     * 修改游记信息
     * @param travels
     * @param model
     * @param pageModel
     * @return
     * @throws Exception
     */
    @RequestMapping("updateTravels")
    public String updateTravels(Travels travels, Model model,PageModel<TravelsList> pageModel)throws Exception{
        travelsService.modifyTravels(travels);
        int travelsCount = travelsService.findTravelsCount();
        pageModel.setRecordCount(travelsCount);
        List<TravelsList> travelsList = travelsService.findTravelsList((pageModel.getPageNo()-1)*10);
        pageModel.setDatas(travelsList);
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/travelsList";
    }

    /**
     * 搜索游记信息
     * @param model
     * @param pageModel
     * @return
     * @throws Exception
     */
    @RequestMapping("searchTravels")
    public String searchTravels(TravelsList travelsList,String t_name,String local,String username, Model model, PageModel<TravelsList> pageModel) throws Exception{
        t_name= URLDecoder.decode(URLDecoder.decode(t_name,"UTF-8"));
        local= URLDecoder.decode(URLDecoder.decode(local,"UTF-8"));
        username= URLDecoder.decode(URLDecoder.decode(username,"UTF-8"));
        int travelsInfoCount = travelsService.findTravelsInfoCount(travelsList);
        pageModel.setRecordCount(travelsInfoCount);
        List<TravelsList> travelsInfoList = travelsService.findTravelsInfo(t_name,local,username, (pageModel.getPageNo()-1) * 10);
        pageModel.setDatas(travelsInfoList);
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("t_name",t_name);
        model.addAttribute("local",local);
        model.addAttribute("username",username);
        model.addAttribute("travelsList",travelsList);
        return "manager/manager_right/travelsList";
    }


    /**
     * 显示我的资料
     * @param st_user
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("userInfo")
    public String userInfo(St_user st_user,Model model) throws Exception{
        MyData myData = userInfoService.findManagerUserInfo(st_user.getId());
        model.addAttribute("myData",myData);
        return "manager/manager_right/UserInfo";
    }

    /**
     * 去后台管理系统的修改个人资料
     * @param st_user
     * @param model
     * @return 修改个人资料页面
     * @throws Exception
     */
    @RequestMapping("goUpdateUserInfo")
    public String goUpdateUserInfo(St_user st_user,Model model) throws Exception{
        MyData myData = userInfoService.findManagerUserInfo(st_user.getId());
        model.addAttribute("userId",st_user.getId());
        String birth=myData.getBirthday();
        String userInfo_year=birth.substring(0,4);
        String userInfo_month=birth.substring(4,6);
        String userInfo_day=birth.substring(6,8);

        model.addAttribute("userInfo_year",userInfo_year);
        model.addAttribute("userInfo_month",userInfo_month);
        model.addAttribute("userInfo_day",userInfo_day);
        model.addAttribute("myDate",myData);
        return "manager/manager_right/updateUserInfo";
    }

    /**
     * 修改我的个人信息
     * @param st_user
     * @param myData
     * @param model
     * @return 个人信息页面
     * @throws Exception
     */
    @RequestMapping("updateUserInfo")
    public String updateUserInfo(St_user st_user,String userInfo_year,String userInfo_month,String userInfo_day,MyData myData,Model model) throws Exception{
        myData.setBirthday(userInfo_year+""+userInfo_month+""+userInfo_day);
        userInfoService.modifyManagerUserInfo(myData.getSex(),myData.getBirthday(),myData.getEamil(),myData.getIntroduce(),st_user.getId());
        myData = userInfoService.findManagerUserInfo(st_user.getId());
        model.addAttribute("myData",myData);
        return "manager/manager_right/UserInfo";
    }

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}
