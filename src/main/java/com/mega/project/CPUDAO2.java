package com.mega.project;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component //BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class CPUDAO2 {

	@Autowired
	SqlSessionTemplate cpu2;

	public CPUVO2 read(CPUVO2 bag) {
		return cpu2.selectOne("cpu2.select", bag);
	}

}
