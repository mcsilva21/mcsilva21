package kr.ac.kopo.subject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.service.StudentService;

@Controller
public class RootController {

	@Autowired
	StudentService service;

	@GetMapping("/")
	String index() {
		return "index";
	}

	@GetMapping("/login")
	String login() {
		return "login";
	}

	@PostMapping("/login")
	String login(Student item, HttpSession session) {
		if(service.login(item)) {
			session.setAttribute("user", item);
			
			return "redirect:/";
		}
		
		return"login";
	}
	
	@GetMapping("logout")
	String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
}
