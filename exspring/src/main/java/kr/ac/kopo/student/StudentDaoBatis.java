package kr.ac.kopo.student;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

//@Repository("studentDao")
public class StudentDaoBatis implements StudentDao {
	@Resource(name="sqlSession")
	private SqlSession session;
	
	@Override
	public List<StudentVo> selectStudentList() {	
		return session.selectList("kr.ac.kopo.student.StudentDao.selectStudentList");			
	}

	@Override
	public StudentVo selectStudent(String stuNo) {	
		return session.selectOne("kr.ac.kopo.student.StudentDao.selectStudent", stuNo);
	
	}

	@Override
	public int insertStudent(StudentVo vo) {
		return session.insert("kr.ac.kopo.student.StudentDao.insertStudent", vo);
	
	}

	@Override
	public int updateStudentVo(StudentVo vo) {	
		return session.update("kr.ac.kopo.student.StudentDao.updateStudentVo", vo);
	
	}
	
	@Override
	public int deleteStudent(String stuNo) {	
		return session.delete("kr.ac.kopo.student.StudentDao.deleteStudent", stuNo);
	}

}
