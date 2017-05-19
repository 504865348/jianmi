package com.jianzhi.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jianzhi.dao.UserMapper;
import com.jianzhi.entity.Admin;
import com.jianzhi.entity.Page;
import com.jianzhi.entity.User;

@Transactional
@Service(value = "userServiceImpl")
public class UserServiceImpl implements UserService {
	@Resource
	UserMapper userMapper;
	@Resource
	User userIn;
	@Resource
	Admin inAdmin;

	public void insertUser(User user) {
		userMapper.insertUser(user);
	}

	@Override
	public User getUserById(int uid) {
		userIn = userMapper.getUserById(uid);
		return userIn;
	}

	@Override
	public List<User> getUsers(Page page) {
		// TODO Auto-generated method stub
		List<User> users = new ArrayList<User>();
		users = userMapper.getUsers(page);
		return users;
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		userIn = userMapper.login(user);
		return userIn;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUser(user);
	}

	@Override
	public Admin adminLogin(Admin admin) {
		// TODO Auto-generated method stub
		inAdmin = userMapper.adminLogin(admin);
		return inAdmin;
	}

	@Override
	public void addWorkNum(Integer worknum, Integer uid) {
		// TODO Auto-generated method stub
		userMapper.addWorkNum(worknum, uid);
	}

	@Override
	public void userComment(Integer choice, Integer uid) {
		// TODO Auto-generated method stub
		userMapper.userComment(choice, uid);
	}

	@Override
	public void updateUserInflo(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUserInflo(user);
	}

	@Override
	public Integer insertUserKey(User user) {
		// TODO Auto-generated method stub
	    Integer uid=userMapper.insertUserKey(user);
		return uid;
	}

}
