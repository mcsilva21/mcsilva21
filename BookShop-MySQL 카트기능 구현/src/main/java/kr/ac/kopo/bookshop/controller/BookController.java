package kr.ac.kopo.bookshop.controller;

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

import kr.ac.kopo.bookshop.model.Book;
import kr.ac.kopo.bookshop.service.BookService;
import kr.ac.kopo.bookshop.util.Pager;

@Controller
@RequestMapping("/book")
public class BookController {
	final String path = "book/";
	
	@Autowired
	BookService service;
	
	@GetMapping("/order")
	String order(HttpSession session) {
		return path + "list";
	}
	
	@GetMapping("/cart")
	String cart(Integer bookid, HttpSession session) {
		@SuppressWarnings("uncheked")
		Map<Integer, Book> cart = (Map<Integer, Book>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Integer, Book>();
			
			session.setAttribute("cart", cart);
		}
			
		if(bookid != null) {
			
		Book item=service.item(bookid);
		 cart.put(bookid, item);
		 
		}
		
		return path + "cart";
	}
	
	@GetMapping("/dummy")
	String dummy() {
		service.dummy();
			return "redirect:list";		
	}
	
	@GetMapping("/init")
	String init() {
		service.init();
			return "redirect:list";
		
	}
	
	
	@GetMapping({"","/list"})
	String list(Model model, Pager pager) {
		
		List<Book> list = service.list(pager);
		
		model.addAttribute("list" , list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		return "add";
	}

	@PostMapping("/add")
	String add(Book item) {
		service.add(item);
		return "redirect:list";
	}
	
	@GetMapping("{bookid}/update")
	String update(int bookid, Model model) {
	Book item = service.item(bookid);
	
	model.addAttribute("item", item);
	
	return path + "update";
	}
	
	@PostMapping("/{bookid}/update")
	String update(@PathVariable int bookid, Book item) {
		service.update(item);
		
		return "redirect:../list";
	}
	@GetMapping("{bookid}/delete")
	String delete(@PathVariable int bookid) {
		service.delete(bookid);
		
		return "redirect:../list";
	}
	
}


