package kr.ac.kopo.subject.model;

import java.util.Date;
import java.util.List;

public class Study {
	
	int studyid;
	int stuid;
	int studypoint;
	Date studydate;
	
	String stuname;
	
	List<Detail> detail;
	
	public int getStudyid() {
		return studyid;
	}
	public void setStudyid(int studyid) {
		this.studyid = studyid;
	}

	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public int getStudypoint() {
		return studypoint;
	}
	public void setStudypoint(int studypoint) {
		this.studypoint = studypoint;
	}
	public Date getStudydate() {
		return studydate;
	}
	public void setStudydate(Date studydate) {
		this.studydate = studydate;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public List<Detail> getDetail() {
		return detail;
	}
	public void setDetail(List<Detail> detail) {
		this.detail = detail;
	}
	
	
	
	

}
