package com.mega.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component //MemberDAO dao = new MemberDAO(); 이걸 한번만 딱 하게 해주는 장치, 한개만 객체 생성, 싱글톤!
public class BBSDAO {
	
	//myBatis 싱글톤 주소를 주입!
	@Autowired
	SqlSessionTemplate my;
	
	public List<BBSVO> all() {
		return my.selectList("bbs.all");
	}
	
	public void create(BBSVO bag) throws Exception {
		//myBatis에 시킬 거에요.
		my.insert("bbs.insert", bag);
	}
	
	public BBSVO read(BBSVO bag) {
		return my.selectOne("bbs.select", bag);
	}
	
	public BBSVO login(BBSVO bag) {
		return my.selectOne("bbs.login", bag);
	}
	
	public List<BBSVO> all2(){
		return my.selectList("bbs.all2");
	}
		/*
		 * System.out.println("전달받은 가방에 들어있는 데이터 db에 넣는 처리 하면 됨."); //1.커넥터 사용하겠다고
		 * 설정해야함. System.out.println("===============" + bag.getId());
		 * Class.forName("oracle.jdbc.OracleDriver");
		 * System.out.println("1. 커넥터 사용 설정 성공. <br>");
		 * 
		 * //2. db연결해보자! - shop, root, 1234 String url =
		 * "jdbc:oracle:thin:@localhost:1521:xe";
		 * 
		 * Connection con = DriverManager.getConnection(url, "root", "1234");
		 * System.out.println("2. db연결 완료.");
		 * 
		 * //3.sql문 객체로 만들기 String sql = "insert into MEMBER values (?, ?, ?, ?)";
		 * PreparedStatement ps = con.prepareStatement(sql); ps.setString(1,
		 * bag.getId()); ps.setString(2, bag.getPw()); ps.setString(3, bag.getName());
		 * ps.setString(4, bag.getTel()); System.out.println("3. SQL문을 만들기 성공. <br>");
		 * 
		 * //4.SQL문을 MySQL 서버로 전송함. ps.executeUpdate(); con.commit(); con.close();
		 * System.out.println("4. SQL문을 MySQL서버로 전송 성공. <br>");
		 */
	
	/*
	 * public void delete(MemberVO bag) throws Exception {
	 * System.out.println("전달받은 가방에 들어있는 데이터 db에 넣는 처리 하면 됨."); //1.커넥터 사용하겠다고
	 * 설정해야함. System.out.println("===============" + bag.getId());
	 * Class.forName("oracle.jdbc.OracleDriver");
	 * System.out.println("1. 커넥터 사용 설정 성공. <br>");
	 * 
	 * //2. db연결해보자! - shop, root, 1234 String url =
	 * "jdbc:oracle:thin:@localhost:1521:xe";
	 * 
	 * Connection con = DriverManager.getConnection(url, "root", "1234");
	 * System.out.println("2. db연결 완료.");
	 * 
	 * //3.sql문 객체로 만들기 String sql = "delete from MEMBER where id = ?";
	 * PreparedStatement ps = con.prepareStatement(sql); ps.setString(1,
	 * bag.getId());
	 * 
	 * System.out.println("3. SQL문을 제거 성공. <br>");
	 * 
	 * //4.SQL문을 MySQL 서버로 전송함. ps.executeUpdate(); con.commit(); con.close();
	 * System.out.println("4. SQL문을 Oracle 서버로 전송 성공. <br>"); }
	 */
}
