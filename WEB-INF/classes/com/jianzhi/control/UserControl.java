package com.jianzhi.control;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.jianzhi.entity.Admin;
import com.jianzhi.entity.Code;
import com.jianzhi.entity.Page;
import com.jianzhi.entity.User;
import com.jianzhi.service.UserServiceImpl;
import com.jianzhi.utils.Cookieutil;
import com.jianzhi.utils.Md5util;
import com.jianzhi.utils.SmsCode;

//
// 15751005437
// 123456
//
//
@Controller
public class UserControl {
	@Resource
	Gson gson;
	@Resource
	Admin admin;
	@Resource
	User user;
	@Resource
	List<User> users;
	@Resource
	UserServiceImpl userServiceImpl;
	@Resource
	Code code;

	@RequestMapping("admin")
	public String admin() {
		return "admin";

	}

	// 不需要注解
	String cookieLogin(HttpServletRequest request, RedirectAttributes redirectAttributes, Model model) {
		Cookie[] cookies = request.getCookies();
		String username = new Cookieutil().findValue("username", cookies);
		String password = new Cookieutil().findValue("password", cookies);
		admin.setPassword(password);
		admin.setUsername(username);
		Admin admin1 = new Admin();
		admin1 = userServiceImpl.adminLogin(admin);
		String str = gson.toJson(admin1);
		System.out.println(str);
		if (admin1 != null) {
			// 登入成功
			//
			redirectAttributes.addFlashAttribute("admin", admin);
			// request.getSession().setMaxInactiveInterval(120);
			request.getSession().setAttribute("admin", admin1);
			return "redirect:AdminIndex";
		} else {
			// 密码错误
			model.addAttribute("msg", "用户名或者密码错误！");
			return "admin/login";
		}

	}

	@RequestMapping("Adminlogin1")
	public String adminLogin(@RequestParam String username, @RequestParam String password, Model model,
			HttpServletRequest request, RedirectAttributes redirectAttributes, HttpServletResponse response) {

		// SmsCode.name();
		// 自动登入
		String autoLogin = request.getParameter("autoLogin");
		System.out.println("#########################" + autoLogin);
		/*
		 * if ("on".equals(autoLogin)) {
		 * System.out.println("##############################");
		 * 
		 * // 解密 URLEncoder.encode(password, "utf-8") // 加密 Cookie cookie = new
		 * Cookie("password", Md5util.md5(password)); Cookie cookie1 = new
		 * Cookie("username", username); cookie.setPath("/");
		 * cookie.setMaxAge(60 * 60 * 24 * 7); cookie1.setPath("/");
		 * cookie1.setMaxAge(60 * 60 * 24 * 7); response.addCookie(cookie);
		 * response.addCookie(cookie1);
		 * 
		 * }
		 */
		admin.setUsername(username);
		String pass = Md5util.md5(password);
		try {
			System.out.println("解码" + URLEncoder.encode(pass, "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		admin.setPassword(pass);
		Admin admin1 = new Admin();
		admin1 = userServiceImpl.adminLogin(admin);
		String str = gson.toJson(admin1);
		System.out.println(str);
		if (admin1 != null) {
			// 登入成功
			//
			redirectAttributes.addFlashAttribute("admin", admin);
			// request.getSession().setMaxInactiveInterval(120);
			request.getSession().setAttribute("admin", admin1);
			return "redirect:AdminIndex";
		} else {
			// 密码错误
			model.addAttribute("msg", "用户名或者密码错误！");
			return "admin/login";
		}

	}

	@RequestMapping("insertUser")
	@ResponseBody
	public String insertUser(@RequestBody User user) {
		String str = gson.toJson(user);

		System.out.println(str);
		// userServiceImpl.insertUser(user);
		return "ok";
	}

	@RequestMapping("user")
	public @ResponseBody User getUserById(@RequestParam Integer uid) {
		user = userServiceImpl.getUserById(uid);
		System.out.println(user.getRegisttime());
		Gson gson = new Gson();
		String str = gson.toJson(user);
		System.out.println(str);
		return user;

	}

	@RequestMapping("users")
	public @ResponseBody List<User> getUsers(@RequestParam Integer currentIndex, @RequestParam Integer jianGe) {
		Page page = new Page(currentIndex, jianGe);
		users = userServiceImpl.getUsers(page);
		return users;

	}

	@RequestMapping("loginUser")
	@ResponseBody
	public User login(@RequestBody User user) {
		user = userServiceImpl.login(user);
		return user;
	}

	@RequestMapping("updateUser")
	@ResponseBody
	public String updateUser(@RequestBody User user) {
		userServiceImpl.updateUser(user);
		return "ok";
	}

	// 更新用户信息
	@RequestMapping("updateUser2")
	public void updateUser2(@RequestBody User user) {
		String str = gson.toJson(user);
		System.out.println(str);
		userServiceImpl.updateUserInflo(user);
		return;
	}

	//

	//
	@RequestMapping("AdminListuser")
	public String get(@RequestParam Integer currentIndex, @RequestParam Integer jianGe, Model model) {
		Page page = new Page(currentIndex, jianGe);

		users = userServiceImpl.getUsers(page);
		model.addAttribute("users", users);
		String str = gson.toJson(users);
		System.out.println(str);
		model.addAttribute("page", page);
		return "admin/listuser";

	}

	// 验证码
	/*
	 * @RequestMapping("SmsCode")
	 * 
	 * @ResponseBody public String smsCode() { SmsCode smsCode = new SmsCode();
	 * String str = smsCode.name1(); return str;
	 * 
	 * }
	 */

	@RequestMapping("/Code")
	@ResponseBody
	public Code smsCode1(@RequestParam String phoneNumber) {
		SmsCode smsCode = new SmsCode();
		String str = smsCode.name1(phoneNumber);
		code.setCode(str);
		return code;

	}

}
