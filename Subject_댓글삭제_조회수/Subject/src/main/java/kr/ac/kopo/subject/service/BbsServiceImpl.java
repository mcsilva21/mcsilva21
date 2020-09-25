package kr.ac.kopo.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.subject.dao.BbsDao;
import kr.ac.kopo.subject.model.Bbs;
import kr.ac.kopo.subject.util.Pager;

@Service
public class BbsServiceImpl implements BbsService {
	
	@Autowired
	BbsDao dao;

	@Override
	public void add(Bbs item) {
		dao.add(item);

	}

	@Override
	public List<Bbs> list(Pager pager) {
		
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	
	}

	@Override
	public Bbs item(int bbsid) {
		
		return dao.item(bbsid);
	}

	@Override
	public void update(Bbs item) {
		dao.update(item);
		
	}

	@Override
	public void delete(int bbsid) {
		dao.delete(bbsid);
		
	}

	@Override
	public void count(int bbsid) {
		dao.count(bbsid);
		
	}

}
