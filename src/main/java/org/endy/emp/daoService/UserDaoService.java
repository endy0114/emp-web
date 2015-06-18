package org.endy.emp.daoService;

import org.endy.emp.domain.User;
import org.endy.emp.sqlMapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userDao")
public class UserDaoService {
	
	private UserMapper userMapper;
	
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public User queryUser(int id){
		return userMapper.loadUserById(id);
	}
	
	public User queryUser(String userName){
		return userMapper.loadUserByName(userName);
	}
	
	@Transactional
	public void addUser(User user){
		userMapper.addUser(user);
	}

}
