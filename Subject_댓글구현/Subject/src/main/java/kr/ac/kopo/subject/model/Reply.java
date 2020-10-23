package kr.ac.kopo.subject.model;

import java.util.Date;

public class Reply {
	
	int repno; //댓글번호
	int bbsid; //게시글번호
	int repwriter; //댓글작성자아이디
	String repcontent; // 내용
	Date repdate; // 작성 날짜
	
	
	String stuname;
	
	
	public int getRepno() {
		return repno;
	}
	public void setRepno(int repno) {
		this.repno = repno;
	}
	
	public int getBbsid() {
		return bbsid;
	}
	public void setBbsid(int bbsid) {
		this.bbsid = bbsid;
	}
	public int getRepwriter() {
		return repwriter;
	}
	public void setRepwriter(int repwriter) {
		this.repwriter = repwriter;
	}
	public String getRepcontent() {
		return repcontent;
	}
	public void setRepcontent(String repcontent) {
		this.repcontent = repcontent;
	}
	public Date getRepdate() {
		return repdate;
	}
	public void setRepdate(Date repdate) {
		this.repdate = repdate;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	
	
	
	

}
