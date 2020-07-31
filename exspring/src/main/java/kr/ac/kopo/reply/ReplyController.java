package kr.ac.kopo.reply;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.member.MemberVo;

@Controller
public class ReplyController {
	
	@Resource
	private ReplyService replyService;
	
	
	@RequestMapping("/relpy/add.do")
	@ResponseBody
	public Map<String, Object> add(ReplyVo vo,HttpSession session) {
		MemberVo loginVo = (MemberVo) session.getAttribute("loginUser");
		vo.setRepWriter(loginVo.getMemId());
		
		int num = replyService.insert(vo);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("result",num);
		
		return map; //{result : 0}
	}
	@RequestMapping("relpy/list.do")
	@ResponseBody
	public List<ReplyVo> list(int repBbsNo) {
		List<ReplyVo> replyList = replyService.selectList(repBbsNo);
		return replyList;
		
	}
	
}
