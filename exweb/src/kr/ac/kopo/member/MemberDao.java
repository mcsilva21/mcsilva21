package kr.ac.kopo.member;

import java.util.ArrayList;
import java.util.List;

public interface MemberDao {

	List<MemberVo> selectMemberList();

	MemberVo selectMember(String memId);

	int insertMember(MemberVo vo);

	int updateMember(MemberVo vo);

	int delMember(String memId);

	MemberVo selectLoginMember(MemberVo memberVo);

}