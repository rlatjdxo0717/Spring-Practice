package com.mega.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO_Practice {
	
	public void create(MemoryVO bag) throws Exception {
		
		//1.커넥터 사용하겠다고 설정해야함.
		System.out.println("===============" + bag.getId());
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("1. 커넥터 사용 설정 성공. <br>");
		
		//2. db연결해보자! - shop, root, 1234
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		Connection con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. db연결 완료.");
		
		//3.sql문 객체로 만들기
		String sql = "insert into memory values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getId());
		ps.setString(2, bag.getCompany());
		ps.setString(3, bag.getIndate());
		ps.setString(4, bag.getUse());
		ps.setString(5, bag.getClassify());
		ps.setString(6, bag.getStandard());
		ps.setString(7, bag.getCapacity());
		ps.setString(8, bag.getPack());
		ps.setString(9, bag.getClock());
		ps.setString(10, bag.getRamtime());
		ps.setString(11, bag.getVoltage());
		ps.setString(12, bag.getHeatsink());
		ps.setString(13, bag.getFee());

		System.out.println("3. SQL문을 만들기 성공. <br>");
		
		//4.SQL문을 MySQL 서버로 전송함.
		ps.executeUpdate();
		con.commit();
		con.close();
		System.out.println("4. SQL문을 MySQL서버로 전송 성공. <br>");
	}
	
	public void delete(MemoryVO bag) throws Exception {
		System.out.println("전달받은 가방에 들어있는 데이터 db에 넣는 처리 하면 됨.");
		//1.커넥터 사용하겠다고 설정해야함.
		System.out.println("===============" + bag.getId());
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("1. 커넥터 사용 설정 성공. <br>");
		
		//2. db연결해보자! - shop, root, 1234
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		Connection con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. db연결 완료.");
		
		//3.sql문 객체로 만들기
		String sql = "delete from memory where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getId());

		System.out.println("3. SQL문을 제거 성공. <br>");
		
		//4.SQL문을 MySQL 서버로 전송함.
		ps.executeUpdate();
		con.commit();
		con.close();
		System.out.println("4. SQL문을 Oracle 서버로 전송 성공. <br>");
	}
}
