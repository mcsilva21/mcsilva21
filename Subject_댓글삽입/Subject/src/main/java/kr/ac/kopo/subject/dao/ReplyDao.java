package kr.ac.kopo.subject.dao;

import java.util.List;

import kr.ac.kopo.subject.model.Reply;

public interface ReplyDao {

	//댓글 읽기
	List<Reply> readReply(int bbsid);

	void writeReply(Reply item);
	



	
}
