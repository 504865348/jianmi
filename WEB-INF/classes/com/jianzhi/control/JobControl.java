package com.jianzhi.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.jianzhi.entity.Business;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Orders;
import com.jianzhi.entity.Page;
import com.jianzhi.service.JobServiceImpl;
import com.jianzhi.service.OrdersServiceImpl;

@Controller
public class JobControl {
	@Resource
	Job job;
	@Resource
	List<Job> jobs;
	@Resource
	JobServiceImpl jobServiceImpl;
	@Resource
	OrdersServiceImpl ordersServiceImpl;
	@Resource
	Business business;
	@Resource
	Orders orders;
	@Resource
	Gson gson;
	static int jid = 80;
    Logger logger=Logger.getLogger(JobServiceImpl.class);
	@RequestMapping("job")
	@ResponseBody
	public Job name(@RequestParam Integer jid, @RequestParam(value = "uid", required = false) Integer uid) {
		job = jobServiceImpl.getJobsByJid(jid);
		orders = ordersServiceImpl.getUidJid(uid, jid);
		job.setOrders(orders);
		return job;

	}

	@RequestMapping("jobs")
	@ResponseBody
	public List<Job> getJobsByType(@RequestParam String jobtype) {
		jobs = jobServiceImpl.getJobsByType(jobtype);

		return jobs;

	}

	@RequestMapping("searchJobs")
	@ResponseBody
	public List<Job> searchJobs(@RequestParam String workplace) {
		jobs = jobServiceImpl.searchJobs(workplace);
		return jobs;
	}

	@RequestMapping("BusinessByJob")
	@ResponseBody
	public Business getBusinessByJobId(@RequestParam Integer jid) {
		business = jobServiceImpl.getBusinessByJobId(jid);
		return business;

	}

	@RequestMapping("insertJob")
	@ResponseBody
	public boolean insertJob(@RequestBody Job injob) {
		jid++;
		job = jobServiceImpl.getJobsByJid(jid);
		if (job == null) {
			jobServiceImpl.insertJob(job);
			return true;
		} else {
			return false;
		}

	}

	//
	// 网页后台接口
	//
	@RequestMapping("AdminListjob")
	String admin5(@RequestParam Integer currentIndex, @RequestParam Integer jianGe, Model model) {
		Page page = new Page(currentIndex, jianGe);
		jobs = jobServiceImpl.getJobPage(page);
		model.addAttribute("jobs", jobs);
		model.addAttribute("page", page);

		return "admin/listjob";

	}

	// 兼职信息
	@RequestMapping("jobinformation")
	String getJobAndUser(@RequestParam Integer jid, @RequestParam Integer currentIndex, @RequestParam Integer jianGe) {
		// 从seesin 里面获取
		int bid = 2;

		return "business/jobinformation";

	}

	@RequestMapping("addjobView")
	ModelAndView admin8() {

		return new ModelAndView("business/addjob", "command", new Job());

	}

	@RequestMapping("BusinessAddJobBB")
	String admin3(@ModelAttribute Job job
			,HttpServletRequest request) {
		business=(Business) request.getSession().getAttribute("business");
		if(business==null)
			return "redirect:businessloginView";
		String str=gson.toJson(job);
		logger.debug("从session里面取"+business);
		logger.debug("从session里面取"+str);
		job.setBusinessid(business.getBid());
		String num=job.getJobtype();
		//Integer.parseInt(num);
		String jurl="/images/job/"+num+".png";
		job.setJurl(jurl);
		jobServiceImpl.insertJob(job);
		// 插入成功 重定向到首页
		return "redirect:addjobView";
	}

	@RequestMapping("updateState")
	String updateState(@RequestParam Integer jid, @RequestParam Integer state, @RequestParam Integer currentIndex,
			@RequestParam Integer jianGe) {
		jobServiceImpl.updateState(state, jid);

		String uri = "redirect:AdminListjob?currentIndex=" + currentIndex + "&&jianGe=" + jianGe;
		return uri;
	}

}
