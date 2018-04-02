package com.SlowTravel.www.entity.myHomePage;


public class MyPhotosAndCount {

    //喜欢的照片地址
    private String url;

    //照片喜欢人数
    private int count;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public MyPhotosAndCount(String url, int count) {
        this.url = url;
        this.count = count;
    }

    public MyPhotosAndCount() {

    }
}
