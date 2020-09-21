package kr.ac.kopo.subject.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.model.Study;
import kr.ac.kopo.subject.model.Subject;
import kr.ac.kopo.subject.util.Pager;

public interface StudyService {

	List<Study> list(Pager pager);

	Study item(int studyid);

	void update(Study item);

	void delete(int studyid);

	void add(Study item);

	void study(Student student, Map<Integer, Subject> cart);

}
