package com.gukje.sch.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gukje.sch.common.ContentVO;
@Repository
public class ContentDaoImpl implements ContentDao{
	@Autowired
	SqlSessionTemplate mybatis;
	// 일정등록
	@Override
	public void insertContent(ContentVO vo) {
		mybatis.insert("ContentMapper.insertContent", vo);
		System.out.println("dao");
		System.out.println(vo.toString());
	}

}
