package com.mega.mvc41;

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

	public void create(BbsVO bag) throws Exception { // VO는 프로토타입이라고 볼수 있다. set메서드를 해주므로.
		my.insert("bbs.insert", bag);
	}

	public BbsVO read(BbsVO bag) { // VO는 프로토타입이라고 볼수 있다. set메서드를 해주므로.
		BbsVO vo = my.selectOne("bbs.select", bag);
		return vo;
	}

}
