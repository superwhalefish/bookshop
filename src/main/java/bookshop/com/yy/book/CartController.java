package bookshop.com.yy.book;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import bookshop.com.yy.bookrepository.UserRepository;
import bookshop.com.yy.entity.User;

@Controller
public class CartController {

	@Autowired
	private UserRepository userRepository;

	/**
	 * 判断该用户是否登陆
	 * 
	 * @param request
	 * @return
	 */
	@GetMapping("/lookCar")
	public String lookuserinfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("username");
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
	public Integer login(HttpServletRequest request, Integer un, String pwd) {
		Integer i = null;
		if (un != null && un > 0) {
			User user = userRepository.findAllByUsernumber(un);
			if (user != null) {
				if (user.getUserstate() != 1) {
					Date date = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:dd");
					String nowtime = sdf.format(date);
					if (pwd.equals(user.getUserpassword())) {
						i = 2;// 密码正确
						user.setUserstate(1);
						user.setLastlogntime(nowtime);
						user.setErrortime(0);
						userRepository.saveAndFlush(user);
						HttpSession session = request.getSession();
						session.setAttribute("username", user.getUsername());
					} else {
						i = 3;// 密码错误
						if (user.getErrortime() <= 5) {
							Integer errortime = user.getErrortime();
							user.setErrortime(errortime + 1);
							userRepository.saveAndFlush(user);
						} else {
							user.setLocktime(nowtime);
							userRepository.saveAndFlush(user);
							i = 5;// 账号锁定
						}
					}
				} else {
					i = 4;// 此账号已登录
				}
			} else {
				i = 6;// 此账号不存在
			}
		} else {
			i = 1;// 账号为空
		}
		return i;
	}

	@GetMapping("/goCart")
	public String car() {
		return "cart";
	}
}
