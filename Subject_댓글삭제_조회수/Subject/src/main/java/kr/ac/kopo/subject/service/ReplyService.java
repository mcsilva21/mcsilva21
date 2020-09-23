package kr.ac.kopo.subject.service;

import java.util.List;

import kr.ac.kopo.subject.model.Reply;

public interface ReplyService {


	List<Reply> readReply(int bbsid);

	void writeReply(Reply item);
	
	Reply readReplySelect(int rno);
	
	void updateReply (Reply item);
	
	void deleteReply (int repno);

}
