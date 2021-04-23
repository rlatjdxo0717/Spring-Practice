package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CommentDAO {
	CommentVO vo;
	@Autowired
	SqlSessionTemplate my;

	public void create(CommentVO vo) throws Exception {
		this.vo = vo;
		System.out.println("OK, DAO까지도 왔음.");
		System.out.println(vo.getCid());
		System.out.println(vo.getCcontent());
		System.out.println(vo.getCbno());
		
		my.insert("Comment.insert", vo);
		System.out.println("Comment insert 실행됨");

	}
	
	public List<CommentVO> all(CommentVO vo) {
		this.vo = vo;
		System.out.println(vo.getCbno());
		System.out.println("다시 컨트롤러에서 DAO로 넘어왔음.");
		return my.selectList("Comment.all",vo);
	}

}
