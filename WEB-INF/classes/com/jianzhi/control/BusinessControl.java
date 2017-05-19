package com.jianzhi.control;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.jianzhi.entity.Admin;
import com.jianzhi.entity.Business;
import com.jianzhi.entity.Comment;
import com.jianzhi.entity.Job;
import com.jianzhi.entity.Orders;
import com.jianzhi.entity.Page;
import com.jianzhi.service.BusinessServiceImpl;
import com.jianzhi.service.CommentServiceImpl;
import com.jianzhi.service.JobServiceImpl;
import com.jianzhi.service.OrdersServiceImpl;
import com.jianzhi.service.UserServiceImpl;
import com.jianzhi.utils.Md5util;

/*
 *  15751005437
 *  123456   
 *  商家登入
 * 
 * */
@Controller
public class BusinessControl {
	final String ReDirect = "redirect:";
	@Resource
	Page page;
	@Resource
	Business inBusiness;
	@Resource
	Gson gson;
	@Resource
	List<Business> bList;
	@Resource
	List<Orders> orders;
	@Resource
	BusinessServiceImpl businessServiceImpl;
	@Resource
	List<Job> jobs;
	@Resource
	Job injob;
	@Resource
	Comment inComment;
	@Resource
	OrdersServiceImpl ordersServiceImpl;
	@Resource
	JobServiceImpl jobServiceImpl;
	@Resource
	UserServiceImpl userServiceImpl;
	@Resource
	CommentServiceImpl commentServiceImpl;
	org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(BusinessControl.class);
	private static int num = 0;

	@RequestMapping("insertBusiness")
	@ResponseBody
	public void insertBusiness(@RequestBody Business business) {
		businessServiceImpl.insertBusiness(business);
	}

	@RequestMapping("getBusiness")
	@ResponseBody
	public List<Business> getBusiness(@RequestBody Page page) {
		bList = businessServiceImpl.getBusiness(page);
		return bList;

	}

	@RequestMapping("getBusInfo")
	@ResponseBody
	public Business getBus(@RequestParam Integer bid) {
		// bList = businessServiceImpl.getBusiness(page);
		inBusiness = businessServiceImpl.getBusInfo(bid);
		return inBusiness;

	}

	@RequestMapping("getJobsByBid")
	@ResponseBody
	public List<Job> getJobsByBid(@RequestParam Integer bid) {
		jobs = businessServiceImpl.getJobsByBid(bid);
		return jobs;

	}

	@RequestMapping("login")
	@ResponseBody
	public Business login(@RequestBody Business business) {
		business = businessServiceImpl.login(business);
		return business;

	}

	// 上面安卓客户端接口
	// 下面网页管理端接口
	// 导航
	@RequestMapping("AdminAddbusinessBB")
	ModelAndView admin3() {
		return new ModelAndView("business/business", "command", new Business());

	}
	//
	// 添加成功后重定向到首页

	@RequestMapping("addAddbusiness")
	String add(@ModelAttribute Business business) {
		businessServiceImpl.insertBusiness(business);
		String str = gson.toJson(business);
		logger.info("ss" + str);
		return "redirect:AdminIndex";

	}

	@RequestMapping("updatebusiness")
	String update(@ModelAttribute Business business) {
		businessServiceImpl.updateBusiness(business);
		String str = gson.toJson(business);
		logger.info("ss" + str);
		return "redirect:AdminAddbusinessBB";

	}

	@RequestMapping("updatePassView2")
	String upPass() {

		return "business/bchangepassword";

	}

	@RequestMapping("updatePass")
	String updatePass(@ModelAttribute Business business) {
		// 修改密码没有问题
		business.setBid(2);
		businessServiceImpl.updatePass(business);
		String str = gson.toJson(business);
		logger.info("ss" + str);
		return "redirect:AdminAddbusinessBB";

	}

	@RequestMapping("updatePassView")
	String getInfo(@RequestParam Integer bid, Model model) {
		inBusiness = businessServiceImpl.getBusInfo(bid);
		model.addAttribute("business", inBusiness);
		return "business/binformation";

	}

