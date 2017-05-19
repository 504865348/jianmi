package com.jianzhi.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jianzhi.entity.Business;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Page;

public interface JobService {
	void insertJob(Job job);

	List<Job> getJobsByType(String jobtype);

	List<Job> searchJobs(String workplace);

	Business getBusinessByJobId(int jid);

	Job getJobsByJid(int jid);

	List<Job> getJobPage(Page page);

	List<Job> getJobUser(@Param(value = "jid") Integer jid, @Param(value = "currentIndex") Integer currentIndex,
			@Param(value = "jianGe") Integer jianGe);

	int getRow();

	void addUid(@Param(value = "jid") Integer jid, @Param(value = "lastnum") Integer lastnum);

	List<Job> getJobsFenye(Integer businessid, Integer currentIndex, Integer jianGe);

	void updateState(int state, int jid);
}
