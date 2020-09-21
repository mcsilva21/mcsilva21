package kr.ac.kopo.subject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.subject.model.Study;
import kr.ac.kopo.subject.service.StudyService;
import kr.ac.kopo.subject.util.Pager;

@Controller
@RequestMapping("/study")
public class StudyController {
	final String path = "study/";

	@Autowired
	StudyService service;
	
	
	@GetMapping("/{studyid}/view")
	String view(@PathVariable int studyid, Model model) {
		Study item = service.item(studyid);
		
		model.addAttribute("item",item);
		
		return path + "view";
	}
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Study> list = service.list(pager);
		model.addAttribute("list", list);
		return path + "list";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Study item) {
		service.add(item);
		return "redirect:list";
	}

	@GetMapping("/{studyid}/update")
	String update(@PathVariable int studyid, Model model) {
		Study item = service.item(studyid);

		model.addAttribute("item", item);

		return path + "update";
	}

	@PostMapping("{/{studyid}/update")
	String update(@PathVariable int studyid, Study item) {

		item.setStudyid(studyid);

		service.update(item);

		return "redirect:../list";

	}

	@GetMapping("/{studyid}/delete")
	String delete(@PathVariable int studyid) {
		service.delete(studyid);

		return "redirect:../list";

	}
}
