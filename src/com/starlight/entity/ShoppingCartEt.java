package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 */
public class ShoppingCartEt {
    private int sc_id ;
    private int u_id;
    private int g_id ;
    private char sc_isbuy;

    public int getSc_id() {
        return sc_id;
    }

    public void setSc_id(int sc_id) {
        this.sc_id = sc_id;
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

    public char getSc_isbuy() {
        return sc_isbuy;
    }

    public void setSc_isbuy(char sc_isbuy) {
        this.sc_isbuy = sc_isbuy;
    }
}
