package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.model.Book;
import kr.ac.kopo.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	final String path = "book/";

	@Autowired
	BookService service;

	@RequestMapping("/list")
	String list(Model model) {
		List<Book> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}
	
	
	@RequestMapping("/ch")
	String list_ch(Model model) {
		List<Book> list_ch = service.list_ch();

		model.addAttribute("list_ch", list_ch);

		return path + "ch";
	}

	@RequestMapping("/delete")
	String delete(int bookid) {
		service.delete(bookid);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	String add() {
		return path + "add";
		
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	String add(Book item) {
		service.add(item);
		
		return "redirect:list";
						
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	String update(int bookid, Model model) {
		Book item = service.item(bookid);
		
		model.addAttribute("item",item);
		
		return path + "update";
		
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	String update(Book item) {
		service.update(item);
		return "redirect:list";
	}
	
	
}
