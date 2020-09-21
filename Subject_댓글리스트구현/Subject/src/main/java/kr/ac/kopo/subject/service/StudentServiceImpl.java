package kr.ac.kopo.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.subject.dao.StudentDao;
import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.util.Pager;

@Service
public class StudentServiceImpl implements StudentService {

@Autowired
StudentDao dao;
	
	@Override
	public boolean login(Student item) {
		Student student = dao.login(item);
		if(student == null)
			return false;
		
		item.setStuid(student.getStuid());
		item.setStudepart(student.getStudepart());				
		
		return true;
	}

	@Override
	public List<Student> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Student item) {
		dao.add(item);

	}

	@Override
	public Student item(int stuid) {
		
		return dao.item(stuid);
	}

	@Override
	public void update(Student item) {
		dao.update(item);

	}

	@Override
	public void delete(int stuid) {
		dao.delete(stuid);

	}

}
