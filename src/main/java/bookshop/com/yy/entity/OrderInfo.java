package bookshop.com.yy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Entity
@Table(name = "ordersupplement")
@Data
public class OrderInfo {
	@Id
	@GeneratedValue
	private Integer id;
	private String orderid;
	private Integer pid;
	private Integer num;
}
