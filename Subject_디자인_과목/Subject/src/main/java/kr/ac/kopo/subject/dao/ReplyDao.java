package kr.ac.kopo.subject.dao;

import java.util.List;

import kr.ac.kopo.subject.model.Reply;

public interface ReplyDao {

	//댓글 읽기
	List<Reply> readReply(int bbsid);
	//댓글 쓰기
	void writeReply(Reply item);
	//댓글 조회
	Reply readReplySelect(int repno);
	//댓글 수정
	void updateReply (Reply item);
	//댓글 삭제
	void deleteReply (int repno);



	
}
