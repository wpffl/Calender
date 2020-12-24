package com.gukje.sch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gukje.sch.common.ContentVO;
import com.gukje.sch.service.ContentService;

@Controller
public class ContentController {
	@Autowired
	private ContentService s;
	// 일정등록
	@RequestMapping(value="/insertContent.do", method=RequestMethod.POST)
    public String ContentInsert(ContentVO vo){	    	
    	s.insertContent(vo);	    	
    	System.out.println(vo.toString());
    	System.out.println("컨트롤러");
	return "calender.jsp";		
    }
}
