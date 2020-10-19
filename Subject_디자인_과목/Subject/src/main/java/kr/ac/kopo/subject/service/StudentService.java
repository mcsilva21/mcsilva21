package kr.ac.kopo.subject.service;

import java.util.List;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.util.Pager;

public interface StudentService {

	boolean login(Student item);

	List<Student> list(Pager pager);

	void add(Student item);

	Student item(int stuid);

	void update(Student item);

	void delete(int stuid);


}
