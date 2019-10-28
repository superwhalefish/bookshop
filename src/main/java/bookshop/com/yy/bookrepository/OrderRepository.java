package bookshop.com.yy.bookrepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import bookshop.com.yy.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>,JpaSpecificationExecutor<Order>{

}
