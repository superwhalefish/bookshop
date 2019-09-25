package bookshop.com.yy.book;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import bookshop.com.yy.bookrepository.BookRepository;
import bookshop.com.yy.entity.Book;
import bookshop.com.yy.service.BookService;

@Controller
public class DetailsController {
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private BookService bookService;
	
	@GetMapping("/bookDetails")
	public String details(HttpServletRequest request,int id) {
		List<Book> bookInfo = bookService.selectById(id);
		request.setAttribute("bookinfo",bookInfo);
		return "details";
	}
	
}
