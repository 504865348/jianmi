package com.jianzhi.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jianzhi.dao.JobMapper;
import com.jianzhi.entity.Business;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Page;

@Transactional
@Service
public class JobServiceImpl implements JobService {

	@Resource
	JobMapper jobMapper;
	@Resource
	List<Job> jobs;
	@Resource
	Job inJob;
	@Resource
	Business business;

	@Override
	public void insertJob(Job job) {
		// TODO Auto-generated method stub
		jobMapper.insertJob(job);

	}

	@Override
	public List<Job> getJobsByType(String jobtype) {
		List<Job> jobs = new ArrayList<Job>();
		jobs = jobMapper.getJobsByType(jobtype);
		// TODO Auto-generated method stub
		return jobs;
	}

	@Override
	public List<Job> searchJobs(String workplace) {
		// TODO Auto-generated method stub
		List<Job> jobs = new ArrayList<Job>();
		jobs = jobMapper.searchJobs(workplace);
		return jobs;
	}

	@Override
	public Business getBusinessByJobId(int jid) {
		// TODO Auto-generated method stub
		business = jobMapper.getBusinessByJobId(jid);

		return business;
	}

	@Override
	public Job getJobsByJid(int jid) {
		// TODO Auto-generated method stub
		inJob = jobMapper.getJobsByJid(jid);
		return inJob;
	}

	@Override
	public List<Job> getJobPage(Page page) {

		jobs = jobMapper.getJobPage(page);
		return jobs;
	}

	@Override
	public List<Job> getJobUser(Integer jid, Integer currentIndex, Integer jianGe) {
		// TODO Auto-generated method stub
		jobs = jobMapper.getJobUser(jid, currentIndex, jianGe);
		return jobs;
	}

	@Override
	public int getRow() {
		// TODO Auto-generated method stub
		int row = jobMapper.getRow();
		return row;
	}

	@Override
	public void addUid(Integer jid, Integer lastnum) {
		// TODO Auto-generated method stub
		jobMapper.addUid(jid, lastnum);
	}

	@Override
	public List<Job> getJobsFenye(Integer businessid, Integer currentIndex, Integer jianGe) {
		// TODO Auto-generated method stub
		jobs = jobMapper.getJobsFenye(businessid, currentIndex, jianGe);
		return jobs;
	}

	@Override
	public void updateState(int state, int jid) {
		// TODO Auto-generated method stub
		jobMapper.updateState(state, jid);
	}

}
