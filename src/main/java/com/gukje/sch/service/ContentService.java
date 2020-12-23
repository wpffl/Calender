package com.gukje.sch.service;

import com.gukje.sch.common.ContentVO;

public interface ContentService {
	ContentVO selectUser(ContentVO vo);
	void insertContent(ContentVO vo);
}
