package com.jianzhi.service;

import java.util.List;

import com.jianzhi.entity.Business;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Page;

public interface BusinessService {
	void insertBusiness(Business business);

	List<Business> getBusiness(Page page);

	Business login(Business business);

	List<Job> getJobsByBid(int bid);

	void updateBusiness(Business business);

	void updatePass(Business business);

	Business getBusInfo(int bid);

	List<Business> getBusFen();

	int getRow();

	void updateBusinessInfo(Business business);
}
