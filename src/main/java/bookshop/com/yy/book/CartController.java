package bookshop.com.yy.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class CartController {
	/**
	 * 判断该用户是否登陆
	 * 
	 * @param request
	 * @return
	 */
	@GetMapping("/lookCar")
	public String lookuserinfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("usernumber");
		Integer i = 0;
		String path = "";
		if (name != null) {
			// 已登录
			path = "cart";
		} else {
			// 未登录
			path = "login";
		}
		return path;

	}
	
	@PostMapping("/login")
	@ResponseBody
	public Integer login(Integer un,String pwd) {
		System.out.println(un);
		System.out.println(pwd);
		Integer i=null;
		System.out.println("adada");
		return i;
		
	}

}
