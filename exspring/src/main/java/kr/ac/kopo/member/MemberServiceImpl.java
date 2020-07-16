package kr.ac.kopo.member;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

//이 객체를 서비스역할을 하는 객체로서  memberService 라는 이름으로 스피링에 등록
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Resource(name="memberDao")
	private MemberDao memberDao;
		
	@Override
	public List<MemberVo> selectMemberList() {				
		return memberDao.selectMemberList();
	}

	@Override
	public MemberVo selectMember(String memId) {
		return memberDao.selectMember(memId);
	}

	@Override
	public int insertMember(MemberVo vo) {	
		return memberDao.insertMember(vo);
	}

	@Override
	public int updateMember(MemberVo vo) {	
		return memberDao.updateMember(vo);
	}

	@Override
	public int delMember(String memId) {	
		return memberDao.delMember(memId);
	}

	@Override
	public MemberVo selectLoginMember(MemberVo memberVo) {		
		return memberDao.selectLoginMember(memberVo);
	}

	@Override
	public int selectCount() {
		return memberDao.selectCount();
	}
	

}
