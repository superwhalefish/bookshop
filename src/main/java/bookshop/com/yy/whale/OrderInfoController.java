package bookshop.com.yy.whale;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import bookshop.com.yy.entity.Book;
import bookshop.com.yy.service.OrderInfoService;
import bookshop.com.yy.service.OrderService;

@RestController
@CrossOrigin
public class OrderInfoController {
	@Autowired
	private OrderInfoService orderInfoService;

	@PostMapping("/selectBookByOrderid")
	public Map<String, Object> getOrderInfo(String orderid) {
		return orderInfoService.findAllPidByOrderid(orderid);

	}
}
