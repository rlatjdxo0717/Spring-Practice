package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MainBoardDAO {
	
	@Autowired
	SqlSessionTemplate mainboard;
	
	public void create(MainBoardVO bag) throws Exception {
		
		mainboard.insert("mainboard.insert", bag);
		
	}
	
	public MainBoardVO read(MainBoardVO bag) {
		
		MainBoardVO vo = mainboard.selectOne("mainboard.select", bag);
		return vo;
		
	}

	public List<MainBoardVO> all() {
		return mainboard.selectList("mainboard.all");
	}

}