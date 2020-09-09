package kr.ac.kopo.bookshop.service;

import java.util.List;

import kr.ac.kopo.bookshop.model.Orders;
import kr.ac.kopo.bookshop.util.Pager;

public interface OrdersService {

	List<Orders> list(Pager pager);

	void add(Orders item);

	void update(Orders item);

	void delete(int orderid);

	Orders item(int orderid);

}
