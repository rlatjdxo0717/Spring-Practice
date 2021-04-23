package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BoardDAO {

	@Autowired
	SqlSessionTemplate my;

	public void create(BoardVO vo) throws Exception {
		my.insert("Board.insert", vo);
		System.out.println("Board Mapper insert 실행됨");
	}

	public void update(BoardVO vo) throws Exception {
		my.update("Board.update", vo);
		System.out.println("Board Mapper update 실행됨");
	}

	public BoardVO read(BoardVO bag) throws Exception {
		BoardVO vo = my.selectOne("Board.select", bag);
		String click = Integer.toString(Integer.parseInt(vo.getBviews()) + 1);
		vo.setBviews(click);
		my.update("Board.update2", vo);
		System.out.println("Board Mapper read 실행됨");
		System.out.println("조회수 1 늘어남");
		return vo;
	}
	
	public void delete(BoardVO vo) {
		my.delete("Board.delete", vo);
	}
	
	public int likecount(BoardVO bag) {
		BoardVO vo = my.selectOne("Board.likecount", bag);
		int blike = Integer.parseInt(vo.getBlike());
		return blike;
	}

	public List<BoardVO> all() {
		
		System.out.println("Board Mapper all 실행됨");
		return my.selectList("Board.all");
	}
	
	public List<BoardVO> search(SearchVO vo) {
		System.out.println(vo.getS_field());
		System.out.println(vo.getS_word());
		System.out.println("SearchVO 키워드 재확인.");
		System.out.println("검색 Mapper 실행!");
		return my.selectList("Board.searchtitle",vo);
	}
	
	public List<BoardVO> sort(String sort){
		System.out.println("Board Mapper sort 실행예정");
		return my.selectList("Board.sort",sort);
	}
	
	public List<BoardVO> quick(){
		System.out.println("Board Mapper quick 실행예정");
		return my.selectList("Board.quick");
	}
	
	public List<BoardVO>	quick2(int[] qArray) {
		System.out.println("Board Mapper quick2 실행(배열들고간다!)");
		return my.selectList("Board.quick2", qArray);
	}
	
}