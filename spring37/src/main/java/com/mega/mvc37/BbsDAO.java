package com.mega.mvc37;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component //BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class BbsDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void create(BbsVO bag) throws Exception {
		my.insert("bbs.insert", bag);
	}

	public void delete() {

	}

}
