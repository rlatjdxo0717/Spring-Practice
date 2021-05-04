package com.mega.mvc39;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component //MemberDAO dao = new MemberDAO(); 한개만 객체 생성!, 싱글톤!
public class MemberDAO {

	//myBatis싱글톤 주소를 주입!
	@Autowired
	SqlSessionTemplate my;
	
	public void create(MemberVO bag) throws Exception {
		my.insert("member.insert", bag);
	}

	public MemberVO select(MemberVO bag) {
		return my.selectOne("member.select", bag);
	}

}
