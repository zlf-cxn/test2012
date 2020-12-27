package com.zlf.web;

import com.github.pagehelper.PageInfo;
import com.zlf.entity.Page;
import com.zlf.entity.User;
import com.zlf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;
    @GetMapping("/users")
    public String queryUsers(Model model, Page page){
        System.out.println("query users");
        PageInfo<User> pageInfo = userService.queryUsers(page);
        model.addAttribute("data",pageInfo);
        return "userPro";
    }

    @RequestMapping("/users/{id}")
    public String queryOne(@PathVariable Integer id){
        System.out.println("query user by id:"+id);
        return "index";
    }
    @PostMapping("/users")
    public String updateUser(User user){
        System.out.println("update user by:"+user);
        return "index";
    }
}
