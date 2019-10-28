package bookshop.com.yy.whale;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import bookshop.com.yy.service.OrderService;

@RestController
@CrossOrigin
public class OrderController {
	@Autowired
	private OrderService orderService;

	@PostMapping("/getOrd")
	public Map<String, Object> getOrder(Integer page, Integer rows, String orderid, String startOrdertime,
			String endOrdertime, String signaturestatus, String deliverystatus) {
		return orderService.getOrd(page, rows, orderid, startOrdertime, endOrdertime, signaturestatus, deliverystatus);
	};
}
