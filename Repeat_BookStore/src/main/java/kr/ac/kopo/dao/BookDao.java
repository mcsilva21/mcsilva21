package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Book;

public interface BookDao {

	List<Book> list();
	
	List<Book> list_ch();

	void delete(int bookid);

	void add(Book item);

	Book item(int bookid);

	void update(Book item);

}
