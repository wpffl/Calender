package com.gukje.sch.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gukje.sch.common.UserVO;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired 
	private SqlSessionTemplate  mybatis;
	
	@Override
	public void insert(UserVO vo) {
		// TODO Auto-generated method stub
		// UserMapper.xml의 네임스페이스 이름과 id를 사용.
		System.out.println("dao 들어옴");
		mybatis.insert("mappings.UserMapper.insert", vo) ;

	}

}
