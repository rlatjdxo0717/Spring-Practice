package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemoryDAO {
	
	@Autowired
	SqlSessionTemplate cpu;
	
	public void create(MemoryVO bag) throws Exception {
		
		cpu.insert("memory.insert", bag);
		
	}
	
	public MemoryVO read(MemoryVO bag) {
		
		MemoryVO vo = cpu.selectOne("memory.select", bag);
		return vo;
		
	}

	public List<MemoryVO> all() {
		return cpu.selectList("memory.all");
	}

}