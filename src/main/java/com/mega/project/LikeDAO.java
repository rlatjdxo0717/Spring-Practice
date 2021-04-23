package com.mega.project;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LikeDAO {

	@Autowired
	SqlSessionTemplate my;

	public void like(LikeVO vo) throws Exception {
		
		LikeVO vo2 = my.selectOne("Like.select", vo);
		System.out.println("BLIKE 테이블 검색 완료");
		
		if ( vo2 == null ) {
			my.insert("Like.insert", vo);
			System.out.println("Like Mapper insert 실행됨");
			my.update("Like.count", vo);
			
		}else {
			my.update("Like.count2", vo);
			System.out.println("Like Mapper delete 실행됨");
			my.delete("Like.cancel", vo);
		}
		
	}

}