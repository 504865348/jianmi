package com.jianzhi.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jianzhi.entity.Admin;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		// true 执行下一个拦截
		// false 拦截执行完 接下来 来 DispatcherServlet 执行
		String uri = request.getRequestURI();
		System.out.println("#########################" + uri);

		if (uri.contains("login")) { // 放行
			System.out.println("访问的是登陆界面 放行");
			return true;
		} else {
			HttpSession httpSession = request.getSession();
			Admin admin = (Admin) httpSession.getAttribute("user");
			if (admin != null) {
				// 表名已经登入
				System.out.println("访问的是未登入界面，但用户已经登入");
				return true;
			} else {
				// 未登入
				System.out.println("访问的是未登入界面，且用户已经未登入");
				System.out.println("重定向到登入界面");
				response.sendRedirect("Adminlogin");
				// request.getRequestDispatcher("Adminlogin").forward(request,
				// response);
				return false;
			}
		}

		// 先判断是否登入
		//
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
