package org.endy.emp.busService;

import javax.inject.Inject;

import org.endy.emp.daoService.UserDaoService;
import org.endy.emp.domain.User;
import org.endy.emp.security.BCrypt;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserService {
	
	/**
	 * 登录密码的加密次数
	 */
	private static final int LOG_ROUNDS = 12;
	
	@Inject
	private UserDaoService userDao;
	
	public void registUser(User user){
		//用户密码加密
		String salt = BCrypt.gensalt(UserService.LOG_ROUNDS);
		user.setPassword(BCrypt.hashpw(user.getPassword(), salt));
		user.setUserType(1);
		user.setUserState(0);
		userDao.addUser(user);
	}
	
	public User login(String userName,String password){
		User user = userDao.queryUser(userName);
		if(user != null && BCrypt.checkpw(password, user.getPassword())){
			user.setPassword("");
			return user;
		};
		return null;
	}

}
