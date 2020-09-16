package kr.ac.kopo.subject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.subject.model.Subject;
import kr.ac.kopo.subject.util.Pager;

@Repository
public class SubjectDaoImpl implements SubjectDao {

	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectOne("subject.total",pager);
	}

	@Override
	public List<Subject> list(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("subject.list",pager);
	}

	@Override
	public void add(Subject item) {
		sql.insert("subject.add",item);
		
	}

	@Override
	public Subject item(int subid) {
		// TODO Auto-generated method stub
		return sql.selectOne("subject.item",subid);
	}

	@Override
	public void update(Subject item) {
		sql.update("subject.update",item);
		
	}

	@Override
	public void delete(int subid) {
		sql.delete("subject.delete", subid);
		
	}
	
	
}
