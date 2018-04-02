package com.SlowTravel.www.web.controller;



import com.SlowTravel.www.entity.*;
import com.SlowTravel.www.entity.myHomePage.MyPhotosAndCount;
import com.SlowTravel.www.entity.myHomePage.MyTravels;
import com.SlowTravel.www.entity.myHomePage.WantToGo;
import com.SlowTravel.www.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * 游记模块controller控制层
 *
 */

@Controller
@RequestMapping("travels")
@SessionAttributes("st_user")
public class TravelsController {

    //申明一个时间变量 记录当前时间
    Calendar c = Calendar.getInstance();
    String time = c.get(c.YEAR)+"-"+(c.get(c.MONTH)+1)+"-"+c.get(c.DATE)+" "+c.get(c.HOUR_OF_DAY)+":"+c.get(c.MINUTE)+":"+c.get(c.SECOND);

    @Resource(name = "travelsService")
    ITravelsService travelsService;

    @Resource(name = "travelsShowService")
    ITravelsShowService travelsShowService;

    @Resource(name = "p_commentService")
    IP_commentService p_commentService;

    @Resource(name = "myHomePageService")
    IMyHomePageService myHomePageService;

    @Resource(name = "st_userService")
    ISt_userService st_userService;


    /**
     * 查询热门游记
     *
     * @param model
     * @return
     */
    @RequestMapping("findHotTravels")
    public String findHotTravels(Model model) {
        List<Travels> hotTravels = travelsService.findHotTravels();
        model.addAttribute("hotTravels", hotTravels);
        return "HOME_PAGE/HOME_PAGE";
    }

