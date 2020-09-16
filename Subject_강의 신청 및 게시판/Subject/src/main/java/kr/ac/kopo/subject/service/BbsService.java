package kr.ac.kopo.subject.service;

import java.util.List;

import kr.ac.kopo.subject.model.Bbs;
import kr.ac.kopo.subject.util.Pager;

public interface BbsService {

	void add(Bbs item);

	List<Bbs> list(Pager pager);

	Bbs item(int bbsid);

	void update(Bbs item);

	void delete(int bbsid);

}
