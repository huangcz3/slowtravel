package com.SlowTravel.www.web.controller;

import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.destinations.DesinationImg;
import com.SlowTravel.www.entity.destinations.DestImgWantToGo;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.entity.destinations.DestinationDetails;
import com.SlowTravel.www.service.IDestinationService;
import com.SlowTravel.www.service.impl.DestinationServiceImpl;
import com.sun.deploy.net.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/**
 *
 * 目的地控制层
 */
@Controller
@RequestMapping("dest")
public class DestinationController {

    @Resource(name="desService")
    IDestinationService destinationService;



    /**
     * 映射  访问destHp 调用方法
     * @return
     */
    @RequestMapping("destHp")
    public ModelAndView dest() {
        List<Destination> hotDest = destinationService.findHotDest(20);
        ModelAndView model=new ModelAndView("destinations/destination","dest",hotDest);
        return model;
    }

    /**
     * 映射 访问目的地详情页
     * @return
     */
    @RequestMapping("destSf")
    public String destSf(ModelMap map, int destDeta) {
        System.out.print(destDeta);
        DestinationDetails destination = destinationService.findDestById(destDeta);
        List<DesinationImg> jList=destinationService.findDestPhotoByType(destDeta,"景点",6);
        List<DesinationImg> mList=destinationService.findDestPhotoByType(destDeta,"美食",6);
        List<DesinationImg> zList=destinationService.findDestPhotoByType(destDeta,"住宿",6);
        int x=destinationService.findDestImgNumber();
        map.put("baseDestinationDetails",destination);
        map.put("jList",jList);
        map.put("mList",mList);
        map.put("zList",zList);
        map.put("imgNumber",x);
        return "destinations/destinationDetails";
    }

    //映射目的地菜单 图片
    @RequestMapping("destImg")
    @ResponseBody
    public ModelAndView destImg(int destId) {

           List<DesinationImg> iList = destinationService.selectDestImg(destId, 0);
           ModelAndView destImg = new ModelAndView("destinations/destinationImg", "destImg", iList);
           destImg.addObject("destId", destId);
           return destImg;

    }
    //映射目的地菜单 图片ajax
    @RequestMapping("destImgAjax")
    @ResponseBody
    public void destImgAj(HttpServletResponse resp, int destId, int limit)  {
        List<DesinationImg> iList = destinationService.selectDestImg(destId, limit);

        String destJson="\"{destImgs:[";

        for(int i=0;i<iList.size();i++){
         if(i==iList.size()-1){
             destJson+="{id:'"+iList.get(i).getId()+"',url:'"+iList.get(i).getUrl()+"',place:'"+iList.get(i).getPlace()+"',praise:'"+iList.get(i).getPraise()+"'}";

         }else{
             destJson+="{id:'"+iList.get(i).getId()+"',url:'"+iList.get(i).getUrl()+"',place:'"+iList.get(i).getPlace()+"',praise:'"+iList.get(i).getPraise()+"'},";

         }
        }
        destJson+="]}\"";

        try {
            resp.getWriter().write(destJson);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    //映射目的地菜单 美食、景点、住宿、购物
    @RequestMapping("destSet")
    public String destSet(Model model,int destId,String type) {
        List<DestImgWantToGo> wList=destinationService.findDestTypeImg(destId,type,0);
        model.addAttribute("wList",wList);
        model.addAttribute("setType",type);
        model.addAttribute("destId",destId);
        return "destinations/destinationSet";
    }


    //映射目的地菜单 美食、景点、住宿、购物 AJAX
    @RequestMapping("destSetA")
    public void destAjax(HttpServletResponse resp, String type,int destId,int limit){

        List<DestImgWantToGo> iList=destinationService.findDestTypeImg(destId,type,limit);


        String destJson="\"{destSets:[";

        for(int i=0;i<iList.size();i++){
            if(i==iList.size()-1){
                destJson+="{id:'"+iList.get(i).getId()+"',place:'"+iList.get(i).getPlace()+"',url:'"+iList.get(i).getUrl()+"',go_number:'"+iList.get(i).getGo_number()+"',want_number:'"+iList.get(i).getWant_number()+"'}";

            }else{
                destJson+="{id:'"+iList.get(i).getId()+"',place:'"+iList.get(i).getPlace()+"',url:'"+iList.get(i).getUrl()+"',go_number:'"+iList.get(i).getGo_number()+"',want_number:'"+iList.get(i).getWant_number()+"'},";

            }
        }
        destJson+="]}\"";

        try {
            resp.getWriter().write(destJson);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("destTra")
    public String destTra() {return "destinations/destinationTravels";}

    @RequestMapping("*")
    public String check(){
        return "404/four";
    }
}
