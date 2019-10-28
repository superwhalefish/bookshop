package bookshop.com.yy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
@Entity
@Table(name="bookcate")
public class BookCate {
	@Id
	@GeneratedValue
	private Integer id;
	private String bcname;
}
