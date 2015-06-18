package org.endy.emp.mvc;

import javax.servlet.http.HttpSession;

import org.endy.emp.busService.UserService;
import org.endy.emp.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@Autowired @Qualifier("userService")
	private UserService userService;
	
	@RequestMapping({"/","index.do"})
	public String index(){
		return "common/login";
	}
	
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public String login(String userName,String password,HttpSession session){
		User user = userService.login(userName, password);
		if(user == null){
			return "common/login";
		}
		session.setAttribute("_User", user);
		return "common/main";
	}
	@RequestMapping("regist.do")
	public String registUserPre(Model model){
		model.addAttribute(new User());
		return "common/regist";
	}
	@RequestMapping("register.do")
	public String registerUser(User user){
		userService.registUser(user);
		return "redirect:index.do";
	}

}
