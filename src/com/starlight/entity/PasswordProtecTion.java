package com.starlight.entity;

/**
 * Created by thomas.wang on 2016/12/9.
 */
public class PasswordProtecTion {
    private int pp_id ;
    private String  pp_question ;
    private String  pp_answer ;

    public int getPp_id() {
        return pp_id;
    }

    public void setPp_id(int pp_id) {
        this.pp_id = pp_id;
    }

    public String getPp_question() {
        return pp_question;
    }

    public void setPp_question(String pp_question) {
        this.pp_question = pp_question;
    }

    public String getPp_answer() {
        return pp_answer;
    }

    public void setPp_answer(String pp_answer) {
        this.pp_answer = pp_answer;
    }
}
