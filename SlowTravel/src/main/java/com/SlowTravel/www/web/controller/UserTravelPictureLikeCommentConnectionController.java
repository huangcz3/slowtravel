package com.SlowTravel.www.web.controller;


import com.SlowTravel.www.entity.UserTravelPictureLikeCommentConnection;
import com.SlowTravel.www.service.IUserTravelPictureLikeCommentConnectionService;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

/**
 * 用户游记图片喜欢评论连接模块controller控制层
 *
 */

@Controller
@RequestMapping("UTPLCC")
public class UserTravelPictureLikeCommentConnectionController {

    @Resource(name = "userTravelPictureLikeCommentConnectionService")
    IUserTravelPictureLikeCommentConnectionService userTravelPictureLikeCommentConnectionService;

    /**
     * 查询热门达人所需属性
     *
     * @param model
     * @return
     */
    @RequestMapping("findHotMaster")
    public String findHotMaster(Model model, int limit) {
        List<UserTravelPictureLikeCommentConnection> hotMaster = userTravelPictureLikeCommentConnectionService.findHotMaster(limit);
        model.addAttribute("hotMaster", hotMaster);
        return "HOME_PAGE/HOME_PAGE";
    }

    /**
     * 页面懒加载
     *
     * @param response
     */
    @RequestMapping("lazyLoad")
    @ResponseBody
    public void lazyLoad(Integer limit, HttpServletResponse response) throws Exception {
        List<UserTravelPictureLikeCommentConnection> hotMaster = userTravelPictureLikeCommentConnectionService.findHotMaster(limit);
        StringBuffer json = new StringBuffer("\"{options:[");
        for (int i = 0; i < hotMaster.size(); i++) {
            if (i == hotMaster.size() - 1) {
                json.append("{messageCount:'").append(hotMaster.get(i).getMessage()).append("',likeCount:'").append(hotMaster.get(i).getLike()).append("',pid:'").append(hotMaster.get(i).getPicture().getId()).append("',uid:'").append(hotMaster.get(i).getSt_user().getId()).append("',username:'").append(hotMaster.get(i).getSt_user().getUsername()).append("',photo:'").append(hotMaster.get(i).getSt_user().getPhoto()).append("',t_name:'").append(hotMaster.get(i).getTravels().getT_name()).append("',tid:'").append(hotMaster.get(i).getTravels().getId()).append("',calendar:'").append(hotMaster.get(i).getTravels().getCalendar()).append("',url:'").append(hotMaster.get(i).getPicture().getUrl()).append("',exp:'").append(hotMaster.get(i).getPicture().getExp()).append("'}");
            } else {
                json.append("{messageCount:'").append(hotMaster.get(i).getMessage()).append("',likeCount:'").append(hotMaster.get(i).getLike()).append("',pid:'").append(hotMaster.get(i).getPicture().getId()).append("',uid:'").append(hotMaster.get(i).getSt_user().getId()).append("',username:'").append(hotMaster.get(i).getSt_user().getUsername()).append("',photo:'").append(hotMaster.get(i).getSt_user().getPhoto()).append("',t_name:'").append(hotMaster.get(i).getTravels().getT_name()).append("',tid:'").append(hotMaster.get(i).getTravels().getId()).append("',calendar:'").append(hotMaster.get(i).getTravels().getCalendar()).append("',url:'").append(hotMaster.get(i).getPicture().getUrl()).append("',exp:'").append(hotMaster.get(i).getPicture().getExp()).append("'},");
            }
        }
        json.append("]}\"");
        PrintWriter out = response.getWriter();
        out.write(String.valueOf(json));
        out.close();
    }

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}
