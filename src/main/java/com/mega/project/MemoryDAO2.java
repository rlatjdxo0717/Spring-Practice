package com.mega.project;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component //BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class MemoryDAO2 {

	@Autowired
	SqlSessionTemplate memo2;
	
	public MemoryVO2 read(MemoryVO2 bag) {
		return memo2.selectOne("memo2.select", bag);
	}

}
