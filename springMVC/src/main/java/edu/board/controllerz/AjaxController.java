package edu.board.controllerz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import edu.board.service.UserService;

@Controller
public class AjaxController {
	
	
	@Autowired
	UserService userService;
	
	
}

