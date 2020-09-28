package kr.ac.kopo.subject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.service.StudentService;
import kr.ac.kopo.subject.util.Pager;

@Controller
@RequestMapping("/student")
public class StudnetController {
	final String path = "student/";

	@Autowired
	StudentService service;

	@GetMapping({"", "/list"})
	String list(Pager pager, Model model) {
		List<Student> list = service.list(pager);

		model.addAttribute("list", list);

		return path + "list";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Student item) {
		service.add(item);

		return "redirect:list";
	}

	@GetMapping("/{stuid}/update")
	String update(@PathVariable int stuid, Model model) {
		Student item = service.item(stuid);
		model.addAttribute("item", item);
		return path + "update";
	}
	
	@PostMapping("/{stuid}/update")
	String update(@PathVariable int stuid, Student item) {
		service.update(item);
		return "redirect:../list";
	}
	
	@GetMapping("/{stuid}/delete")
	String delete(@PathVariable int stuid) {
		service.delete(stuid);
		return "redirect:../list";
	}
}
