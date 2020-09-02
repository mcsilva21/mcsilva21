package kr.ac.kopo.bookshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.bookshop.model.Book;
import kr.ac.kopo.bookshop.service.BookService;
import kr.ac.kopo.bookshop.util.Pager;


@RestController
@RequestMapping("/api")
public class ApiController {
	
	@Autowired
	BookService serivce;
	
	//@ResponseBody
	@PostMapping
	List<Book> list(@RequestBody Pager pager){
		return serivce.list(pager);
	}

	@DeleteMapping
	void delete(@RequestBody Book item) {
		serivce.delete(item.getBookid());
	}
	
	@PutMapping
	void add(@RequestBody Book item) {
		serivce.add(item);
	}
	
	@PatchMapping
	void update(@RequestBody Book item) {
		serivce.update(item);
	}

	
}
