package org.endy.emp.sqlMapper;

import org.endy.emp.domain.User;

public interface UserMapper {
	
	void addUser(User user);
	
	User loadUserById(int id);
	
	User loadUserByName(String userName);

}
