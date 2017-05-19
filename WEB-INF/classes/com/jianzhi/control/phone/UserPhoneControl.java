package com.jianzhi.control.phone;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.core.env.PropertySourcesPropertyResolver;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.jianzhi.entity.Admin;
import com.jianzhi.entity.Code;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Orders;
import com.jianzhi.entity.Page;
import com.jianzhi.entity.User;
import com.jianzhi.service.JobServiceImpl;
import com.jianzhi.service.OrdersServiceImpl;
import com.jianzhi.service.UserServiceImpl;
import com.jianzhi.utils.Md5util;
import com.jianzhi.utils.SmsCode;

@Controller
@RequestMapping("phone")
@SessionAttributes("user")
public class UserPhoneControl {
	static Logger logger = Logger.getLogger(UserPhoneControl.class);
	@Resource
	Gson gson;
	@Resource
	Admin admin;
	@Resource
	Page page;
	@Resource
	User user;
	@Resource
	List<User> users;
	@Resource
	List<Job> jobs;
	@Resource
	Orders orders;
	@Resource
	List<Orders> inOrders;
	@Resource
	Job job;
	@Resource
	UserServiceImpl userServiceImpl;
	@Resource
	JobServiceImpl jobServiceImpl;
	@Resource
	OrdersServiceImpl ordersServiceImpl;
	@Resource
	Code code;
	static String pefix = "user/";
	static String redirect = "redirect:user/";

	
	
	@RequestMapping("index")
	public String index(HttpServletRequest request
			,Model model) {
		page=new Page(0,10);
		jobs = jobServiceImpl.getJobPage(page);
		String str=gson.toJson(jobs);
		System.out.println(str);
		// 获得user
		user=(User) request.getSession().getAttribute("user");
		if(user!=null)
			model.addAttribute("user",user);
		model.addAttribute("jobs", jobs);
   		
		return "index";
	}
	@RequestMapping("changepassword")
	public String changepassword(@RequestParam String password
			,Model model,HttpServletRequest request) {
		user=(User) request.getSession().getAttribute("user");
		if(user==null)
		   return "redirect:userloginPage";
		password=Md5util.md5(password);
		user.setPassword(password);
		userServiceImpl.updateUser(user);
		model.addAttribute("user",user);
		return pefix + "changepassword";
	}
	@RequestMapping("changepasswordPage")
	public String changepasswordPage(Model model,HttpServletRequest request) {
		user=(User) request.getSession().getAttribute("user");
		if(user==null)
		   return redirect + "userloginPage";
		
		model.addAttribute("user",user);
		return pefix + "changepassword";
	}

	@RequestMapping("forgetpwdPage")
	public String forgetpwdPage() {
		return pefix + "forgetpwd";
	}
	@SuppressWarnings("static-access")
	@RequestMapping("forgetpwd")
	@ResponseBody
	public String forgetpwd(@RequestParam String username,
			@RequestParam String pwd,Model model) {
		logger.debug("密码是"+pwd);
		if(username==null){
			model.addAttribute("info","手机号不能为空");
			return "forgetpwd";
		}
			
		//  发送验证码
		new SmsCode().name(pwd, username);
		String password=Md5util.md5(pwd);
		//  发送验证码
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		
		userServiceImpl.updateUser(user);
		
		model.addAttribute("info","修改密码成功");
		return "1";
	}

	@RequestMapping("listcomment")
	public String listcomment() {
		return pefix + "listcomment";
	}
	@RequestMapping("getJobsByType")
	public String getJobsByType(@RequestParam(required=false) String jobtype
			,Model model,HttpServletRequest request) {
		//if(request.getParameter("jobtype")==null)					
		jobs=jobServiceImpl.getJobsByType(jobtype);
		model.addAttribute("jobs", jobs);
		user=(User) request.getSession().getAttribute("user");
		if(user!=null)
			model.addAttribute("user",user);
		return "index";
	}

	@RequestMapping("listjob")
	public String listjob(Model model, @RequestParam Integer currentIndex, @RequestParam Integer jianGe
			,HttpServletRequest request) {
		//page.setCurrentIndex(currentIndex);
		//page.setJianGe(jianGe);
		page=new Page(currentIndex, jianGe);
		jobs = jobServiceImpl.getJobPage(page);
		String str=gson.toJson(jobs);
		System.out.println(str);
		// 获得user
		user=(User) request.getSession().getAttribute("user");
		if(user!=null)
			model.addAttribute("user",user);
		model.addAttribute("jobs", jobs);
		model.addAttribute("currentIndex", currentIndex);

		return "index";
	}
    /*
     *  查找历史订单
     */
	@RequestMapping("myjob")
	public String myjob(Model model, @RequestParam Integer currentIndex
			,@RequestParam(value="uid",required=false) Integer uid,HttpServletRequest request) {
		user=(User) request.getSession().getAttribute("user");
		if(user==null)
		   return redirect + "userloginPage";
		uid=user.getUid();
		String str=gson.toJson(user);
		logger.debug("user的值是"+str);
		//   防止负数
		if(currentIndex<0)
		   currentIndex=0;
		inOrders=ordersServiceImpl.getOrderPhone(uid, currentIndex);
		
		model.addAttribute("user",user);
		model.addAttribute("orders", inOrders);
		model.addAttribute("currentIndex", currentIndex);
		return pefix + "myjob";
	}

	@RequestMapping("userinformation")
	public String userinformation(@RequestParam(required=false) Integer uid,
			HttpServletRequest request,Model model) {
		user=(User) request.getSession().getAttribute("user");
		if(user==null)
		   return redirect + "userloginPage";
		user=userServiceImpl.getUserById(user.getUid());
		logger.debug(user);
		model.addAttribute("loginUser",user);
		return pefix + "userinformation";
	}
	@RequestMapping("showuser")
	public String showuser() {
		return pefix + "showuser";
	}

