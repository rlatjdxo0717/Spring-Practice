package com.mega.mvc3839;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component // BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class BbsDAO {

	
	@Autowired
	SqlSessionTemplate my;

	public List<BbsVO> all() {
		return my.selectList("bbs.all");
		
	}
	
	public void create(BbsVO bag) throws Exception {
		my.insert("bbs.insert", bag);
	}

	public BbsVO read(BbsVO bag) {
		BbsVO vo = my.selectOne("bbs.select", bag);
		return vo;
	}
}
