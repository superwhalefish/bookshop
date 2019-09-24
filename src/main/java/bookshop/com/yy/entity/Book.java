package bookshop.com.yy.entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Book {
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
private BookCate bookCate;
}