	@RequestMapping("udetailjob")
	public String udetailjob(Model model,HttpServletRequest request,
			@RequestParam Integer jid) {
		user=(User) request.getSession().getAttribute("user");
		if(user!=null){
			
			job=jobServiceImpl.getJobsByJid(jid);
			model.addAttribute("user",user);
			model.addAttribute("job",job);
		}
		
		return pefix + "udetailjob";
	}
	// 申请报名
	

	@RequestMapping("joinjob")
	public String join(@RequestParam Integer jid,
			@RequestParam Integer bid,@RequestParam Integer lastnum,@RequestParam Integer personnum
			,HttpServletRequest request,Model model) {
	     //   判断是否已报名
		user=userServiceImpl.login(user);
		Orders order1=new Orders();
		order1=ordersServiceImpl.getUidJid(user.getUid(), jid);
		logger.debug("订单"+order1);
		if(order1!=null){
			model.addAttribute("info","你已报名，请勿重复");
			return pefix + "info";
		}
			
		//  personnum  总数   lastnum  当前人数
		if(personnum==lastnum){
			logger.debug("人已满");
			model.addAttribute("info","人已满");
		}else {
			//  1 修改  job 人数
		   lastnum++;
		   jobServiceImpl.addUid(jid, lastnum);
		    //  2  生成订单
		
		//	user=(User) request.getSession().getAttribute("user");
			orders.setBid(bid);
			orders.setJid(jid);
			//  查uid
		
			//  返回完整的user
			orders.setUid(user.getUid());
			orders.setState(0);
			ordersServiceImpl.insertOrder(orders);
			model.addAttribute("info","报名成功，等待审核");
		}
		
		return pefix + "info";
	}
	@RequestMapping("user")
	public String user(HttpServletRequest request,
			Model model) {
	user=(User) request.getSession().getAttribute("user");
	if(user==null)
		return "redirect:userloginPage";
	model.addAttribute("user", user);
	return pefix + "user";
	}

	@RequestMapping("userchange")
	public String userchange(@ModelAttribute User user
			,HttpServletRequest request) {
		logger.debug("before"+user);
		User inUser=new User();
		inUser=(User) request.getSession().getAttribute("user");
		logger.debug("after"+inUser);
		user.setUid(inUser.getUid());
		userServiceImpl.updateUserInflo(user);
		
		return pefix + "userchange";
	}
	@RequestMapping("userchangePage")
	public String userchangePage() {
		return pefix + "userchange";
	}
	@RequestMapping("userloginOut")
	public String userloginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("user");		
		return "redirect:userloginPage";
	}
	@RequestMapping("userchangeFrom")
	public ModelAndView userchangeFrom() {
		return new ModelAndView("user/userchange","command",new User());
	}
	@RequestMapping("userloginPage")
	public String userloginPage() {
		return pefix + "userlogin";
	}

	@RequestMapping("userlogin")
	public String userlogin(@RequestParam String username, @RequestParam String password, HttpServletRequest request) {
		if (logger.isDebugEnabled())
			logger.debug("userlogin");
		logger.debug("user"+user);
		User user=new User();
		user.setUsername(username);
		password=Md5util.md5(password);
		logger.debug("加密"+password);
		user.setPassword(password);
		User inUser = userServiceImpl.login(user);
		
		if (inUser == null) {
			logger.debug("密码错误");
			return pefix + "userlogin";
		} else {
			// 放到session里面
			request.getSession().setAttribute("user",inUser);
			
			Integer currentIndex = 0;
			Integer jianGe = 10;
			// 返回到兼职页
		//	return "redirect:listjob?currentIndex=" + currentIndex + "&&jianGe=" + jianGe;
				return "redirect:index";
		
		}

	}

	@RequestMapping("userregistTo")
	public String userregistTo() {
		return pefix + "userregist";
	}
	@RequestMapping("userregist")
	public String userregist(@RequestParam String username, @RequestParam String password,
			@RequestParam(value = "passcode", required = false) String passcode, HttpServletRequest request
			,Model model) {
		if (logger.isDebugEnabled()){
			logger.debug("userregist");
			logger.debug(username);
			logger.debug(password);
			
		}
		
		
		if(username==""|| password=="")
			return pefix + "userregist";
		
		User user1=new User();
		user.setUsername(username);
		user1=userServiceImpl.login(user);
		if(user1!=null){
			model.addAttribute("info","该账号已注册,可以尝试找回密码");
			return "redirect:userregistTo";
		}
		password=Md5util.md5(password);
		
		user.setPassword(password);
		Integer uid=userServiceImpl.insertUserKey(user);
		user.setUid(uid);
		// 放到session里面
		request.getSession().setAttribute("user", user);
		Integer currentIndex = 0;
		Integer jianGe = 10;
		// 返回到兼职页
		return "redirect:listjob?currentIndex=" + currentIndex + "&&jianGe=" + jianGe;
        
	}
	// 判断是否注册
	@RequestMapping(value="validateuser")
	@ResponseBody
	public String validateuser(@RequestParam String username,
			HttpServletResponse response) {
		User  user=new User();
		user.setUsername(username);
//		PropertySourcesPropertyResolver
		User inUser=userServiceImpl.login(user);
		if(inUser==null){
			// 
			 String as="可以注册";
			 return "1";
	    }
		else {
			String as="该手机号已注册";
			return "0";
		}
		
	}
}
