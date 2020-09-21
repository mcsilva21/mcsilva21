package kr.ac.kopo.subject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.subject.model.Bbs;
import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.service.BbsService;
import kr.ac.kopo.subject.util.Pager;

@Controller
@RequestMapping("/bbs")
public class BbsController {
	final String path = "bbs/";
	
	@Autowired
	BbsService service;
	
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
	
	@GetMapping("/{bbsid}/view")
	String view(@PathVariable int bbsid , Model model) {
		Bbs item = service.item(bbsid);
		model.addAttribute("item",item);
		return path + "view";
	}
}
