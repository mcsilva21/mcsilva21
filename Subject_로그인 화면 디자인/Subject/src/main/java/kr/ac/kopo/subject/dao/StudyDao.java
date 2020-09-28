package kr.ac.kopo.subject.dao;

import java.util.List;

import kr.ac.kopo.subject.model.Study;
import kr.ac.kopo.subject.util.Pager;

public interface StudyDao {

	int total(Pager pager);

	List<Study> list(Pager pager);

	Study item(int studyid);

	void update(Study item);

	void delete(int studyid);

	void add(Study item);

}
