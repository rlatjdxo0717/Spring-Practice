package com.mega.mvc39;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductDAO {

	//myBatis싱글톤 주소를 주입!
	@Autowired
	SqlSessionTemplate my;
	
	public ProductVO read(ProductVO bag) {
		ProductVO vo3 = my.selectOne("product.select", bag);
		return vo3;
	}

}
