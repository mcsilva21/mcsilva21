package kr.ac.kopo.subject.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.subject.model.Student;
import kr.ac.kopo.subject.model.Subject;
import kr.ac.kopo.subject.service.StudyService;
import kr.ac.kopo.subject.service.SubjectService;
import kr.ac.kopo.subject.util.Pager;

@Controller
@RequestMapping("/subject")
public class SubjectController {
	 final String path = "subject/";
	 
	 @Autowired
	 SubjectService service;
	 
	 @Autowired
	 StudyService serviceStudy;
	 
	 @GetMapping("/order")
	 String order(HttpSession session) {
		 @SuppressWarnings("unchecked")
			Map<Integer, Subject> cart = (Map<Integer, Subject>) session.getAttribute("cart");
			 if(cart == null) {
				 cart = new HashMap<Integer, Subject>();
				 session.setAttribute("cart", cart);
			 }
			 Student student =(Student) session.getAttribute("user");
			 
			 serviceStudy.study(student,cart);
			 
		return"redirect:list";
	 }
	 
	 @GetMapping("/cart")
	 String cart(Integer subid, HttpSession session) {		 		 		 		 
			 @SuppressWarnings("unchecked")
			Map<Integer, Subject> cart = (Map<Integer, Subject>) session.getAttribute("cart");
			 if(cart == null) {
				 cart = new HashMap<Integer, Subject>();
				 session.setAttribute("cart", cart);
			 }
			 if(subid != null) {
				 Subject item = service.item(subid);
				 
				 Subject subject = cart.get(subid);
				 
				 if(subject == null)				 
				 cart.put(subid, item);
				 
				 else subject.setAmount(subject.getAmount()+1);
		 }
	 return path + "cart";
	 }
	 
	 @GetMapping({"","/list"})
	 String list(Model model,Pager pager) {
		 List<Subject> list = service.list(pager);
		 
		 model.addAttribute("list",list);
		 
		 return path + "list";
	 }
	 
	 @GetMapping("/add")
	 String add() {
		 return path + "add";
	 }
	 
	 @PostMapping("/add")
	 String add(Subject item) {
		 service.add(item);
		
		 return "redirect:list";
	 }
	 
	 @GetMapping("/{subid}/update")
		String update(@PathVariable int subid, Model model) {
		Subject item = service.item(subid);
		
		model.addAttribute("item",item);
		
		return path + "update";
		}
		
		@PostMapping("/{subid}/update")
		String update(@PathVariable int subid, Subject item) {
			service.update(item);
			
		 return "redirect:../list";
		}
		@GetMapping("/{subid}/delete")
		String delete(@PathVariable int subid) {
			service.delete(subid);
			
			return "redirect:../list";
		}
}
