package com.work.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import com.work.dao.UserMapper;
import com.work.model.User;

@Service
public class UserServer {

	@Resource
	private UserMapper usermapper;

	public User selectUser(User user) {
		return usermapper.selectUser(user);
	}

	public int addLoginCount(User user) {

		return usermapper.addLoginCount(user);
	}
	
	public void update_login_time(User user){
		usermapper.update_login_time(user);
	}

	public int resetPasswd(User user) {

		return usermapper.addLoginCount(user);
	}
	
	public User checkEmail(@Param(value="email") String email){
		return usermapper.checkEmail(email);
	}
	
	public User checkUserName(@Param(value="username") String username){
		return usermapper.checkUserName(username);
	}
	
	public List<User> getUsernumb(){
		return usermapper.getUsernumb();
	}
	public User getUserid(@Param(value="username") String username){
		return usermapper.getUserid(username);
	}
	public void regist(User user){
		usermapper.regist(user);
	}
}