	// @RequestMapping(value = "AdminListbusiness", method = RequestMethod.GET,
	// consumes = "application/text")
	@RequestMapping(value = "AdminListbusiness")
	public String getBusiness2(@RequestParam Integer currentIndex, @RequestParam Integer jianGe, Model model) {
		Page page = new Page(currentIndex, jianGe);
		bList = businessServiceImpl.getBusiness(page);
		model.addAttribute("businesses", bList);
		model.addAttribute("page", page);
		return "admin/listbusiness";

	}

	@RequestMapping("Jobdetail")
	String admin4(@RequestParam Integer jid, Model model) {

		injob = jobServiceImpl.getJobsByJid(jid);
		model.addAttribute("job", injob);
		return "admin/bdetailjob";

	}

	// 表单提交 需要这个
	@RequestMapping("test")
	ModelAndView admin8() {

		return new ModelAndView("admin/test", "command", new Admin());

	}

	@RequestMapping("businessloginView")
	String login() {
		System.out.println("aaaaaaaaaaaaaaaa");
		System.out.println("aaaaaaaaaaaaaaaa");
		System.out.println("aaaaaaaaaaaaaaaa");
		System.out.println("aaaaaaaaaaaaaaaa");
		System.out.println("aaaaaaaaaaaaaaaa");
		return "business/businesslogin";

	}

	@RequestMapping("businessloginView1")
	String yanlogin(@ModelAttribute Business business, HttpServletRequest request,
			RedirectAttributes redirectAttributes) {
		String pass=business.getPassword();
		pass=Md5util.md5(pass);
		business.setPassword(pass);
		inBusiness = businessServiceImpl.login(business);
		if (inBusiness != null) {
			// request.getSession().setMaxInactiveInterval(120);
			request.getSession().setAttribute("business", inBusiness);
			// 从定向到后台首页
			redirectAttributes.addFlashAttribute("business", inBusiness);
			return "redirect:AdminAddbusinessBB";
		}
		return "business/businesslogin";
	}

	// 商家全部在这里写
	@RequestMapping("businessaddjobBB")
	String addJob() {
		System.out.println("asddasdas");
		return "business/addjob";

	}

	// 商家信息
	@RequestMapping("binformationBB")
	String binformation(HttpServletRequest request, Model model) {
		// 从session 里面获取
		// 不用到数据库里面找
		inBusiness = (Business) request.getSession().getAttribute("business");
		int bid = inBusiness.getBid();

		num++;
		System.out.println("1111111111111111111111111111" + num + "访问");
		String str = gson.toJson(inBusiness);
		System.out.println(str);
		inBusiness = businessServiceImpl.getBusInfo(bid);
		model.addAttribute("business", inBusiness);

		return "business/binformation";

	}

	@RequestMapping("bchangeBB")
	String bchange(HttpServletRequest request, Model model) {
		// 读取商家原来的信息
		inBusiness = (Business) request.getSession().getAttribute("business");

		model.addAttribute("business", inBusiness);

		return "business/bchange";

	}

	// 提交修改
	// 涉及文件上传
	@RequestMapping("bchange2BB")
	String bchange2(Model model) {

		// 从定向到首页
		return "redirect:AdminAddbusinessBB";

	}

	// 到修改界面
	@RequestMapping("bchangepasswordBB")
	String bchangepassword(Model model) {

		// 从定向到首页
		return "business/bchangepassword";

	}

	// 提交修改
	@RequestMapping("bchangepassword2BB")
	String bchangepassword2(@RequestParam String password, Model model, HttpServletRequest request) {

		// 从定向到首页
		inBusiness = (Business) request.getSession().getAttribute("business");
		inBusiness.setPassword(password);
		businessServiceImpl.updateBusiness(inBusiness);

		return "redirect:AdminAddbusinessBB";

	}

	@SuppressWarnings("unused")
	@RequestMapping("listjobBB")
	String listjob(@RequestParam Integer currentIndex, @RequestParam Integer jianGe, Model model,
			HttpServletRequest request) {
		inBusiness = (Business) request.getSession().getAttribute("business");
		/*
		 * page.setJianGe(jianGe); page.setCurrentIndex(currentIndex);
		 */
		// 返回总的记录数

		Page page = new Page(currentIndex, jianGe);
		int row = jobServiceImpl.getRow();
		// 在row 里面进行计算
		page.setRow(row);
		// jobs = jobServiceImpl.getJobPage(page);
		// bid 商家
		Integer businessid = inBusiness.getBid();
		jobs = jobServiceImpl.getJobsFenye(businessid, currentIndex, jianGe);
		model.addAttribute("page", page);
		model.addAttribute("jobs", jobs);
		model.addAttribute("business", inBusiness);
		return "business/listjob";

	}

