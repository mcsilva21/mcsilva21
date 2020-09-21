package kr.ac.kopo.subject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.subject.model.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Reply> readReply(int bbsid) {
		
		return sql.selectList("reply.readReply",bbsid);
	}

	@Override
	public void writeReply(Reply item) {
	sql.insert("reply.writeReply",item);
		
	}





}