    /**
     *Created by shilei on 2017/4/27.
     * @param @RequestParam(value = "uploads", required = false) MultipartFile  HttpServletRequest  ModelMa）
     * 上传创建游记,照片并保存到数据库
     *
     * **/
    @RequestMapping("addUpload")
    public String upload(@RequestParam(value = "uploads", required = false) MultipartFile file, HttpServletRequest request,
                         ModelMap model, Travels travels, Picture picture, St_user st_user) {
        //获取游记名
        String travelName=request.getParameter("ipt1");
        //获取描述
        String photoDescribe=request.getParameter("text");
        //获取目的地
        String Destination=request.getParameter("ipt3");
        //获取照片类别
        String photoCategory=request.getParameter("selectTravelCategory");
        int photoCategoryId=0;
        if (photoCategory.equals("美食")){
            photoCategoryId=1;
        }else if(photoCategory.equals("景点")){
            photoCategoryId=2;
        }else  if(photoCategory.equals("购物")){
            photoCategoryId=3;
        }else{
            photoCategoryId=4;
        }
        //设置照片路径
        String path=request.getSession().getServletContext().getRealPath("staticState/img") ;
        String fileName=file.getOriginalFilename();
        //添加上传时间与截取照片名字组成新的照片名
        String str=System.currentTimeMillis()+fileName.substring(fileName.indexOf("."));
        File target=new File(path,str);
        //保存
        if(!target.exists()){
            target.mkdirs();
        }
        try {
            file.transferTo(target);
        }catch (Exception e) {
            e.printStackTrace();
        }
        //设置游记属性
        travels.setT_name(travelName);
        travels.setHot(1);
        travels.setState(1);
        travels.setUser_id(st_user.getId());
        travels.setLocal(Destination);
        Date date=new Date();
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=format.format(date);
        travels.setCalendar(time);
        travelsService.addLoadTravels(travels);

        //设置上传照片属性
        picture.setUrl(str);
        picture.setDate(time);
        picture.setState(1);
        picture.setLocal(Destination);
        picture.setCategory(photoCategoryId);
        picture.setExp(photoDescribe);
        picture.setPlace(Destination);
        int travelsId=travelsService.findTravelId(time);
        picture.setTravels_id(travelsId);
        travelsService.addLoadPictrue(picture);

        //获取我的首页显示信息
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
     *
     * 跳转到热门游记
     * @return
     */
    @RequestMapping("travelsShow")
    public String travelsShow(int tid,Model model){
        travelsService.modifyTravelHot(tid);
        TravelsShow travelsShowById = travelsShowService.findTravelsShowById(tid);
        model.addAttribute("travelsShowById",travelsShowById);
        return "mail/mail";
    }

    /**
     *
     * 根据图片id查询消息
     * @param pid 图片id
     */
    @RequestMapping("pictureMessage")
    @ResponseBody
    public void pictureMessage(int pid,HttpServletResponse response)throws Exception{
        List<P_comment> messageByPid = p_commentService.findMessageByPid(pid);
        StringBuffer json = new StringBuffer("");
        json.append("\"{options:[");
        for (int i = 0; i < messageByPid.size(); i++) {
            if (i == messageByPid.size() - 1) {
                json.append("{id:'").append(messageByPid.get(i).getId()).append("',content:'").append(messageByPid.get(i).getContent()).append("',username:'").append(messageByPid.get(i).getUsername()).append("',recevi_username:'").append(messageByPid.get(i).getReceive_username()).append("',date:'").append(messageByPid.get(i).getDate()).append("',photo:'").append(messageByPid.get(i).getPhoto()).append("'}");
            } else {
                json.append("{id:'").append(messageByPid.get(i).getId()).append("',content:'").append(messageByPid.get(i).getContent()).append("',username:'").append(messageByPid.get(i).getUsername()).append("',recevi_username:'").append(messageByPid.get(i).getReceive_username()).append("',date:'").append(messageByPid.get(i).getDate()).append("',photo:'").append(messageByPid.get(i).getPhoto()).append("'},");
            }
        }
        json.append("]}\"");
        PrintWriter out = response.getWriter();
        out.write(String.valueOf(json));
        out.close();
    }

    /**
     * 增加图片消息
     * @throws Exception
     */
    @RequestMapping("sendMessage")
    @ResponseBody
    public void sendMessage(String username,int pid,String content,HttpServletResponse response)throws Exception {
        P_comment comment = new P_comment();
        StringBuffer receive_username = new StringBuffer();
        StringBuffer realContent = new StringBuffer();
        if(content.charAt(0) == '回'){
            String[] split = content.split("：");
            for (int j = 0; j < split[0].length(); j++) {
                if (j > 4) {
                    receive_username.append(split[0].charAt(j));
                }
            }
            realContent.append(split[1]);
        }else{
            realContent.append(content);
        }
        comment.setDate(time);
        comment.setUsername(username);
        comment.setContent(String.valueOf(realContent));
        comment.setP_id(pid);
        comment.setReceive_username(String.valueOf(receive_username));
        p_commentService.addMessage(comment);
        List<P_comment> messageByPid = p_commentService.findMessageByPid(pid);
        StringBuffer json = new StringBuffer("");
        json.append("\"{options:[");
        for (int i = 0; i < messageByPid.size(); i++) {
            if (i == messageByPid.size() - 1) {
                json.append("{id:'").append(messageByPid.get(i).getId()).append("',content:'").append(messageByPid.get(i).getContent()).append("',username:'").append(messageByPid.get(i).getUsername()).append("',recevi_username:'").append(messageByPid.get(i).getReceive_username()).append("',date:'").append(messageByPid.get(i).getDate()).append("',photo:'").append(messageByPid.get(i).getPhoto()).append("'}");
            } else {
                json.append("{id:'").append(messageByPid.get(i).getId()).append("',content:'").append(messageByPid.get(i).getContent()).append("',username:'").append(messageByPid.get(i).getUsername()).append("',recevi_username:'").append(messageByPid.get(i).getReceive_username()).append("',date:'").append(messageByPid.get(i).getDate()).append("',photo:'").append(messageByPid.get(i).getPhoto()).append("'},");
            }
        }
        json.append("]}\"");
        PrintWriter writer = response.getWriter();
        writer.write(String.valueOf(json));
        writer.close();
    }

    /**
     * 删除消息
     * @param
     * @param response
     * @throws Exception
     */
    @RequestMapping("removeMessage")
    @ResponseBody
    public void removeMessage(int id,int pid,HttpServletResponse response)throws Exception{
        p_commentService.removeMessage(id);
        List<P_comment> messageByPid = p_commentService.findMessageByPid(pid);
        StringBuffer json = new StringBuffer("");
        json.append("\"{options:[");
        for (int i = 0; i < messageByPid.size(); i++) {
            if (i == messageByPid.size() - 1) {
                json.append("{id:'").append(messageByPid.get(i).getId()).append("',content:'").append(messageByPid.get(i).getContent()).append("',username:'").append(messageByPid.get(i).getUsername()).append("',recevi_username:'").append(messageByPid.get(i).getReceive_username()).append("',date:'").append(messageByPid.get(i).getDate()).append("',photo:'").append(messageByPid.get(i).getPhoto()).append("'}");
            } else {
                json.append("{id:'").append(messageByPid.get(i).getId()).append("',content:'").append(messageByPid.get(i).getContent()).append("',username:'").append(messageByPid.get(i).getUsername()).append("',recevi_username:'").append(messageByPid.get(i).getReceive_username()).append("',date:'").append(messageByPid.get(i).getDate()).append("',photo:'").append(messageByPid.get(i).getPhoto()).append("'},");
            }
        }
        json.append("]}\"");
        PrintWriter writer = response.getWriter();
        writer.write(String.valueOf(json));
        writer.close();
    }

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}
