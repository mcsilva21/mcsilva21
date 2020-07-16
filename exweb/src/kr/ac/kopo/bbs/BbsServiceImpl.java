package kr.ac.kopo.bbs;

import java.util.List;

public class BbsServiceImpl implements BbsService {
	private BbsDao bbsDao = new BbsDaoBatis();

	@Override
	public List<BbsVo> selectBbsList() {
		return bbsDao.selectBbsList();
	}

	@Override
	public BbsVo selectBbs(int bbsNo) {
		return bbsDao.selectBbs(bbsNo);
	}

	@Override
	public int insertBbs(BbsVo vo) {
		return bbsDao.insertBbs(vo);
	}

	@Override
	public int updateBbs(BbsVo vo) {
		return bbsDao.updateBbs(vo);
	}

	@Override
	public int delBbs(int bbsNo) {
		return bbsDao.delBbs(bbsNo);
	}
	

}
