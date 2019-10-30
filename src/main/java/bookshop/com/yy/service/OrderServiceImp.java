package bookshop.com.yy.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import bookshop.com.yy.bookrepository.OrderRepository;
import bookshop.com.yy.entity.Order;

@Service
public class OrderServiceImp implements OrderService {
	@Autowired
	private OrderRepository orderRepository;

	@Override
	public Map<String, Object> getOrd(Integer page, Integer rows, String orderid, String startOrdertime,
			String endOrdertime, String signaturestatus, String deliverystatus) {
		// TODO Auto-generated method stub
		Sort sort = new Sort(Direction.DESC,"ordid");
		Pageable pageRequest = PageRequest.of((page - 1)*rows, rows, sort);
		Page<Order> findAll = orderRepository
				.findAll(get(orderid, startOrdertime, endOrdertime, signaturestatus, deliverystatus), pageRequest);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("total", findAll.getTotalElements());
		map.put("rows", findAll.getContent());
		return map;
	}

	private Specification<Order> get(final String orderid, final String startOrdertime, final String endOrdertime,
			final String signaturestatus, final String deliverystatus) {
		return new Specification<Order>() {

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			@Override
			public Predicate toPredicate(Root<Order> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				// TODO Auto-generated method stub
				;
				Predicate conjunction = criteriaBuilder.conjunction();
				List<Expression<Boolean>> expressions = conjunction.getExpressions();
				if (!StringUtils.isEmpty(orderid)) {
					expressions.add(criteriaBuilder.equal(root.<String>get("orderid"), orderid));
				}
				if (!StringUtils.isEmpty(startOrdertime)) {
					expressions.add(criteriaBuilder.greaterThanOrEqualTo(root.<String>get("ordertime"), startOrdertime));
				}
				if (!StringUtils.isEmpty(endOrdertime)) {
					expressions.add(criteriaBuilder.greaterThanOrEqualTo(root.<String>get("ordertime"), endOrdertime));
				}
				if (!StringUtils.isEmpty(signaturestatus)) {
					expressions.add(criteriaBuilder.equal(root.<String>get("signaturestatus"), signaturestatus));
				}
				if (!StringUtils.isEmpty(deliverystatus)) {
					expressions.add(criteriaBuilder.equal(root.<String>get("deliverystatus"), deliverystatus));
				}
				return conjunction;
			}
		};

	}
}
