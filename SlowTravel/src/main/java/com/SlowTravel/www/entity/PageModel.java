package com.SlowTravel.www.entity;

import java.util.List;

/**分页实体类
 *
 */

public class PageModel<T> {

    // 当前页码
    private int pageNo = 1;

    // 每页显示的记录数
    private int pageSize = 10;

    // 总记录数
    private int recordCount;

    // 总页数 (需要计算)
    private int pageCount;

    // 存放分页数据的集合
    private List<T> datas;

    public PageModel() {

    }

    /**
     * 构造函数
     *
     * @param pageNo
     *            当前页码
     * @param pageSize
     *            每页显示记录数
     */
    public PageModel(int pageNo, int pageSize) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public int getPageSize() {
        return pageSize;
    }

    public int getRecordCount() {

        return recordCount;
    }

    public int getPageCount() {
        if(this.getRecordCount() <= 0){
            //无数据
            return 0 ;
        }else{
            // 页总数  =  (记录总数 +　每页显示数量　- 1) / 每页显示数
            pageCount = (recordCount + pageSize - 1) / pageSize;
        }
        return pageCount;
    }

    public List<T> getDatas() {
        return datas;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setRecordCount(int recordCount) {
        this.recordCount = recordCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public void setDatas(List<T> datas) {
        this.datas = datas;
    }
}