	@RequestMapping("jobinformationBB")
	String jobinformation(Model model, @RequestParam Integer bid, @RequestParam Integer currentIndex,
			HttpServletRequest request) {
		// 多表关联
		// 从定向到首页
		inBusiness = (Business) request.getSession().getAttribute("business");
        if(inBusiness==null)
        	return ReDirect+"businessloginView";
		Page page = new Page(currentIndex, 5);
		//orders = ordersServiceImpl.getFour(bid, page.getCurrentIndex());
		orders=ordersServiceImpl.getOrdersjobinfamation(bid, page.getCurrentIndex());
		String str = gson.toJson(orders);
		System.out.println(str);
		model.addAttribute("page", page);
		model.addAttribute("business", inBusiness);
		model.addAttribute("orders", orders);
		return "business/jobinformation";

	}

	@RequestMapping("logoutBB")
	String logOut(HttpServletRequest request) {
		request.getSession().removeAttribute("business");

		return "redirect:businessloginView";

	}
	// 文件上传

	@RequestMapping("fileUpload")
	String fileView() throws IOException {
		List<Business> businesses = businessServiceImpl.getBusFen();
		String str = gson.toJson(businesses);
		System.out.println(str);

		return "business/file";

	}

	@RequestMapping("fileUpload1")
	String file(@RequestParam("file") CommonsMultipartFile file, @RequestParam("desc") String desc,
			HttpServletRequest request) throws IOException {

		Long startTime = System.currentTimeMillis();
		System.out.println("当前时间     " + startTime);
		String paString = request.getContextPath();
		System.out.println("adsdadas" + paString);
		// /jianzhi
		ServletContext sc = request.getSession().getServletContext();

		String paString2 = sc.getRealPath("upload") + "/8/" + file.getOriginalFilename();
		System.out.println("@@@@@@@@@@@@" + paString2);
		String filePath = "E:/java/" + file.getOriginalFilename();
		System.out.println("desc" + desc);
		System.out.println("名字" + file.getOriginalFilename());
		String filePath3 = "upload/8/" + file.getOriginalFilename();
		// System.out.println("输入流" + file.getInputStream());
		File file2 = new File(filePath3);
		if (!file2.exists())
			file2.mkdirs();
		file.transferTo(file2);

		Long endTime = System.currentTimeMillis();
		String time = String.valueOf(endTime - startTime);
		System.out.println("所需的时间" + time);
		return "business/file";

	}

	@RequestMapping("mangfile")
	String mangfile(@RequestParam("file") CommonsMultipartFile file[]) {
		String[] str = new String[4];
		for (int i = 0; i < file.length; i++) {
			String st = file[i].getOriginalFilename();
			System.out.println("第几个文件" + i + "wenjianm," + st);

		}
		return "business/file";

	}

	@RequestMapping("BusChangeBB")
	String BusChangeBB(@RequestParam("file") CommonsMultipartFile file[], HttpServletRequest request)
			throws IllegalStateException, IOException {
		inBusiness = (Business) request.getSession().getAttribute("business");
		String bname = request.getParameter("bname");
		String city = request.getParameter("city");
		String area = request.getParameter("area");
		String address = request.getParameter("address");
		String person = request.getParameter("person");
		String pertel = request.getParameter("pertel");
		String summary = request.getParameter("summary");
		inBusiness.setBname(bname);
		inBusiness.setCity(city);
		inBusiness.setArea(area);
		inBusiness.setAddress(address);
		inBusiness.setPerson(person);
		inBusiness.setPertel(pertel);
		inBusiness.setSummary(summary);
		// 进行文件处理
		int bid = inBusiness.getBid();

		String[] strs = new String[3];
		for (int i = 0; i < file.length; i++) {
			String str = file[i].getOriginalFilename();
			strs[i] = "E:/upload/" + bid + "/" + file[i].getOriginalFilename();
			File file2 = new File(strs[i]);
			if (!file2.exists()) {
				file2.mkdirs();
			}
			file[i].transferTo(file2);

			System.out.println(str);
		}
		inBusiness.setPic1(strs[0]);
		inBusiness.setPic2(strs[1]);
		inBusiness.setPic3(strs[2]);
		businessServiceImpl.updateBusinessInfo(inBusiness);

		return ReDirect + "bchangeBB";

	}

