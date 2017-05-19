package com.jianzhi.Interceptor;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.google.gson.Gson;
import com.jianzhi.entity.Admin;
import com.jianzhi.service.UserServiceImpl;
import com.jianzhi.utils.Cookieutil;

public class CookieHandler extends HandlerInterceptorAdapter {

	@Resource
	Admin admin;
	@Resource
	UserServiceImpl userServiceImpl;
	@Resource
	Gson gson;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		Cookie[] cookies = request.getCookies();
		String username = new Cookieutil().findValue("username", cookies);
		// 不需要解密
		String password = new Cookieutil().findValue("password", cookies);
		if (password != null && username != null) {

			admin.setPassword(password);
			admin.setUsername(username);
			Admin admin1 = new Admin();
			admin1 = userServiceImpl.adminLogin(admin);
			String str = gson.toJson(admin1);
			System.out.println(str);
			if (admin1 != null) {
				request.getSession().setAttribute("admin", admin1);
			}
		}

		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterConcurrentHandlingStarted(request, response, handler);
	}

}
