package com.zlf.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zlf.dao.UserDao;
import com.zlf.entity.Page;
import com.zlf.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public PageInfo<User> queryUsers(Page page) {
        PageHelper.startPage(page.getPageNum(),page.getPageSize());
        List<User> users = userDao.queryUsers();
        return new PageInfo<>(users);
    }
}
