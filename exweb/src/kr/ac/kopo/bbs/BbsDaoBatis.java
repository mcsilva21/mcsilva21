package kr.ac.kopo.bbs;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.ac.kopo.comm.MyBatisUtils;

public class BbsDaoBatis implements BbsDao {
	private SqlSessionFactory sqlSessionFactory = MyBatisUtils.getsSessionFactory();

	@Override
	public List<BbsVo> selectBbsList() {
		List<BbsVo> list =null;	
		try (SqlSession session = sqlSessionFactory.openSession()){
			list = session.selectList("kr.ac.kopo.bbs.BbsDao.selectBbsList");
		}		
		return list;
	}

	@Override
	public BbsVo selectBbs(int bbsNo) {
		BbsVo vo = null;
		try(SqlSession session = sqlSessionFactory.openSession()) {
			vo = session.selectOne("kr.ac.kopo.bbs.BbsDao.selectBbs",bbsNo);
		}
		return vo;
	}

	@Override
	public int insertBbs(BbsVo vo) {
		int num = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {// SQL문 실행을 위한 세션열기
			// SQL문 실행시 필요한 값(파라미터)이 있는 경우, 두번째 인자로 전달
			num = session.insert("kr.ac.kopo.bbs.BbsDao.insertBbs", vo);
			session.commit();
		}
		return num;
	}

	@Override
	public int updateBbs(BbsVo vo) {
		int num = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {			
			num = session.update("kr.ac.kopo.bbs.BbsDao.updateBbs", vo);
			session.commit();
		}
		return num;
	}

	@Override
	public int delBbs(int bbsNo) {
		int num = 0;
		try (SqlSession session = sqlSessionFactory.openSession()) {// SQL문 실행을 위한 세션열기
			// SQL문 실행시 필요한 값(파라미터)이 있는 경우, 두번째 인자로 전달
			num = session.delete("kr.ac.kopo.bbs.BbsDao.delBbs", bbsNo);
			session.commit();
		}
		return num;
	}

}
