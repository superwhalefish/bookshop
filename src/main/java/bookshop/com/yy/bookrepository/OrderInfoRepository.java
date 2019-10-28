package bookshop.com.yy.bookrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import bookshop.com.yy.entity.OrderInfo;

public interface OrderInfoRepository extends JpaRepository<OrderInfo, Integer>,JpaSpecificationExecutor<OrderInfo>{
	/**
	 * 根据订单编号查询商品
	 * @param orderid
	 * @return
	 */
	public List<OrderInfo> findAllByOrderid(String orderid);
}
