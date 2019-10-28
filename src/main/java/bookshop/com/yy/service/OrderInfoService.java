package bookshop.com.yy.service;

import java.util.List;
import java.util.Map;

import bookshop.com.yy.entity.Book;
import bookshop.com.yy.entity.OrderInfo;

public interface OrderInfoService {
	/**
	 * 根据订单编号查询商品
	 * @param orderid
	 * @return
	 */
Map<String,Object> findAllPidByOrderid(String orderid);
}
