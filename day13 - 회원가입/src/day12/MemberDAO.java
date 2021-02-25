package day12;
import java.sql.*;
import java.util.ArrayList;

import day12.MemberVO;

public class MemberDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "scott";
	private String pass = "tiger";
	private String sql;
	
	public MemberDAO() {
		url = "jdbc:oracle:thin:@localhost:1521:xe";
		user = "scott";
		pass = "tiger";
	}
	
	public MemberVO getMember(String type, String search) {
		MemberVO m = null;
		sql = "select * from member where ";
		sql += type + "='" + search + "'";
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {				
				m = new MemberVO();
				m.setAge(rs.getString("age"));
				m.setGender(rs.getString("gender"));
				m.setUserid(rs.getString("userid"));
				m.setUsername(rs.getString("username"));
				m.setUserpw(rs.getString("userpw"));
				
				return m;
			}
			
		}catch (SQLException e) {
			System.out.println("DAO 내부 SQL예외 발생 !!");
			System.out.println(e);
		}catch (Exception e) {
			System.out.println("DAO 내부 일반 예외 발생 !!");
			System.out.println(e);
		}finally {
			if(rs!=null) { try{rs.close();} catch (Exception e) {} }
			if(stmt!=null) { try{pstmt.close();} catch (Exception e) {} }
			if(conn!=null) { try{conn.close();} catch (Exception e) {} }
		}
		return m;
		
	}
	public MemberVO getMember(String id) {
		MemberVO m = null;
		sql = "select * from member where userid =?";	// printf의 서식문자와 같은 역할
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pass);
//			stmt = conn.createStatement();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
//			pstmt.setString(2, "넣고싶은값");	물음표가 두개라면 
			// 1번째 물음표에 id값을 대입하여 쿼리문을 준비한다
			rs = pstmt.executeQuery();
			
			while(rs.next()) {				
				m = new MemberVO();
				m.setAge(rs.getString("age"));
				m.setGender(rs.getString("gender"));
				m.setUserid(rs.getString("userid"));
				m.setUsername(rs.getString("username"));
				m.setUserpw(rs.getString("userpw"));
				return m;
			}
			
		}catch (SQLException e) {
			System.out.println("DAO 내부 SQL예외 발생 !!");
			System.out.println(e);
		}catch (Exception e) {
			System.out.println("DAO 내부 일반 예외 발생 !!");
			System.out.println(e);
		}
		finally {
			if(rs!=null) { try{rs.close();} catch (Exception e) {} }
			if(stmt!=null) { try{pstmt.close();} catch (Exception e) {} }
			if(conn!=null) { try{conn.close();} catch (Exception e) {} }
		}
		return m;
		
	}
	
	public int InsertMember(MemberVO newMember) {
		sql = "insert into member values (?,?,?,?,?)";
		
		int result = 0;
		try {
			conn = DriverManager.getConnection(url, user, pass);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newMember.getUserid());
			pstmt.setString(2, newMember.getUserpw());
			pstmt.setString(3, newMember.getUsername());
			pstmt.setString(4, newMember.getAge());
			pstmt.setString(5, newMember.getGender());
			result = pstmt.executeUpdate();
			
			return result;
			
		
	}catch (SQLException e) {
		System.out.println("DAO 내부 SQL예외 발생 !!");
		System.out.println(e);
	}catch (Exception e) {
		System.out.println("DAO 내부 일반 예외 발생 !!");
		System.out.println(e);
	}finally {
		if(rs!=null) { try{rs.close();} catch (Exception e) {} }
		if(stmt!=null) { try{pstmt.close();} catch (Exception e) {} }
		if(conn!=null) { try{conn.close();} catch (Exception e) {} }
	}
	return result;
	
	}
	
	public int RemoveMember(MemberVO Member) {
		return 0;
	}
	
	public ArrayList<MemberVO> getMemberList() {
		ArrayList <MemberVO> list = new ArrayList<MemberVO>();	// 비어있는 ㅣ스트 생성
		MemberVO m; // VO 참조변수만 생성
		sql = "select * from member";	// 모든 회원 정보를 받아온다
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pass);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
		
			while (rs.next()) {		// 한 줄 받아 올 때마다
				m = new MemberVO();	// 새로운 객체를 생성하여
				m.setAge(rs.getString("age"));	// 각 필드 정보를 vo에 담고
				m.setGender(rs.getString("gender"));
				m.setUserid(rs.getString("userid"));
				m.setUsername(rs.getString("username"));
				m.setUserpw(rs.getString("userpw"));
				list.add(m);	// 리스트에 vo를 추가한다
			}
		}catch (SQLException e) {
			System.out.println("DAO 내부 SQL예외 발생 !!");
			System.out.println(e);
		}catch (Exception e) {
			System.out.println("DAO 내부 일반 예외 발생 !!");
			System.out.println(e);
		}finally {
			if(rs!=null) { try{rs.close();} catch (Exception e) {} }
			if(stmt!=null) { try{pstmt.close();} catch (Exception e) {} }
			if(conn!=null) { try{conn.close();} catch (Exception e) {} }
		} return list;
	}
}
