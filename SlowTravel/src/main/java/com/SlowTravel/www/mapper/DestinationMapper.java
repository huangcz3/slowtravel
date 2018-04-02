package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.destinations.DesinationImg;
import com.SlowTravel.www.entity.destinations.DestImgWantToGo;
import com.SlowTravel.www.entity.destinations.Destination;
import com.SlowTravel.www.entity.destinations.DestinationDetails;

import java.util.List;

/**
 *
 * 目的地持久层操作接口
 */
public interface DestinationMapper {

    /**
     * 查找前20热门目的地
     * @return List<Destination>
     */
    public List<Destination> selectHotDest(int number);

    // 通过id查询目的地城市基本信息



    public DestinationDetails selectDestById(int id);


    //通过目的地id  图片类型ID 查询目的地城市景点 美食 等数据-
    public List<DesinationImg> selectDestPhotoByType(int id, String menu,int number);

    //通过目的地id  查询目的地城市景点 美食 等数据
    public  List<DesinationImg> selectDestPhoto(int id,int number);

    //查询分类照片
    public List<DestImgWantToGo> selectDestTypePhoto(int did, String ptype, int number);

    //查询目的地图片总数量
    public int selectDestImgNumber();
}
