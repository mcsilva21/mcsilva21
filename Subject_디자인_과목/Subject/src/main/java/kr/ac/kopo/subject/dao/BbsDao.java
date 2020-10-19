package kr.ac.kopo.subject.dao;

import java.util.List;

import kr.ac.kopo.subject.model.Bbs;
import kr.ac.kopo.subject.util.Pager;

public interface BbsDao {

	void add(Bbs item);

	int total(Pager pager);

	List<Bbs> list(Pager pager);

	Bbs item(int bbsid);

	void update(Bbs item);

	void delete(int bbsid);
	
	void count(int bbsid);

}