	@RequestMapping("busJieShouBB")
	String busJieShou(@RequestParam Integer oid, @RequestParam Integer state, @RequestParam Integer currentIndex,
			@RequestParam(required = false) Integer jid, @RequestParam(required = false) Integer lastnum,
			@RequestParam(required = false) Integer personnum, @RequestParam(required = false) Integer uid, Model model,
			HttpServletRequest request) {
		inBusiness = (Business) request.getSession().getAttribute("business");
		Integer bid = inBusiness.getBid();
		Page page = new Page(currentIndex, 3);
	//	orders = ordersServiceImpl.getFour(bid, page.getCurrentIndex());

		// 根据人数 判断
		if (state == 1) {
			// 接受
			if (lastnum < personnum) {
				// 还可以加人
				lastnum++;
				jobServiceImpl.addUid(jid, lastnum);
				//
				ordersServiceImpl.updateState(state, oid);

			} else {
				model.addAttribute("msg", "人已满");

			}

		}
		// 拒绝
		if (state == 4) {
			ordersServiceImpl.updateState(state, oid);
			model.addAttribute("msg", "商家已经拒绝了你的申请");
			// 同时还要告诉user
			// 从 order表读取

		}
		// 任务成功
		if (state == 2) {
			// 不用
			Integer worknum = 0;
			// user 工作次数加1
			userServiceImpl.addWorkNum(worknum, uid);

			ordersServiceImpl.updateState(state, oid);
			model.addAttribute("msg", "任务成功，请评价");

		}
		// 任务失败
		if (state == 3) {
			ordersServiceImpl.updateState(state, oid);
			model.addAttribute("msg", "任务失败，请评价");

		}

		// 依然返回当前界面
		model.addAttribute("page", page);
		model.addAttribute("business", inBusiness);
		model.addAttribute("orders", orders);
		// inBusiness = (Business)
		// request.getSession().getAttribute("business");
		// int bid = inBusiness.getBid();
		String uri = ReDirect + "jobinformationBB?" + "bid=" + bid + "&currentIndex=" + currentIndex;
		System.out.println(uri);

		return uri;

	}

	// 评价
	@RequestMapping("busCommentBB")
	String busComment(HttpServletRequest request, @RequestParam Integer cid, @RequestParam Integer uid,
			@RequestParam Integer currentIndex) throws UnsupportedEncodingException {
		//
		// 对用户好评 差评
		// @RequestParam Integer bid,
		request.setCharacterEncoding("utf-8");
		String choic1 = request.getParameter("choice");
		Integer choice = Integer.parseInt(choic1);
		String content = request.getParameter("content");
		System.out.println(content);
		userServiceImpl.userComment(choice, uid);
		// 写入评论
		inComment.setCid(cid);
		inComment.setContent(content);
		String str = gson.toJson(inComment);
		System.out.println(str);

		commentServiceImpl.updateComment(inComment);
		// String uri = ReDirect + "jobinformationBB?cid=" + cid + "&uid=" + uid
		// + "&currentIndex=" + currentIndex;
		// bid
		inBusiness = (Business) request.getSession().getAttribute("business");
		int bid = inBusiness.getBid();
		String uri = ReDirect + "jobinformationBB?" + "bid=" + bid + "&currentIndex=" + currentIndex;
		System.out.println(uri);

		return uri;
	}

	@RequestMapping("busJieShou1BB")
	String busJieShou(@ModelAttribute Orders orders, Model model) {
		// 根据人数 判断
		// Job job=new Job();
		injob = orders.getJob();
		if (injob.getLastnum() < injob.getPersonnum()) {
			// 人未满
			int oid = orders.getOid();
			int state = orders.getState();
			ordersServiceImpl.updateState(state, oid);
			// 采用 ajax

		} else {
			model.addAttribute("msg", "人已满");

		}
		// 依然返回当前界面
		return "business/jobinformation";

	}

}
