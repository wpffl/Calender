package com.gukje.sch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gukje.sch.common.ContentVO;
import com.gukje.sch.dao.ContentDao;
@Service
public class ContentServiceImpl implements ContentService{
	@Autowired
	ContentDao dao;
	@Override
	public void insertContent(ContentVO vo) {
		System.out.println("service"+vo.toString());
		dao.insertContent(vo);
	}
	@Override
	public ContentVO selectUser(ContentVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
