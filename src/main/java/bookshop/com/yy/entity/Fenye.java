package bookshop.com.yy.entity;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Fenye<T> {
private Integer page;
private Integer pageSize;
private Integer total;
private List<T> rows;
//书本
private String bname;
private Integer bookcateid;

//类别
private String bcname;

public String getBcname() {
	return bcname;
}
public void setBcname(String bcname) {
	this.bcname = bcname;
}
public Integer getPage() {
	return page;
}
public void setPage(Integer page) {
	this.page = page;
}
public Integer getPageSize() {
	return pageSize;
}

public String getBname() {
	return bname;
}
public void setBname(String bname) {
	this.bname = bname;
}
public Integer getBookcateid() {
	return bookcateid;
}
public void setBookcateid(Integer bookcateid) {
	this.bookcateid = bookcateid;
}
public void setPageSize(Integer pageSize) {
	this.pageSize = pageSize;
}
public Integer getTotal() {
	return total;
}
public void setTotal(Integer total) {
	this.total = total;
}
public List<T> getRows() {
	return rows;
}
public void setRows(List<T> rows) {
	this.rows = rows;
}



}
