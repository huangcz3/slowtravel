package com.SlowTravel.www.mapper;

import com.SlowTravel.www.entity.Picture;
import com.SlowTravel.www.entity.Role;
import com.SlowTravel.www.entity.St_user;
import com.SlowTravel.www.entity.Travels;
import com.SlowTravel.www.entity.manager.TravelsList;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 游记持久化操作接口
 *
 */
public interface TravelsMapper {

    /**
     *
     * 查找热门游记
     * @return 热度排名前6的游记
     */
    public List<Travels> selectHotTravels();

    /**
     * Created by shilei on 2017/6/27
     *保存创建游记到数据库
     *
     */
    public void insertTravels(Travels travels );

    /**
     *   Created by shilei on 2017/6/27
     *  保存上传到数据库
     *
     * */


    public void insertPictrue(Picture picture);

    /**
     * Created by shilei on 2017/6/27
     *@param time 上传游记时间
     * @retrun 返回游记id
     *
     */
    public int insertTravelsId(String  time);

    /**
     * 查询游记列表
     * @return 游记集合
     */
    public List<TravelsList> selectTravelsList(int pageNumberIndex);

    /**
     * 逻辑删除游记
     * @param travelsId 游记ID
     */
    public void logicDeleteTravelsById(int travelsId);

    /**
     * 修改游记信息
     * @param travels 游记实体类
     */
    public void updateTravelsById(Travels travels);

    /**
     * 获取游记总数
     * @return 游记总数
     */
    public int selectTravelsCount();

    /**
     * 搜索游记信息
     * @param t_name
     * @param local
     * @param username
     * @param pageNumberIndex
     * @return
     */
    public List<TravelsList> searchTravelsInfo(@Param("t_name") String t_name,
                                               @Param("local") String local,
                                               @Param("username") String username,
                                               @Param("pageNumberIndex")int pageNumberIndex);

    /**
     * 搜索游记信息总数
     * @param travelsList
     * @return
     */
    public int searchTravelsInfoCount(TravelsList travelsList);

    /**
     * 查询删除游记信息
     * @return
     */
    public List<Travels> selectDeleteTravel(int pageNumberIndex);

    /**
     * 查询删除游记总数
     * @return
     */
    public int selectDeleteTravelCount();

    /**
     * 恢复删除
     * @param id
     */
    public void renewTravel(int id);

    /**
     * 彻底删除
     * @param id
     */
    public void shiftDeleteTravel(int id);

    /**
     * 模糊查询
     * @param search
     * @return
     */
    public List<Travels> searchDeleteTravel(String search,int pageNumberIndex);

    /**
     * 模糊查询总数
     */
    public int searchDeleteTravelCount(String search);

    /**
     * 游记热门度修改
     * @param tid
     */
    public void updateTravelHot(int tid);
}
