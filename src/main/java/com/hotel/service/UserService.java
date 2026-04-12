package com.hotel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.dao.UserDao;
import com.hotel.model.User;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User login(String username, String password) {
        return userDao.checkLogin(username, password);
    }
}