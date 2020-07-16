package kr.ac.kopo.student;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudentDao {

	List<StudentVo> selectStudentList();
	
	StudentVo selectStudent(String stuNo);

	int deleteStudent(String stuNo);

	int insertStudent(StudentVo vo);

	int updateStudentVo(StudentVo vo);

}