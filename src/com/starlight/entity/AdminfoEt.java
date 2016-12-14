package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 */
public class AdminfoEt {
     private int adm_id;
     private char adminfo_sex;
     private int  adminfo_idnum;
     private int adminfo_phome ;
     private String adminfo_address;

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public char getAdminfo_sex() {
        return adminfo_sex;
    }

    public void setAdminfo_sex(char adminfo_sex) {
        this.adminfo_sex = adminfo_sex;
    }

    public int getAdminfo_idnum() {
        return adminfo_idnum;
    }

    public void setAdminfo_idnum(int adminfo_idnum) {
        this.adminfo_idnum = adminfo_idnum;
    }

    public int getAdminfo_phome() {
        return adminfo_phome;
    }

    public void setAdminfo_phome(int adminfo_phome) {
        this.adminfo_phome = adminfo_phome;
    }

    public String getAdminfo_address() {
        return adminfo_address;
    }

    public void setAdminfo_address(String adminfo_address) {
        this.adminfo_address = adminfo_address;
    }
}
