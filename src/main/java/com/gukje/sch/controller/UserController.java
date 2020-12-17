package com.gukje.sch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gukje.sch.common.UserVO;
import com.gukje.sch.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService s;

	@RequestMapping(value="/join.do", method=RequestMethod.POST)
    public String memberInsertPost(UserVO vo){	    	
    	s.insert(vo);	    	
	return "login.jsp";		
    }

}
