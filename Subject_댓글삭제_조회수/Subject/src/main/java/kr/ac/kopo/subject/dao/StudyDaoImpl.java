package kr.ac.kopo.subject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.subject.model.Study;
import kr.ac.kopo.subject.util.Pager;

@Repository
public class StudyDaoImpl implements StudyDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {
		
		return sql.selectOne("study.total", pager);
	}

	@Override
	public List<Study> list(Pager pager) {		
		return sql.selectList("study.list",pager);
	}

	@Override
	public Study item(int studyid) {
		
		return sql.selectOne("study.item",studyid);
	}

	@Override
	public void update(Study item) {
		sql.update("study.update",item);

	}

	@Override
	public void delete(int studyid) {
		sql.delete("study.delete",studyid);

	}

	@Override
	public void add(Study item) {
		sql.insert("study.add",item);

	}

}
