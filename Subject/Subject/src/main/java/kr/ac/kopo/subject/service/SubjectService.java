package kr.ac.kopo.subject.service;

import java.util.List;

import kr.ac.kopo.subject.model.Subject;
import kr.ac.kopo.subject.util.Pager;

public interface SubjectService {

	List<Subject> list(Pager pager);

	void add(Subject item);

	Subject item(int subid);

	void update(Subject item);

	void delete(int subid);

	

}
