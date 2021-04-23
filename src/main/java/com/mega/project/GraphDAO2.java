package com.mega.project;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component //BbsDAO dao = new BbsDAO(); 한개만 객체 생성!, 싱글톤!
public class GraphDAO2 {

	@Autowired
	SqlSessionTemplate graph2;

	public GraphVO2 read(GraphVO2 bag) {
		return graph2.selectOne("graph2.select", bag);
	}

}
