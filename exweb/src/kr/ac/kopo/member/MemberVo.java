package kr.ac.kopo.member;

//일반적으로 데이터베이스 테이블의 레코드(row) 1개를 저장할 수 있는 VO클래스를 정의
public class MemberVo {
	private String memId;
	private String memPass;
	private String memName;
	private int memPoint;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPass() {
		return memPass;
	}
	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public int getMemPoint() {
		return memPoint;
	}
	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}

}
