package bookshop.com.yy.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookshop.com.yy.bookrepository.BookRepository;
import bookshop.com.yy.bookrepository.OrderInfoRepository;
import bookshop.com.yy.entity.Book;
import bookshop.com.yy.entity.OrderInfo;
@Service
public class OrderInfoServiceImp implements OrderInfoService{
@Autowired
	private OrderInfoRepository orderInfoRepository;
@Autowired
private BookRepository bookRepository;
	@Override
	public Map<String,Object> findAllPidByOrderid(String orderid) {
		// TODO Auto-generated method stub
		List<OrderInfo> findAllByOrderid = orderInfoRepository.findAllByOrderid(orderid);
		List<Integer> bid=new ArrayList<Integer>();
		for(int i=0;i<findAllByOrderid.size();i++) {
			bid.add(findAllByOrderid.get(i).getPid());
		}
		List<Book> findAllById = bookRepository.findAllById(bid);
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("rows", findAllById);
		map.put("total",findAllByOrderid.size());
		return map;
	}

}
