package edu.board.controllerz;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.board.service.UserService;
import edu.board.vo.UserVO;



@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping(value="user/join.do", method=RequestMethod.GET)
	public String join() {
		
		
		return "user/join";
	}
	
	@RequestMapping(value="user/join.do", method=RequestMethod.POST)
	public String join(UserVO vo) {
		
		int result = userService.insertuser(vo);
		
		return "redirect:/";
	}
	@RequestMapping(value="user/login.do", method=RequestMethod.GET)
	public String login() {
		
		return "user/home";
	}
	@RequestMapping(value="user/login.do", method = RequestMethod.POST)
	public String login(UserVO vo,HttpServletRequest request,HttpSession session) {
		
		UserVO user = userService.selectlogin(vo); 
		
		if (user != null) {
			
			session = request.getSession();
			
			UserVO login = new UserVO();
			login.setId(user.getId());
			login.setPassword(user.getPassword());
			login.setName(user.getName());
			
			session.setAttribute("login", login);
			
			System.out.println("성공");
			return "redirect:/";
		}else {
			System.out.println("실패");
			return "redirect:/";
	}
	
	}
	
	
}
