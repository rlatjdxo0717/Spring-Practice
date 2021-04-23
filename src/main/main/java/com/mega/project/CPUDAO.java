package com.mega.project;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CPUDAO {
	
	@Autowired
	SqlSessionTemplate cpu;
	
	public void create(CPUVO bag) throws Exception {
		
		cpu.insert("cpu.insert", bag);
		
	}
	
	public CPUVO read(CPUVO bag) {
		
		CPUVO vo = cpu.selectOne("cpu.select", bag);
		return vo;
		
	} 

	public List<CPUVO> all() {
		return cpu.selectList("cpu.all");
	}
	public List<CPUVO> all1() {
		System.out.println("------------------------------");
		return cpu.selectList("cpu.cpu1");
	}
	public List<CPUVO> all2() {
		return cpu.selectList("cpu.cpu2");
	}
	public List<CPUVO> all3() {
		return cpu.selectList("cpu.cpu3");
	}
	public List<CPUVO> all4() {
		return cpu.selectList("cpu.cpu4");
	}

}