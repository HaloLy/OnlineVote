package cn.zcw.vote.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.zcw.vote.entity.User;
import cn.zcw.vote.service.UserService;

@Controller
public class UserAction {
	@Resource
	private UserService userService;
	
	@RequestMapping("login")
	@ResponseBody
	public Object login(User user){
		int m=0;
		try{
			m=userService.insert(user);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return m;
	}

}
