package com.mega.project;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CPUDAO {
	
	@Autowired //싱글톤으로 SQL명령어를 사용할 수 있는 API(Application Programming Interface) 사용.
	SqlSessionTemplate cpu;
	
	public void create(CPUVO bag) throws Exception {
		cpu.insert("cpu.insert", bag);
	}
	
	//페이징 값을 입력받아서, 테이블에 저장된 ID컬럼값과 비교하여 각 페이지에 대응하는 구간의 데이터들을 불러오는 용도로 사용
	public CPUVO read(CPUVO bag) {
		CPUVO vo = cpu.selectOne("cpu.select", bag);
		return vo; //ID컬럼 값을 불러올 수 있게 리턴.
	} 
	
	//각 구간별 물품 정보를 불러올 수 있도록 각 구간 정보를 불러오는 SQL문을 실행.
	public List<CPUVO> all1() {
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
	
	//문자열 형식으로 받은 직접 검색한 값을 받아와서 해당 단어가 포함된 물품명이 페이지를 넘겨도 검색되도록  사용.
	//검색했을 때 각 구간별로 정보를 불러오는 SQL문을 실행.
	public List<CPUVO> find(String subject) {
		return cpu.selectList("cpu.find", subject);
	}
	public List<CPUVO> find2(String subject) {
		return cpu.selectList("cpu.find", subject);
	}
	public List<CPUVO> find3(String subject) {
		return cpu.selectList("cpu.find2", subject);
	}
	public List<CPUVO> find4(String subject) {
		return cpu.selectList("cpu.find3", subject);
	}
	public List<CPUVO> find5(String subject) {
		return cpu.selectList("cpu.find4", subject);
	}
	
	//PC추천을 할때 일정 조건을 충족하는 데이터 중 임의로 하나 선택.
	public CPUVO random(CPUVO bag) {
		CPUVO vo = cpu.selectOne("cpu.random", bag);
		return vo;
	}
}