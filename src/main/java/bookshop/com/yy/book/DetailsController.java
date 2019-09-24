package bookshop.com.yy.book;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DetailsController {
	@GetMapping("/details")
	public String details() {
		return "details";

	}
}
