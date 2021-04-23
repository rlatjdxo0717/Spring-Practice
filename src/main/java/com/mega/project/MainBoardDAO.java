package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MainBoardDAO {
	
	@Autowired
	SqlSessionTemplate mb;
	
	public void create(MainBoardVO bag) throws Exception {
		mb.insert("mb.insert", bag);
	}
	
	public MainBoardVO read(MainBoardVO bag) {
		MainBoardVO vo = mb.selectOne("mb.select", bag);
		return vo;
	}

	public List<MainBoardVO> all1() {
		return mb.selectList("mb.mb1");
	}
	public List<MainBoardVO> all2() {
		return mb.selectList("mb.mb2");
	}
	public List<MainBoardVO> all3() {
		return mb.selectList("mb.mb3");
	}
	public List<MainBoardVO> all4() {
		return mb.selectList("mb.mb4");
	}
	
	public List<MainBoardVO> find(String subject) {
		return mb.selectList("mb.find", subject);
	}
	public List<MainBoardVO> find2(String subject) {
		return mb.selectList("mb.find", subject);
	}
	public List<MainBoardVO> find3(String subject) {
		return mb.selectList("mb.find2", subject);
	}
	public List<MainBoardVO> find4(String subject) {
		return mb.selectList("mb.find3", subject);
	}
	public List<MainBoardVO> find5(String subject) {
		return mb.selectList("mb.find4", subject);
	}
	
	public MainBoardVO random(MainBoardVO bag) {
		MainBoardVO vo = mb.selectOne("mb.random", bag);
		return vo;
	}
}