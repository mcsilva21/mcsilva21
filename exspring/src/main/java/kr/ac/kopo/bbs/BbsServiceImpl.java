package kr.ac.kopo.bbs;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service("bbsService")
public class BbsServiceImpl implements BbsService {
	
	@Resource
	private BbsDao bbsDao;
	
	@Resource
	private AttachDao attachDao;
	
	String uploadDir = "C:/web/upload";// 업로드한 파일을 저장할 폴더

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
		int num = bbsDao.insertBbs(vo);
		

		List<MultipartFile> fileList = vo.getUpfileList();
		for (MultipartFile f : fileList) {
			System.out.println(f.getOriginalFilename() + ":" + f.getSize());
			//첨부파일이 없는 경우에는 첨부파일테이블 및 하드디스크에 
			//첨부파일을 저장하지 않도록 구현
			if(f.getSize() !=0 ) {
			//중복될 확률이 극히 낮은 임의의 문자열을 생성하여 저장할 파일명으로 사용
			String newName = UUID.randomUUID().toString();
			try {
			//파일 f를 uploadDir폴더 아래에  newName 이름의 파일로 저장(복사)
				f.transferTo(new File(uploadDir,newName));
				
				AttachVo attachVo = new AttachVo();
				attachVo.setAttOrgName(f.getOriginalFilename()); //원래파일명
				attachVo.setAttNewName(newName);//새파일명
				attachVo.setAttBbsNo(vo.getBbsNo());//첨부파일이 속한 게시글의 글번호
				attachDao.insertAttach(attachVo);
				
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			}		
		}		
		return num;
	}
	

	@Override
	public int updateBbs(BbsVo vo) {
		return bbsDao.updateBbs(vo);
	}

	@Override
	public int delBbs(int bbsNo) {
		return bbsDao.delBbs(bbsNo);
	}

	@Override
	public AttachVo selectAttach(int attNo) {		
		return attachDao.selectAttach(attNo);
	}

	@Override
	public File getAttachFile(AttachVo vo) {
		return new File(uploadDir,vo.getAttNewName());
	}


	

}
