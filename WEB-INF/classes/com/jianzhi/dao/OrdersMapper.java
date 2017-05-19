package com.jianzhi.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.jianzhi.entity.Orders;
import com.jianzhi.entity.Page;

public interface OrdersMapper {
	void insertOrder(Orders orders);

	List<Orders> getOrderByUid(int uid);

	Orders getOrders(int oid);

	Orders getOrderAndUser(int oid);

	Orders getOrdersThree(int oid);

	Orders getOrdersUpdate(Map<Integer, Page> para);

	List<Orders> getOrdersWow(Page page);

	List<Orders> getFour(@Param(value = "bid") Integer bid, @Param(value = "currentIndex") Integer currentIndex);

	void updateState(@Param(value = "state") Integer state, @Param(value = "oid") Integer oid);

	Orders userJobComment(int oid);

	List<Orders> getOrderState(int uid, int state, int currentIndex);

	void deleteShouCang(int oid);

	List<Orders> getShouChang(int uid, int currentIndex);

	Orders getUidJid(int uid, int jid);
	List<Orders> getOrderPhone(int uid, int currentIndex);
	//
	List<Orders> getOrdersjobinfamation(int bid,int currentIndex);
	
}
