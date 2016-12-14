package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 */
public class UserinfoEt {
    private int u_id ;
    private char uinfo_sex ;
    private int uinfo_age ;
    private String  u_address;

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public char getUinfo_sex() {
        return uinfo_sex;
    }

    public void setUinfo_sex(char uinfo_sex) {
        this.uinfo_sex = uinfo_sex;
    }

    public int getUinfo_age() {
        return uinfo_age;
    }

    public void setUinfo_age(int uinfo_age) {
        this.uinfo_age = uinfo_age;
    }

    public String getU_address() {
        return u_address;
    }

    public void setU_address(String u_address) {
        this.u_address = u_address;
    }
}
