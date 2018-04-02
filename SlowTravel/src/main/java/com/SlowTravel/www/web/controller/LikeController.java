package com.SlowTravel.www.web.controller;


import com.SlowTravel.www.service.ILikeService;
import com.SlowTravel.www.service.ITravelsService;
import com.SlowTravel.www.service.IUserTravelPictureLikeCommentConnectionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * 喜欢模块controller控制层
 *
 */

@Controller
@RequestMapping("like")
public class LikeController {

    @Resource(name="likeService")
    ILikeService likeService;

    /**
     *
     * 通过图片id查询喜欢条数
     * @param pid
     * @param response
     * @throws Exception
     */
    @RequestMapping("findLikeCount")
    @ResponseBody
    public void findLikeCount(int pid,int user_id,HttpServletResponse response)throws Exception{
        boolean flag = false;
        if(likeService.findLikeById(pid,user_id)){
            likeService.removeLike(pid,user_id);
        }else{
            likeService.addLike(pid,user_id);
            flag = true;
        }
        int likeCount = likeService.findLikeCount(pid);
        PrintWriter writer = response.getWriter();
        writer.write(String.valueOf(likeCount)+":"+flag);
        writer.close();
    }


    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}

