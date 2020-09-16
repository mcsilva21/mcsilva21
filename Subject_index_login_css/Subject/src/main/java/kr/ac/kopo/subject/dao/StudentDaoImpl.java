package kr.ac.kopo.subject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.util.Pager;

@Repository
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public Student login(Student item) {
		
		return sql.selectOne("student.login", item);
	}

	@Override
	public int total(Pager pager) {
		
		return sql.selectOne("student.total",pager);
	}

	@Override
	public List<Student> list(Pager pager) {
		
		return sql.selectList("student.list",pager);
	}

	@Override
	public void add(Student item) {
		sql.insert("student.add",item);

	}

	@Override
	public Student item(int stuid) {
		
		return sql.selectOne("student.item",stuid);
	}

	@Override
	public void update(Student item) {
		sql.update("student.update",item);

	}

	@Override
	public void delete(int stuid) {
	sql.delete("student.delete",stuid);

	}

}
