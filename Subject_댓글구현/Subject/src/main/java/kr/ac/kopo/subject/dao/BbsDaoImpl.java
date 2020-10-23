package kr.ac.kopo.subject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.subject.model.Bbs;
import kr.ac.kopo.subject.util.Pager;
@Repository
public class BbsDaoImpl implements BbsDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void add(Bbs item) {
		sql.insert("bbs.add",item);

	}

	@Override
	public int total(Pager pager) {
		
		return sql.selectOne("bbs.total",pager);
	}

	@Override
	public List<Bbs> list(Pager pager) {
		
		return sql.selectList("bbs.list",pager);
	}

	@Override
	public Bbs item(int bbsid) {
		
		return sql.selectOne("bbs.item",bbsid);
	}

	@Override
	public void update(Bbs item) {
		sql.update("bbs.update",item);
		
	}

	@Override
	public void delete(int bbsid) {
		sql.delete("bbs.delete",bbsid);
		
	}

	@Override
	public void count(int bbsid) {
		sql.update("bbs.count",bbsid);
		
	}

}
