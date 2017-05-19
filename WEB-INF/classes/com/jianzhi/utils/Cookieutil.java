package com.jianzhi.utils;

import javax.servlet.http.Cookie;

public class Cookieutil {
	public String findbyName(String name, Cookie[] cookies) {
		if (cookies == null)
			return null;
		else {
			for (Cookie cookie : cookies) {
				/*
				 * if (name.equals(cookie.getName())) { // 将用户名解码 String
				 * username = cookie.getValue(); try { username =
				 * URLEncoder.encode(username, "utf-8"); } catch
				 * (UnsupportedEncodingException e) { // TODO Auto-generated
				 * catch block e.printStackTrace(); } // password 不需要解码 return
				 * username;
				 * 
				 * }
				 */
				if (name.equals(cookie.getName())) {
					// password 不需要解码
					String password = cookie.getValue();
					return password;

				}

			}
			return null;
		}

	}

	public String findValue(String name, Cookie[] cookies) {
		if (cookies == null) {
			return null;
		} else {
			for (Cookie cookie : cookies) {
				if (name.equals(cookie.getName()))
					return cookie.getValue();
			}
			return null;
		}

	}

}
