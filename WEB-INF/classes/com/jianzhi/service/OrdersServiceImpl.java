package com.jianzhi.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.jianzhi.dao.OrdersMapper;
import com.jianzhi.entity.Orders;
import com.jianzhi.entity.Page;

@Transactional
@Service
public class OrdersServiceImpl implements OrdersService {
	@Resource
	Orders inOrders;
	@Resource
	OrdersMapper ordersMapper;
	@Resource
	List<Orders> orders;
	@Resource
	Gson gson;
	static int oid = 80;

	@Override
	public void insertOrder(Orders orders) {
		// TODO Auto-generated method stub
		oid++;

		ordersMapper.insertOrder(orders);
	}

	@Override
	public List<Orders> getOrderByUid(int uid) {
		// TODO Auto-generated method stub
		orders = ordersMapper.getOrderByUid(uid);
		// String str=gson.toJson(orders);
		// System.out.println("##################################"+str);
		return orders;
	}

	@Override
	public Orders getOrders(int oid) {
		// TODO Auto-generated method stub
		inOrders = ordersMapper.getOrders(oid);

		return inOrders;
	}

	@Override
	public Orders getOrderAndUser(int oid) {
		// TODO Auto-generated method stub
		inOrders = ordersMapper.getOrderAndUser(oid);
		return inOrders;
	}

	@Override
	public Orders getOrdersThree(int oid) {
		// TODO Auto-generated method stub
		inOrders = ordersMapper.getOrdersThree(oid);
		return inOrders;
	}

	@Override
	public Orders getOrdersUpdate(Map<Integer, Page> para) {
		// TODO Auto-generated method stub
		inOrders = ordersMapper.getOrdersUpdate(para);
		return inOrders;
	}

	@Override
	public List<Orders> getOrdersWow(Page page) {
		orders = ordersMapper.getOrdersWow(page);

		return orders;
	}

	@Override
	public List<Orders> getFour(Integer bid, Integer currentIndex) {
		// TODO Auto-generated method stub
		orders = ordersMapper.getFour(bid, currentIndex);
		return orders;
	}

	@Override
	public void updateState(int state, int oid) {
		// TODO Auto-generated method stub
		ordersMapper.updateState(state, oid);
	}

	@Override
	public Orders userJobComment(int oid) {
		// TODO Auto-generated method stub
		inOrders = ordersMapper.userJobComment(oid);
		return inOrders;
	}

	@Override
	public List<Orders> getOrderState(int uid, int state, int currentIndex) {
		// TODO Auto-generated method stub
		orders = ordersMapper.getOrderState(uid, state, currentIndex);
		return orders;
	}

	@Override
	public void deleteShouCang(int oid) {
		// TODO Auto-generated method stub
		ordersMapper.deleteShouCang(oid);
	}

	@Override
	public List<Orders> getShouChang(int uid, int currentIndex) {
		// TODO Auto-generated method stub
		orders = ordersMapper.getShouChang(uid, currentIndex);
		String str = gson.toJson(orders);
		System.out.println(str);
		return orders;
	}

	@Override
	public Orders getUidJid(int uid, int jid) {
		// TODO Auto-generated method stub
		inOrders = ordersMapper.getUidJid(uid, jid);
		return inOrders;
	}

	@Override
	public List<Orders> getOrderPhone(int uid, int currentIndex) {
		// TODO Auto-generated method stub
		orders=ordersMapper.getOrderPhone(uid, currentIndex);
		return orders;
	}

	

	@Override
	public List<Orders> getOrdersjobinfamation(int bid, int currentIndex) {
		// TODO Auto-generated method stub
		orders=ordersMapper.getOrdersjobinfamation(bid, currentIndex);
		
		return orders;
	}

}
