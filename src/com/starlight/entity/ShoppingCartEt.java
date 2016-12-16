package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 * 购物车类
 */
public class ShoppingCartEt {
    private int sc_id ;
    private int sc_uid;
    private int sc_gid ;
    private int sc_number;
    private float sc_summoney ;
    private String sc_date ;

    public int getSc_id() {
        return sc_id;
    }

    public void setSc_id(int sc_id) {
        this.sc_id = sc_id;
    }

    public int getSc_uid() {
        return sc_uid;
    }

    public void setSc_uid(int sc_uid) {
        this.sc_uid = sc_uid;
    }

    public int getSc_gid() {
        return sc_gid;
    }

    public void setSc_gid(int sc_gid) {
        this.sc_gid = sc_gid;
    }

    public int getSc_number() {
        return sc_number;
    }

    public void setSc_number(int sc_number) {
        this.sc_number = sc_number;
    }

    public float getSc_summoney() {
        return sc_summoney;
    }

    public void setSc_summoney(float sc_summoney) {
        this.sc_summoney = sc_summoney;
    }

    public String getSc_date() {
        return sc_date;
    }

    public void setSc_date(String sc_date) {
        this.sc_date = sc_date;
    }

}
