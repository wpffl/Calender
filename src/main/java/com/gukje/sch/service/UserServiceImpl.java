package com.gukje.sch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gukje.sch.common.UserVO;
import com.gukje.sch.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao dao;
	
	@Override
	public void insert(UserVO vo) {
		// TODO Auto-generated method stub
		System.out.println("service 들어옴");
		dao.insert(vo);
	}

}
