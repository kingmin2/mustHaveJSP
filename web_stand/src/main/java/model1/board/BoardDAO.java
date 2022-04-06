package model1.board;

import java.sql.SQLException;
import java.util.Map;

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
}
