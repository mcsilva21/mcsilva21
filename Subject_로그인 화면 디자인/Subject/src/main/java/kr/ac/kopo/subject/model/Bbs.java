package kr.ac.kopo.subject.model;

import java.util.Date;

public class Bbs {
	
	int bbsid;
	String bbstitle;
	String bbscontent;
	int bbswriter;
	Date bbsdate;
	int bbscnt;
	
	String stuname;
	
	
	public int getBbsid() {
		return bbsid;
	}
	public void setBbsid(int bbsid) {
		this.bbsid = bbsid;
	}
	public String getBbstitle() {
		return bbstitle;
	}
	public void setBbstitle(String bbstitle) {
		this.bbstitle = bbstitle;
	}
	public String getBbscontent() {
		return bbscontent;
	}
	public void setBbscontent(String bbscontent) {
		this.bbscontent = bbscontent;
	}
	public int getBbswriter() {
		return bbswriter;
	}
	public void setBbswriter(int bbswriter) {
		this.bbswriter = bbswriter;
	}
	public Date getBbsdate() {
		return bbsdate;
	}
	public void setBbsdate(Date bbsdate) {
		this.bbsdate = bbsdate;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public int getBbscnt() {
		return bbscnt;
	}
	public void setBbscnt(int bbscnt) {
		this.bbscnt = bbscnt;
	}
	
	
	

}
