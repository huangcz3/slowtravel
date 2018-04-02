package com.SlowTravel.www.web.interceptor;

import com.SlowTravel.www.entity.St_user;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * login Intecepter
 */

public class CheckUser implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession(false);
        if(session!=null&&null!=session.getAttribute("st_user")&&session.getAttribute("st_user")!=""){
            St_user st_user = (St_user) session.getAttribute("st_user");
            if(st_user.getRole_id()!=4){
                return true;
            }
        }
        httpServletResponse.sendRedirect("/SlowTravel/role/404");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
