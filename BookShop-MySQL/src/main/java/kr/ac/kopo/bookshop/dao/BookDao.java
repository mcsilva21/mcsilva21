package kr.ac.kopo.bookshop.dao;

import java.util.List;

import kr.ac.kopo.bookshop.model.Book;
import kr.ac.kopo.bookshop.util.Pager;

public interface BookDao {

	int total(Pager pager);

	List<Book> list(Pager pager);

	void add(Book item);

	void updqte(Book item);

	void delete(int bookid);

	Book item(int bookid);

}