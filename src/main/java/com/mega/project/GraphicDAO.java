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

	public List<GraphicVO> all1() {
		return graphic.selectList("graphic.gra1");
	}
	public List<GraphicVO> all2() {
		return graphic.selectList("graphic.gra2");
	}
	public List<GraphicVO> all3() {
		return graphic.selectList("graphic.gra3");
	}
	public List<GraphicVO> all4() {
		return graphic.selectList("graphic.gra4");
	}
	
	public List<GraphicVO> find(String subject) {
		return graphic.selectList("graphic.find", subject);
	}
	public List<GraphicVO> find2(String subject) {
		return graphic.selectList("graphic.find", subject);
	}
	public List<GraphicVO> find3(String subject) {
		return graphic.selectList("graphic.find2", subject);
	}
	public List<GraphicVO> find4(String subject) {
		return graphic.selectList("graphic.find3", subject);
	}
	public List<GraphicVO> find5(String subject) {
		return graphic.selectList("graphic.find4", subject);
	}
	
	public GraphicVO random(GraphicVO bag) {
		GraphicVO vo = graphic.selectOne("graphic.random", bag);
		return vo;
	}
}