package com.jianzhi.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jianzhi.service.JobServiceImpl;
import com.jianzhi.service.UserServiceImpl;

//
//  jm01
//  123456   管理员登入
//
//
@Controller
public class AdminControl {

	@Resource
	JobServiceImpl jobServiceImpl;
	@Resource
	UserServiceImpl userServiceImpl;

	@RequestMapping("Ajson")
	String json() {
		return "json";

	}

	@RequestMapping("Ashop")
	String shop() {
		return "shop";

	}

	@RequestMapping("Ajob")
	String job() {
		return "job";

	}

	@RequestMapping("Aorder")
	String order() {
		return "order";

	}

	@RequestMapping("Auser")
	String user() {
		return "user";

	}

	/*
	 * 配置路径
	 */
	@RequestMapping("/Adminlogin")
	String admin1(Model model, HttpServletRequest request, HttpServletResponse response) {
		/*
		 * String msg = "asads";
		 * 
		 * Job job = jobServiceImpl.getJobsByJid(1); List<Job> jobs =
		 * jobServiceImpl.getJobsByType("1");
		 * System.out.println("#######################" + job);
		 * model.addAttribute("msg", "wang"); model.addAttribute("job", job);
		 * model.addAttribute("jobs", jobs);
		 */
		/*
		 * Cookie[] cookies = request.getCookies(); if (cookies != null) { for
		 * (Cookie cookie : cookies) { if ("password".equals(cookie.getName()))
		 * { request.setAttribute("password", cookie.getValue()); }
		 * 
		 * }
		 * 
		 * }
		 */
		return "admin/login";

	}

	@RequestMapping("AdminIndex")
	String admin2() {
		return "admin/index";

	}

	@RequestMapping("AdminAddbusiness")
	String admin3() {
		return "admin/addbusiness";

	}

	@RequestMapping("AdminLogout")
	String admin8(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return "admin/login";

	}

	/*
	 * // druid 监控
	 * 
	 * @RequestMapping("druid/index") String druid() {
	 * 
	 * return "index";
	 * 
	 * }
	 */

}
