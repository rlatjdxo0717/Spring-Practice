package com.mega.project;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component //BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class MBDAO2 {

	@Autowired
	SqlSessionTemplate mb2;
		
	public MBVO2 read(MBVO2 bag) {
		return mb2.selectOne("mb2.select", bag);
	}

}
