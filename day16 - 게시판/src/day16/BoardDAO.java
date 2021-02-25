package day16;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.text.SimpleDateFormat;

public class BoardDAO {
	private Connection conn;
	private Context init;
	private DataSource ds;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;
	private SimpleDateFormat sdf;
	
	public BoardDAO() {
		try {
			init = (Context) new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		}catch(Exception e) {
			System.out.println("Exception : " + e);
		}finally {
			if(conn !=null) try {conn.close();}catch(Exception e) {}
		}
	}
	
	public ArrayList<BoardVO> getBoardList() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		sql = "select * from board";
		sdf = new SimpleDateFormat("yy-MM-dd");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setDate1(sdf.format(rs.getDate("date1")));
				vo.setIp(rs.getString("ip"));
				vo.setNum(rs.getInt("num"));
				vo.setPw(rs.getString("pw"));
				vo.setText(rs.getString("text"));
				vo.setTitle(rs.getString("title"));
				vo.setWriter(rs.getString("writer"));
				list.add(vo);
				}
			} catch(SQLException e) {
				System.out.println("DB 예외 발생 : " + e);
			} catch(Exception e) {
				System.out.println("일반 예외 발생 : " + e);
			} finally {
				if (rs != null) { try {rs.close();} catch(Exception e) {} }
				if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
				if (conn != null) { try {conn.close();} catch(Exception e) {} }
			}
		// list를 num을 기준으로 오름차순으로 정렬하는 코드 (선택정렬)
		
		for(int i = 0; i < list.size(); i++) {
			for (int j = i; j < list.size(); j++) {
				if (list.get(i).getNum() > list.get(j).getNum()) {
					BoardVO tmp = list.get(i);
					list.set(i, list.get(j));	// set => ArrayList에서 특정 인덱스에 값을 넣고 싶을 때
					list.set(j, tmp);
				}	// 참고, list.add(element)는 마지막 index에 값을 추가
			}
		}
		
		return list;
	}
	
	public BoardVO getBoard(int num) {
		
		sql = "select * from board where num=?";
		sdf = new SimpleDateFormat("yy-MM-dd");
		BoardVO vo = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				vo = new BoardVO();
				vo.setDate1(sdf.format(rs.getDate("date1")));
				vo.setIp(rs.getString("ip"));
				vo.setNum(rs.getInt("num"));
				vo.setPw(rs.getString("pw"));
				vo.setText(rs.getString("text"));
				vo.setTitle(rs.getString("title"));
				vo.setWriter(rs.getString("writer"));
				return vo;
				}
			} catch(SQLException e) {
				System.out.println("DB 예외 발생 : " + e);
			} catch(Exception e) {
				System.out.println("일반 예외 발생 : " + e);
			} finally {
				if (rs != null) { try {rs.close();} catch(Exception e) {} }
				if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
				if (conn != null) { try {conn.close();} catch(Exception e) {} }
			}
		return vo;
	}
	
	public int getMaxNum() {
		sql = "select max(num) from board";
		int max = 0;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				max = rs.getInt("max(num)");
				return max;
				}
			} catch(SQLException e) {
				System.out.println("DB 예외 발생 : " + e);
			} catch(Exception e) {
				System.out.println("일반 예외 발생 : " + e);
			} finally {
				if (rs != null) { try {rs.close();} catch(Exception e) {} }
				if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
				if (conn != null) { try {conn.close();} catch(Exception e) {} }
			}
		return max;
		
	}
	
	public int insertBoard(BoardVO vo) {
		int result = 0;
		sql = "insert into board values (?,?,?,?,?,?,?)";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getDate1());
			pstmt.setString(4, vo.getText());
			pstmt.setString(5, vo.getIp());
			pstmt.setString(6, vo.getPw());
			pstmt.setInt(7, vo.getNum());
			result = pstmt.executeUpdate();
			return result;
			
			} catch(SQLException e) {
				System.out.println("DB 예외 발생 : " + e);
			} catch(Exception e) {
				System.out.println("일반 예외 발생 : " + e);
			} finally {
				if (rs != null) { try {rs.close();} catch(Exception e) {} }
				if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
				if (conn != null) { try {conn.close();} catch(Exception e) {} }
			}
		return result;
	}
	
	public int updateBoard(BoardVO vo) {
		int result = 0;
		sql = "update board set title=?,writer=?,date1=?,text=?,ip=?,pw=? where num=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			sdf = new SimpleDateFormat("yy/MM/dd");		// 날짜의 형식을 지정하고
			pstmt.setString(3, sdf.format(new java.util.Date()));	// 문자열로 변경해서 전달
			pstmt.setString(4, vo.getText());
			pstmt.setString(5, vo.getIp());
			pstmt.setString(6, vo.getPw());
			pstmt.setInt(7, vo.getNum());
			result = pstmt.executeUpdate();
			return result;
			
			} catch(SQLException e) {
				System.out.println("DB 예외 발생 : " + e);
			} catch(Exception e) {
				System.out.println("일반 예외 발생 : " + e);
			} finally {
				if (rs != null) { try {rs.close();} catch(Exception e) {} }
				if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
				if (conn != null) { try {conn.close();} catch(Exception e) {} }
			}
		return result;
	}
	
	public int deleteBoard(int num) {
		int result = 0;
		sql = "delete board where num=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
		
			result = pstmt.executeUpdate();
			return result;
			
			} catch(SQLException e) {
				System.out.println("DB 예외 발생 : " + e);
			} catch(Exception e) {
				System.out.println("일반 예외 발생 : " + e);
			} finally {
				if (rs != null) { try {rs.close();} catch(Exception e) {} }
				if (pstmt != null) { try {pstmt.close();} catch(Exception e) {} }
				if (conn != null) { try {conn.close();} catch(Exception e) {} }
			}
		return result;
	}


}
