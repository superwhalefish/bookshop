package bookshop.com.yy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Entity
@Table(name = "orderinfo")
@Data
public class Order {
	@Id
	@GeneratedValue
	private Integer ordid;
	private String orderid;// 订单编号
	private String deliverystatus;// 发货状态
	private String signaturestatus;// 签收状态
	private Integer transacyionamount;// 交易金额
	private String distributionaddress;// 配送地址
	private String consignee;// 收货人
	private String contactnumber;// 联系电话
	private String ordertime;// 下单时间
	private String signaturetime;// 签收时间
	private Integer userid;// 用户id
	private String paymentmethod;// 支付方式
	private String distributionmode;// 配送方式

}
