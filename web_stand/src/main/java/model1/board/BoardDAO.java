package model1.board;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO  extends JDBConnect {
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	public int selectCount(Map<String, Object> map) {
		
		int totalCount = 0;
		
		String sql = "select count(*) from board";
		if(map.get("searchWord")!= null) {
			sql += "where" + map.get("searchField")+ " "
				+ "like '%" + map.get("searchWord")+"%'";	
		}
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			totalCount = rs.getInt(1);
		} catch (SQLException e) {
			System.out.println("게시물 수를 구하는 중 예외 발생");
			System.out.println(e.getMessage());
		}
		
		return totalCount;
	}
	
	//검색 조건에 맞는 게시물 목록을 반환합니다.
	public List<BoardDTO> selectList(Map<String, Object> map) {
		List<BoardDTO> bbs = new Vector<BoardDTO>(); //결과 담을 변수
		
		String sql = "select * from board";
		if(map.get("searchWord") != null) {
			sql += "where " + map.get("searchField")+" "
					+ "like'%"+ map.get("searchWord")+"%'";
		}
		sql +="order by num desc";
		
		try {
		
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("titlt"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				
				bbs.add(dto);
			}
		} catch (SQLException e) {
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return bbs;
		
	}
}











