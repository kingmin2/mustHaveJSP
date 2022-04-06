package model1.board;

import java.sql.Date;

public class BoardDTO {
	//멤버변수선언
	private String num;
	private String title;
	private String content;
	private String id;
	private Date postdate;
	private String visitcount;
	private String name;
	
	
	public String getNum() {
		return num;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getId() {
		return id;
	}
	public Date getPostdate() {
		return postdate;
	}
	public String getVisitcount() {
		return visitcount;
	}
	public String getName() {
		return name;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}
	public void setVisitcount(String visitcount) {
		this.visitcount = visitcount;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
