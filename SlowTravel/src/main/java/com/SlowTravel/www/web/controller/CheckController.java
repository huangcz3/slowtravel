package com.SlowTravel.www.web.controller;


import com.SlowTravel.www.service.ITravelsService;
import com.SlowTravel.www.service.IUserTravelPictureLikeCommentConnectionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 检测模块controller控制层
 *
 */

@Controller
@RequestMapping("*")
public class CheckController {

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}

