package bookshop.com.yy.whale;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import bookshop.com.yy.entity.BookCate;
import bookshop.com.yy.entity.Fenye;
import bookshop.com.yy.service.BookCateService;

@RestController
@CrossOrigin
public class BookCateConstroller {
	@Autowired
	private BookCateService bookCateService;

	@Autowired
	private Fenye<BookCate> fenye;
	
	@PostMapping("/selectBookCateAll")
	public List<BookCate> selectBookCateAll() {
		return bookCateService.selectBookCateAll();
	}
	@PostMapping("/selectBookCateByBcname")
	public Fenye<BookCate> selectBookCateByBcname(Integer page,Integer rows,String bcname){
		fenye.setPage((page-1)*rows);
		fenye.setPageSize(rows);
		fenye.setBcname(bcname);
		return bookCateService.selectBookCateByBcname(fenye);
		
	}
	@PostMapping("/updateBookCate")
	public Integer updateBookCate(BookCate bookCate) {
		return bookCateService.updateBookCate(bookCate);
	}
	@PostMapping("/addBookCate")
	public Integer addBookCate(BookCate bookCate) {
		return bookCateService.addBookCate(bookCate);
		
	}
	@PostMapping("/delBookCate")
	public Integer delBookCate(Integer id) {
		return bookCateService.delBookCate(id);
		
	}
}
