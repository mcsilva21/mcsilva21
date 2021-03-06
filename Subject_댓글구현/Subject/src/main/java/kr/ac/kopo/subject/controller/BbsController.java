package kr.ac.kopo.subject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.subject.model.Bbs;
import kr.ac.kopo.subject.model.Reply;
import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.service.BbsService;
import kr.ac.kopo.subject.service.ReplyService;
import kr.ac.kopo.subject.util.Pager;

@Controller
@RequestMapping("/bbs")
public class BbsController {
	final String path = "bbs/";
	
	@Autowired
	BbsService service;
	
	@Autowired
	ReplyService replyservice;
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
		String add(Bbs item,HttpSession session) {
		
		Student student = (Student)session.getAttribute("user");
		item.setStuname(student.getStuname());
		service.add(item);
		return "redirect:list";
	}

	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Bbs> list = service.list(pager);
		model.addAttribute("list",list);
		return path +"list";
	}
	@GetMapping("/{bbsid}/update")
	String update(@PathVariable int bbsid, Model model) {
		Bbs item = service.item(bbsid);
		
		model.addAttribute("item",item);
		
		return path + "update";
	}
	
	@PostMapping("/{bbsid}/update")
	String update(@PathVariable int bbsid, Bbs item) {
		item.setBbsid(bbsid);
		service.update(item);
		return "redirect:../list";
	}
	
	@GetMapping("/{bbsid}/delete")
	String delete(@PathVariable int bbsid) {
		service.delete(bbsid);
		return "redirect:../list";
	}
	//글 상세보기 + 댓글 보기
	@GetMapping("/{bbsid}/view")
	String view(@PathVariable int bbsid , Model model) {
		Bbs item = service.item(bbsid);
		model.addAttribute("item",item);
		service.count(bbsid);
		
		List<Reply> repList = replyservice.readReply(bbsid);
		model.addAttribute("repList",repList);
		

		
		return path + "view";
	}
	
	@PostMapping("/{bbsid}/view")
	String view(@PathVariable int bbsid, Reply item) {
		item.setBbsid(bbsid);
		replyservice.writeReply(item);
		return "redirect:../list";
	}
	
	//댓글 작성
		@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
		public String replyWrite(int bbsid, Reply item,RedirectAttributes rttr,HttpSession session,HttpServletRequest request) throws Exception {
			System.out.println( bbsid );
//			Student student=(Student)session.getAttribute("user");
//			item.setStuname(student.getStuname());
			replyservice.writeReply(item);
			
			rttr.addAttribute("bno", item.getBbsid());
					
			return "redirect:/bbs/" + bbsid + "/view";
		}
		
		//댓글 삭제
		@RequestMapping(value="/{repno}/replyDelete", method = RequestMethod.GET)
		public String replyDeleteView(@PathVariable int repno,Model model,HttpServletRequest request) throws Exception {
							
			List<Reply> repList = replyservice.readReply(repno);
			model.addAttribute("repList",repList);
			
			replyservice.deleteReply(repno);
			
			String referer = request.getHeader("Referer");
		    return "redirect:"+ referer;
				
		}
		
		
		
	}