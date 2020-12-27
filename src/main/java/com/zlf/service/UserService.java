package com.zlf.service;

import com.github.pagehelper.PageInfo;
import com.zlf.entity.Page;
import com.zlf.entity.User;

import java.util.List;

public interface UserService {
    PageInfo<User> queryUsers(Page page);
}
