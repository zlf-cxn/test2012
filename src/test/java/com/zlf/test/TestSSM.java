package com.zlf.test;

import com.github.pagehelper.PageInfo;
import com.zlf.dao.UserDao;
import com.zlf.entity.Page;
import com.zlf.entity.User;
import com.zlf.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestSSM {
    @Autowired
    private UserDao userDao;

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @Test
    public void test1(){
        List<User> users = userDao.queryUsers();
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void test2(){
        Page page=new Page(1,3);
        PageInfo<User> pageInfo = userService.queryUsers(page);
        /*for (User user : users) {
            System.out.println(user);
        }*/
    }
}
