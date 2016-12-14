package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 */
public class GoodsEt {
    private int g_id ;
    private String g_name ;
    private String  g_picture ;
    private float g_price ;
    private String  g_describe ;

    public int getG_id() {
        return g_id;
    }

    public void setG_id(int g_id) {
        this.g_id = g_id;
    }

    public String getG_name() {
        return g_name;
    }

    public void setG_name(String g_name) {
        this.g_name = g_name;
    }

    public String getG_picture() {
        return g_picture;
    }

    public void setG_picture(String g_picture) {
        this.g_picture = g_picture;
    }

    public String getG_describe() {
        return g_describe;
    }

    public void setG_describe(String g_describe) {
        this.g_describe = g_describe;
    }

    public float getG_price() {
        return g_price;
    }

    public void setG_price(float g_price) {
        this.g_price = g_price;
    }

}
