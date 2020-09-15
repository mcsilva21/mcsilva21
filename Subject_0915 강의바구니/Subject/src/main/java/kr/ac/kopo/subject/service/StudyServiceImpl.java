package kr.ac.kopo.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.subject.dao.StudyDao;
import kr.ac.kopo.subject.model.Study;
import kr.ac.kopo.subject.util.Pager;

@Service 
public class StudyServiceImpl implements StudyService {
	
	@Autowired
	StudyDao dao;

	@Override
	public List<Study> list(Pager pager) {
		
		int total=dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public Study item(int studyid) {
		
		return dao.item(studyid);
	}

	@Override
	public void update(Study item) {
		dao.update(item);

	}

	@Override
	public void delete(int studyid) {
		dao.delete(studyid);

	}

	@Override
	public void add(Study item) {
		dao.add(item);

	}

}
