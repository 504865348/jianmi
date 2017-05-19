package com.jianzhi.dao;

import java.util.List;

import com.jianzhi.entity.Business;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Page;

public interface BusinessMapper {
	void insertBusiness(Business business);

	List<Business> getBusiness(Page page);

	Business login(Business business);

	Business getBusInfo(int bid);

	List<Job> getJobsByBid(int bid);

	void updateBusiness(Business business);

	void updatePass(Business business);

	List<Business> getBusFen();

	int getRow();

	void updateBusinessInfo(Business business);
}
