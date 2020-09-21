package kr.ac.kopo.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.subject.dao.ReplyDao;
import kr.ac.kopo.subject.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	ReplyDao dao;

	@Override
	public List<Reply> readReply(int bbsid) {
		
		return dao.readReply(bbsid);
	}

	@Override
	public void writeReply(Reply item) {
		dao.writeReply(item);
		
	}

}
