package com.zlf.dao;

import com.zlf.entity.User;

import java.util.List;

public interface UserDao {
    List<User> queryUsers();
}
