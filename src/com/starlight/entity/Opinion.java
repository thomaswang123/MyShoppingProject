package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/16.
 */
public class Opinion {
    private int on_id ;
    private  int on_gerade ;
    private String on_discuss;

    public int getOn_id() {
        return on_id;
    }

    public void setOn_id(int on_id) {
        this.on_id = on_id;
    }

    public int getOn_gerade() {
        return on_gerade;
    }

    public void setOn_gerade(int on_gerade) {
        this.on_gerade = on_gerade;
    }

    public String getOn_discuss() {
        return on_discuss;
    }

    public void setOn_discuss(String on_discuss) {
        this.on_discuss = on_discuss;
    }
}
