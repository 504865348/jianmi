package com.jianzhi.Interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jianzhi.entity.Admin;
import com.jianzhi.entity.Business;

public class HandlerInterceptor1 extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		// 登入验证
		//
		String uri = request.getRequestURI();
		String url = request.getQueryString();
		StringBuffer as = request.getRequestURL();
		System.out.println("112122" + url);
		System.out.println("asdaddsa" + as);

		System.out.println(uri + "asdddddddddddd");
		// String as=request.getQueryString()
		// request.g
		// /diancan/getFoods
		// 不能以uri 进行判断
		/*
		 * if (uri.contains("Adminlogin") || uri.contains("businessloginView"))
		 * { if (!uri.contains("Adminlogin")) { return userHandle(request,
		 * response); } if (!uri.contains("businessloginView")) { return
		 * businessHandle(request, response); } }
		 */

		if (uri.contains("Adminlogin") || uri.contains("businessloginView")) {
			System.out.println("访问的是登入界面");
			System.out.println("===========HandlerInterceptor1 preHandle");
			return super.preHandle(request, response, handler);

		} else {
			// 默认
			if (uri.endsWith("BB")) {
				return businessHandle(request, response);
			} else {
				return userHandle(request, response);
			}

		}

	}

	/**
	 * ---> 该方法在目标方法执行之后执行.
	 * 
	 * 可以在方法中访问到目标方法返回的 ModelAndView 对象.
	 * 
	 * 该方法在业务处理器处理完请求后执行， 但是该方法 还是在DispatcherServlet
	 * 向客户端(页面)返回响应前被调用，在该方法中可以对用户请求(request对象)进行处理。
	 */

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("===========HandlerInterceptor1 preHandle");
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("===========HandlerInterceptor1 preHandle");
		super.afterCompletion(request, response, handler, ex);
	}

	Boolean userHandle(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Admin admin = new Admin();
		admin = (Admin) request.getSession().getAttribute("admin");
		String userName = request.getParameter("userName");
		// userName != null && userName.length() != 0
		if (admin != null) {
			System.out.println("访问的是未登入界面，但用户已经登入");
			return true;

		} else {

			System.out.println("字符串为空");
			System.out.println("访问的是未登入界面，且用户已经未登入");
			System.out.println("重定向到登入界面");
			response.sendRedirect("Adminlogin");
			// request.getRequestDispatcher("Adminlogin").forward(request,
			// response);
			return false;
		}

	}

	Boolean businessHandle(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Business business = new Business();
		business = (Business) request.getSession().getAttribute("business");

		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAA" + business);
		String userName = request.getParameter("userName");
		// userName != null && userName.length() != 0
		if (business != null) {
			System.out.println("访问的是未登入界面，但商家已经已经登入");
			return true;

		} else {

			System.out.println("字符串为空");
			System.out.println("访问的是未登入界面，且商家已经未登入");
			System.out.println("重定向到商家登入界面");
			response.sendRedirect("businessloginView");
			// request.getRequestDispatcher("Adminlogin").forward(request,
			// response);
			return false;
		}

	}

}
