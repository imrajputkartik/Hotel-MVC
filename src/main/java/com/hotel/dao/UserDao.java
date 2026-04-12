package com.hotel.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hotel.model.User;

@Repository
public class UserDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    public User checkLogin(String username, String password) {
        String query = "from User where username=:u and password=:p";
        List<User> users = (List<User>) hibernateTemplate.findByNamedParam(
                query,
                new String[]{"u","p"},
                new Object[]{username,password}
        );

        if(users.isEmpty()) {
            return null;
        }
        return users.get(0);
    }
}