package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class GraphicDAO {
	
	@Autowired
	SqlSessionTemplate graphic;
	
	public void create(GraphicVO bag) throws Exception {
		
		graphic.insert("graphic.insert", bag);
		
	}
	
	public GraphicVO read(GraphicVO bag) {
		
		GraphicVO vo = graphic.selectOne("graphic.select", bag);
		return vo;
		
	}

	public List<GraphicVO> all() {
		return graphic.selectList("graphic.all");
	}

}