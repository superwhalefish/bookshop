package bookshop.com.yy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
@Entity
@Table(name = "book")
public class Book {
	@Id
	@GeneratedValue
	private Integer id;
	private String bname;
	private Double bprice;
	private Integer bnum;
	private Integer sstate;
	private String bimg;
	private String bcommentid;
	private Integer bookcateid;
	private String bdetials;
	private String bauthor;
	private String bshop;
	private String putawaytime;
	@Autowired
	@Transient
	private BookCate bookCate;
}
