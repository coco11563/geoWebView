package com.work.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.work.model.User;

@MapperScan("Usermapper")
public interface UserMapper {
	User selectUser(User user);

	int addLoginCount(User user);
	
	User checkEmail(@Param(value="email") String email);
	
	User checkUserName(@Param(value="username") String username);
	
	void regist(User user);
	
	List<User> getUsernumb();
	
	void update_login_time(User user);
	
	User getUserid(@Param(value="username") String username);
}
