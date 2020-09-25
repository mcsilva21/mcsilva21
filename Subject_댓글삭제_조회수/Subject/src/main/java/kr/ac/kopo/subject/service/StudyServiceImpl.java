package kr.ac.kopo.subject.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.subject.dao.DetailDao;
import kr.ac.kopo.subject.dao.StudyDao;
import kr.ac.kopo.subject.model.Detail;
import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.model.Study;
import kr.ac.kopo.subject.model.Subject;
import kr.ac.kopo.subject.util.Pager;

@Service 
public class StudyServiceImpl implements StudyService {
	
	@Autowired
	StudyDao dao;
	
	@Autowired
	DetailDao daoDetail;

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

	@Override
	@Transactional
	public void study(Student student, Map<Integer, Subject> cart) {
		Study item = new Study();
		
		int studypoint=0;
		for(Integer subid : cart.keySet()) {
			Subject subject = cart.get(subid);
			
			studypoint += subject.getSubpoint() * subject.getAmount();
		}
		
		item.setStuid(student.getStuid());
		item.setStudypoint(studypoint);
		
		dao.add(item);
		
		for(Integer subid : cart.keySet()) {
			Subject subject = cart.get(subid);
			
			Detail detail = new Detail();
			
			detail.setStudyid(item.getStudyid());
			detail.setSubid(subject.getSubid());
			detail.setAmount(subject.getAmount());
			
			daoDetail.add(detail);
		}
		
	}

}
