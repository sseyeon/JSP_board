package day16;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.util.ArrayList;

public class MemberDAO {
	private Connection conn;
	private Context init;
	private DataSource ds;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;
	
	public MemberDAO() {
		try {
			init = (Context) new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		}catch(Exception e) {
			System.out.println("Exception : " + e);
		}finally {
			if(conn !=null) try {conn.close();}catch(Exception e) {}
		}
	}
	
	public ArrayList<MemberVO> getMemberList() {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		try {
			String sql = "select * from member";
			conn = ds.getConnection();	// DB주소, 계정, 비번이 모두 Context.xml에 명시
			pstmt = conn.prepareStatement(sql);	
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setAge(rs.getString("age"));
				vo.setGender(rs.getString("gender"));
				vo.setUserid(rs.getString("userid"));
				vo.setUserpw(rs.getString("userpw"));
				vo.setUsername(rs.getString("username"));
				list.add(vo);
			}
		} catch(SQLException e) {
			System.out.println("DB 에외 발생 : " + e);
		} catch(Exception e) {
			System.out.println("일반 에외 발생 : " + e);
		} finally {
			if (rs != null) { try {rs.close();} catch(Exception e) {} }
			if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
			if (conn != null) { try {conn.close();} catch(Exception e) {} }
		}
		return list;
	}
	
}
