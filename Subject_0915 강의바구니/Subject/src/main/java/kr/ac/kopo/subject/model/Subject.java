package kr.ac.kopo.subject.model;

public class Subject {
	
	int subid;
	String subname;
	String subpro;
	
	int amount =1;
	int studypoint=3;
	
	
	
	public int getSubid() {
		return subid;
	}
	public void setSubid(int subid) {
		this.subid = subid;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getSubpro() {
		return subpro;
	}
	public void setSubpro(String subpro) {
		this.subpro = subpro;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getStudypoint() {
		return studypoint;
	}
	public void setStudypoint(int studypoint) {
		this.studypoint = studypoint;
	}
	
	
	
	
	

}
