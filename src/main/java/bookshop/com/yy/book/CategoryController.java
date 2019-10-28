package bookshop.com.yy.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bookshop.com.yy.entity.Book;
import bookshop.com.yy.service.BookService;
@Controller
public class CategoryController {
	@Autowired
	private BookService bookService;

	@GetMapping("/category")
	public String index(HttpServletRequest request) {
		List<Book> randTwoBook = bookService.selectRandTwoBook();
		request.setAttribute("randTwoBook", randTwoBook);
		return "category";
	}
}
