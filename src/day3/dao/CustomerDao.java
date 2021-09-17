package day3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import day3.dto.Customer;
import util.MySQLConnectionUtil;

public class CustomerDao {
	private static CustomerDao dao = new CustomerDao();
	private CustomerDao() {;}
	public static CustomerDao getInstance() {
		return dao;
	}
	
	public void insert(Customer cus) {
		String sql="insert into customer(name,password,email,addr,gender,age,hobby)\r\n" + 
				"values (?,?,?,?,?,?,?)";
		Connection conn = MySQLConnectionUtil.connect();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//? 기호에 들어갈 값의 바인딩. -> mybatis 라이브러리를 사용해서 dto 클래스와 자동매핑(mapping)
			pstmt.setNString(1, cus.getName());
			pstmt.setNString(2, cus.getPassword());
			pstmt.setNString(3, cus.getEmail());
			pstmt.setNString(4, cus.getAddr());
			pstmt.setNString(5, cus.getGender());
			pstmt.setInt(6, cus.getAge());
			pstmt.setNString(7, cus.getHobby());
			
			pstmt.execute();
		} catch (SQLException e) {
			try {
				pstmt.close();
			} catch (SQLException e1) {
			}
			MySQLConnectionUtil.close(conn);
		}
	}
	
	
}
