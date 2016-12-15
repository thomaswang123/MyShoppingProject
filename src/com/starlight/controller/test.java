package com.starlight.Controll;

import com.starlight.dao.AdminfoEtDao;
import com.starlight.dao.TestDao;
import com.starlight.entity.AcessTestEt;
import com.starlight.entity.AdminfoEt;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

/**
 * Created by thomas.wang on 2016/12/9.
 */
@Controller
public class test {
    @RequestMapping("login.do")
    public String test(){
        ApplicationContext act = new ClassPathXmlApplicationContext(
                "spring-mvc.xml");
    /*    TestDao testdao = act.getBean(TestDao.class);
        System.out.println(act);
        ArrayList<AcessTestEt> list = testdao.findAll();
        for (AcessTestEt lists:list) {
            System.out.println(lists.getAs_ages()+","+lists.getAs_id()+","
                                    +lists.getAs_name()+","+lists.getAs_acess());
        }*/
        AdminfoEtDao adminfodao = act.getBean(AdminfoEtDao.class);
        ArrayList<AdminfoEt> list =  adminfodao.findAll();
        for (AdminfoEt lists:list) {
            System.out.println(lists.getAdm_id()+","+lists.getAdminfo_idnum()+","+
                    lists.getAdminfo_address()+","+lists.getAdminfo_phome()+","+lists.getAdminfo_sex());
        }
        System.out.println("aaa");
        System.out.println("aaa");
        return "index";
    }
}
