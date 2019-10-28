package bookshop.com.yy.service;

import java.util.Map;

public interface OrderService {
	/**
	 * 获取订单
	 * @return
	 */
public Map<String, Object> getOrd(Integer page,Integer rows,String orderid,String startOrdertime,String endOrdertime ,String signaturestatus,String deliverystatus);
}
