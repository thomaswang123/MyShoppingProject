package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 */
public class OredersEt {
    private int o_id ;
    private int u_id ;
    private int g_id ;
    private String  g_name;
    private float g_price ;
    private  int o_number ;
    private String o_date ;

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

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

    public float getG_price() {
        return g_price;
    }

    public void setG_price(float g_price) {
        this.g_price = g_price;
    }

    public int getO_number() {
        return o_number;
    }

    public void setO_number(int o_number) {
        this.o_number = o_number;
    }

    public String getO_date() {
        return o_date;
    }

    public void setO_date(String o_date) {
        this.o_date = o_date;
    }

}
