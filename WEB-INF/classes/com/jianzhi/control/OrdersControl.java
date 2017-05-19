package com.jianzhi.control;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jianzhi.entity.Orders;
import com.jianzhi.entity.Page;
import com.jianzhi.service.OrdersServiceImpl;

@Controller
public class OrdersControl {
	@Resource
	Orders inOrders;
	@Resource
	List<Orders> orders;
	@Resource
	Gson gson;
	@Resource
	OrdersServiceImpl ordersServiceImpl;

	@RequestMapping(value = "order", produces = "text/plain")
	@ResponseBody
	public String insertOrder(@RequestBody Orders orders) {
		ordersServiceImpl.insertOrder(orders);
		return "ok";
		// StringHttpMessageConverter
	}

	@RequestMapping(value = "reboy", produces = "application/json")
	@ResponseBody
	public String name2() {
		String as = new String("wang");
		String as1 = gson.toJson(as);

		return "ok";
	}

	@RequestMapping("orders")
	@ResponseBody
	public List<Orders> getOrderByUid(@RequestParam Integer uid) {
		orders = ordersServiceImpl.getOrderByUid(uid);
		return orders;
	}

	@RequestMapping("getOrders")
	@ResponseBody
	public Orders getOrders(@RequestParam Integer oid) {
		// TODO Auto-generated method stub
		inOrders = ordersServiceImpl.getOrders(oid);

		return inOrders;
	}

	@RequestMapping("getOrderAndUser")
	@ResponseBody
	public Orders getOrderAndUser(@RequestParam Integer oid) {
		// TODO Auto-generated method stub
		inOrders = ordersServiceImpl.getOrderAndUser(oid);
		return inOrders;
	}

	@RequestMapping("getOrderState")
	@ResponseBody
	public List<Orders> getOrderState(@RequestParam Integer uid,
			@RequestParam(value = "state", required = false) Integer state, @RequestParam Integer currentIndex) {
		// TODO Auto-generated method stub
		orders = ordersServiceImpl.getOrderState(uid, state, currentIndex);
		return orders;
	}

	@RequestMapping("deleteShouCang")
	@ResponseBody
	public String deleteShouCang(@RequestParam Integer oid) {
		// TODO Auto-generated method stub
		ordersServiceImpl.deleteShouCang(oid);
		return "ok";
	}

	@RequestMapping("getShouChang")
	@ResponseBody
	public List<Orders> getShouChang(@RequestParam Integer uid, @RequestParam Integer currentIndex) {
		// TODO Auto-generated method stub
		orders = ordersServiceImpl.getShouChang(uid, currentIndex);
		String str = gson.toJson(orders);
		System.out.println(str);
		return orders;
	}

	@RequestMapping("insertShouChang")
	@ResponseBody
	public boolean insertShouChang(@RequestBody Orders orders) {
		// TODO Auto-generated method stub
		// state 为5
		inOrders = ordersServiceImpl.getUidJid(orders.getUid(), orders.getJid());
		if (inOrders == null) {
			orders.setState(5);
			ordersServiceImpl.insertOrder(orders);
			return true;
		} else {
			return false;
		}
	}

	//
	//
	@RequestMapping("AdminListorder")
	String admin6(@RequestParam Integer currentIndex, @RequestParam Integer jianGe, Model model) {
		Page page = new Page(currentIndex, jianGe);
		orders = ordersServiceImpl.getOrdersWow(page);
		model.addAttribute("orders", orders);
		model.addAttribute("page", page);
		String str = gson.toJson(orders);
		System.out.println(str);
		return "admin/listorder";

	}

}
