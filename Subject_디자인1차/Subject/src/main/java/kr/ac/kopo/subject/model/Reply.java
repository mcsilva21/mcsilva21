package kr.ac.kopo.subject.model;

import java.util.Date;

public class Reply {
	
	int repno;
	int bbsno;
	int repwriter;
	String repcontent;
	Date repdate;
	
	
	public int getRepno() {
		return repno;
	}
	public void setRepno(int repno) {
		this.repno = repno;
	}
	public int getBbsno() {
		return bbsno;
	}
	public void setBbsno(int bbsno) {
		this.bbsno = bbsno;
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
	
	
	
	

}
