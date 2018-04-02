package com.SlowTravel.www.web.controller;


import com.SlowTravel.www.entity.P_comment;
import com.SlowTravel.www.entity.PageModel;
import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.service.IP_commentService;
import com.SlowTravel.www.service.IPictureService;
import com.SlowTravel.www.service.ITravelsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * 删除模块controller控制层
 *
 */

@Controller
@RequestMapping("delete")
public class DeleteController {

    @Resource(name = "travelsService")
    ITravelsService travelsService;

    @Resource(name = "pictureService")
    IPictureService pictureService;

    @Resource(name = "p_commentService")
    IP_commentService p_commentService;

    /**
     * 跳转删除页面
     * @return
     */
    @RequestMapping("goTravelDelete")
    public String goDelete(Model model, PageModel<Travels> pageModel){
        pageModel.setRecordCount(travelsService.findDeleteTravelCount());
        pageModel.setDatas(travelsService.findDeleteTravel((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deleteTravelList";
  }

    /**
     * 跳转删除页面
     * @return
     */
    @RequestMapping("goDeletePicture")
    public String goDeletePicture(Model model, PageModel<Picture> pageModel){
        pageModel.setRecordCount(pictureService.findDeletePictureCount());
        pageModel.setDatas(pictureService.findDeletePicture((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deletePictureList";
    }

    /**
     * 跳转删除页面
     * @return
     */
    @RequestMapping("goDeleteComment")
    public String goDeleteComment(Model model, PageModel<P_comment> pageModel){
        pageModel.setRecordCount(p_commentService.findDeleteCommentCount());
        pageModel.setDatas(p_commentService.findDeleteComment((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deleteCommentList";
    }

    /**
     * 数据恢复
     * @return
     */
    @RequestMapping("renewTravel")
    public String renewTravel(int id,Model model,PageModel<Travels> pageModel){
        travelsService.renewTravel(id);
        pageModel.setRecordCount(travelsService.findDeleteTravelCount());
        pageModel.setDatas(travelsService.findDeleteTravel((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deleteTravelList";
    }

    @RequestMapping("renewPicture")
    public String renewPicture(int id,Model model,PageModel<Picture> pageModel){
        pictureService.renewPicture(id);
        pageModel.setRecordCount(pictureService.findDeletePictureCount());
        pageModel.setDatas(pictureService.findDeletePicture((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deletePictureList";
    }

    @RequestMapping("renewComment")
    public String renewComment(int id,Model model,PageModel<P_comment> pageModel){
        p_commentService.renewComment(id);
        pageModel.setRecordCount(p_commentService.findDeleteCommentCount());
        pageModel.setDatas(p_commentService.findDeleteComment((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deleteCommentList";
    }

    /**
     * 物理删除数据
     * @return
     */
    @RequestMapping("shiftDeleteTravel")
    public String shiftDeleteTravel(int id,Model model,PageModel<Travels> pageModel){
        travelsService.shiftDeleteTravel(id);
        pageModel.setRecordCount(travelsService.findDeleteTravelCount());
        pageModel.setDatas(travelsService.findDeleteTravel((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deleteTravelList";
    }

    @RequestMapping("shiftDeletePicture")
    public String shiftDeletePicture(int id,Model model,PageModel<Picture> pageModel){
        pictureService.shiftDeletePicture(id);
        pageModel.setRecordCount(pictureService.findDeletePictureCount());
        pageModel.setDatas(pictureService.findDeletePicture((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deletePictureList";
    }

    @RequestMapping("shiftDeleteComment")
    public String shiftDeleteComment(int id,Model model,PageModel<P_comment> pageModel){
        p_commentService.shiftDeleteComment(id);
        pageModel.setRecordCount(p_commentService.findDeleteCommentCount());
        pageModel.setDatas(p_commentService.findDeleteComment((pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        return "manager/manager_right/deleteCommentList";
    }

    /**
     * 删除页面查询
     */
    @RequestMapping("searchDeleteTravel")
    public String searchDeleteTravel(String search,Model model,PageModel<Travels> pageModel){
        pageModel.setRecordCount(travelsService.searchDeleteTravelCount(search));
        pageModel.setDatas(travelsService.findSearchDeleteTravel(search,(pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("flag",search);
        return "manager/manager_right/deleteTravelList";
    }

    @RequestMapping("searchDeletePicture")
    public String searchDeletePicture(String search,Model model,PageModel<Picture> pageModel){
        pageModel.setRecordCount(pictureService.searchDeletePictureCount(search));
        pageModel.setDatas(pictureService.findSearchDeletePicture(search,(pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("flag",search);
        return "manager/manager_right/deletePictureList";
    }

    @RequestMapping("searchDeleteComment")
    public String searchDeleteComment(String search,Model model,PageModel<P_comment> pageModel){
        pageModel.setRecordCount(p_commentService.searchDeleteCommentCount(search));
        pageModel.setDatas(p_commentService.findSearchDeletePicture(search,(pageModel.getPageNo() - 1) * 10));
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("flag",search);
        return "manager/manager_right/deleteCommentList";
    }

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}

