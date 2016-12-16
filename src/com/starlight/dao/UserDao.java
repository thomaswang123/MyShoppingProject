package com.starlight.dao;

import com.starlight.entity.UserEt;

import java.util.List;

/**
 * Created by thomas.wang on 2016/12/16.
 */
public interface UserDao {
    List<UserEt> findAll();
}
