package com.jianzhi.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jianzhi.dao.BusinessMapper;
import com.jianzhi.entity.Business;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Page;

@Transactional
@Service(value = "businessServiceImpl")
public class BusinessServiceImpl implements BusinessService {

	@Resource
	BusinessMapper businessMapper;
	@Resource
	Business inBusiness;
	@Resource
	List<Business> businesses;
	@Resource
	Job Job;
	@Resource
	List<Job> jobs;

	@Override
	public void insertBusiness(Business business) {
		// TODO Auto-generated method stub
		businessMapper.insertBusiness(business);

	}

	@Override
	public List<Business> getBusiness(Page page) {
		// TODO Auto-generated method stub
		List<Business> bList = new ArrayList<Business>();
		bList = businessMapper.getBusiness(page);
		return bList;
	}

	@Override
	public Business login(Business business) {
		// TODO Auto-generated method stub
		inBusiness = businessMapper.login(business);

		return inBusiness;
	}

	@Override
	public List<Job> getJobsByBid(int bid) {
		// TODO Auto-generated method stub
		jobs = businessMapper.getJobsByBid(bid);
		return jobs;
	}

	@Override
	public void updateBusiness(Business business) {
		// TODO Auto-generated method stub
		businessMapper.updateBusiness(business);
	}

	@Override
	public void updatePass(Business business) {
		// TODO Auto-generated method stub
		businessMapper.updatePass(business);
	}

	@Override
	public Business getBusInfo(int bid) {
		// TODO Auto-generated method stub
		inBusiness = businessMapper.getBusInfo(bid);
		return inBusiness;
	}

	@Override
	public List<Business> getBusFen() {
		// TODO Auto-generated method stub
		businesses = businessMapper.getBusFen();
		return businesses;
	}

	@Override
	public int getRow() {
		// TODO Auto-generated method stub
		int row = businessMapper.getRow();
		return row;
	}

	@Override
	public void updateBusinessInfo(Business business) {
		// TODO Auto-generated method stub
		businessMapper.updateBusinessInfo(business);
	}

}
