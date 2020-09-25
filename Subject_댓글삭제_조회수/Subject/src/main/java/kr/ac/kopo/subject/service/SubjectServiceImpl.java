package kr.ac.kopo.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.subject.dao.SubjectDao;
import kr.ac.kopo.subject.model.Subject;
import kr.ac.kopo.subject.util.Pager;

@Service
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	SubjectDao dao;

	@Override
	public List<Subject> list(Pager pager) {
		int total = dao.total(pager);
				
				pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Subject item) {
		dao.add(item);
		
	}

	@Override
	public Subject item(int subid) {
		// TODO Auto-generated method stub
		return dao.item(subid);
	}

	@Override
	public void update(Subject item) {
		dao.update(item);
		
	}

	@Override
	public void delete(int subid) {
		dao.delete(subid);
		
	}


	

}
