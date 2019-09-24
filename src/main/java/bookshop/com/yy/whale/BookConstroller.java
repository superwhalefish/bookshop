package bookshop.com.yy.whale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import bookshop.com.yy.entity.Book;
import bookshop.com.yy.entity.Fenye;
import bookshop.com.yy.service.BookService;

@RestController
@CrossOrigin
public class BookConstroller {
	@Autowired
	private BookService bookService;
	@Autowired
	private Fenye<Book> fenye;

	@PostMapping("/select")
	public Fenye<Book> select(Integer page, Integer rows, Integer bookcateid, String bname) {
		fenye.setPage((page - 1) * rows);
		fenye.setPageSize(rows);
		fenye.setBookcateid(bookcateid);
		fenye.setBname(bname);
		return bookService.selectByNameOrBcname(fenye);
	}

	@PostMapping("/update")
	public Integer edit(Book book) {
		return bookService.updateBook(book);
	}

	@PostMapping("/add")
	public Integer add(Book book) {
		return bookService.addBook(book);
	}

	@PostMapping("/del")
	public Integer del(Integer id) {
		return bookService.del(id);
	}
	
	
}
