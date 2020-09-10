package kr.ac.kopo.bookshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.bookshop.model.Book;
import kr.ac.kopo.bookshop.util.Pager;

@Repository
public class BookDaoImpl implements BookDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectOne("book.total", pager);
	}

	@Override
	public List<Book> list(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("book.list", pager);
	}

	@Override
	public void add(Book item) {
		sql.insert("book.add", item);

	}

	@Override
	public void updqte(Book item) {
		sql.update("book.update",item); 

	}

	@Override
	public void delete(int bookid) {
	sql.delete("book.delete",bookid);
	}

	@Override
	public Book item(int bookid) {
		
		return sql.selectOne("book.item", bookid);
	}

}
