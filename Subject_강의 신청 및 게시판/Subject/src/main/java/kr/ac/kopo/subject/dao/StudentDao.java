package kr.ac.kopo.subject.dao;

import java.util.List;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.util.Pager;

public interface StudentDao {

	Student login(Student item);

	int total(Pager pager);

	List<Student> list(Pager pager);

	void add(Student item);

	Student item(int stuid);

	void update(Student item);

	void delete(int stuid);

}
