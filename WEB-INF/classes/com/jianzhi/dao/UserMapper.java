package com.jianzhi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jianzhi.entity.Admin;
import com.jianzhi.entity.Page;
import com.jianzhi.entity.User;

public interface UserMapper {
	Integer insertUserKey(User user);
	void insertUser(User user);

	User getUserById(int uid);

	List<User> getUsers(Page page);

	User login(User user);

	void updateUser(User user);

	Admin adminLogin(Admin admin);

	void addWorkNum(@Param(value = "worknum") Integer worknum, @Param(value = "uid") Integer uid);

	void userComment(@Param(value = "choice") Integer choice, @Param(value = "uid") Integer uid);

	void updateUserInflo(User user);
}
