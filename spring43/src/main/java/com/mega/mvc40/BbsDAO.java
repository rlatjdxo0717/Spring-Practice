package com.mega.mvc40;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component // BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class BbsDAO {

	
	@Autowired
	SqlSessionTemplate my;

	public List<BbsVO> all3() {
		return my.selectList("bbs.all3");
	}
	
	public void create(BbsVO bag) throws Exception {
		my.insert("bbs.insert", bag);
	}

	public BbsVO read(BbsVO bag) {
		BbsVO vo = my.selectOne("bbs.select", bag);
		return vo;
	}
}
