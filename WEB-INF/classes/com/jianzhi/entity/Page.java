package com.jianzhi.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Page {
	public static final int NUMPERPAGE = 10; //
	private int jianGe;

	public int getRow() {
		return row;
	}

	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setRow(int row) {

		if (row % jianGe == 0) {
			sumYe = row / jianGe;
			lastIndex = (sumYe - 1) * jianGe;
		} else {
			sumYe = row / jianGe;
			lastIndex = sumYe * jianGe;
			sumYe++;
		}
		this.row = row;
	}

	public int getCurrentYe() {
		return currentYe;
	}

	public void setCurrentYe(int currentYe) {
		this.currentYe = currentYe;
	}

	public int getSumYe() {
		return sumYe;
	}

	public void setSumYe(int sumYe) {
		this.sumYe = sumYe;
	}

	private int currentIndex;// 索引
	private int row;
	private int currentYe;// 当前页
	private int sumYe;
	private int lastIndex;

	public int getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public Page(int currentIndex, int jianGe) {
		super();
		if (currentIndex < 0)
			currentIndex = 0;
		this.jianGe = jianGe;
		this.currentIndex = currentIndex;
	}

	private int pNum; //
	private int totalPageNum; //
	private int totalRecordNum; //
	private List<User> users; //
	private List<Business> businesses;
	private List<Orders> orders;
	private List<Job> jobs;
	private List<Comment> comments;

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public int getTotalPageNum() {
		return totalPageNum;
	}

	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}

	public int getTotalRecordNum() {
		return totalRecordNum;
	}

	public void setTotalRecordNum(int totalRecordNum) {
		this.totalRecordNum = totalRecordNum;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Business> getBusinesses() {
		return businesses;
	}

	public void setBusinesses(List<Business> businesses) {
		this.businesses = businesses;
	}

	public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}

	public static int getNumperpage() {
		return NUMPERPAGE;
	}

	public int getJianGe() {
		return jianGe;
	}

	public void setJianGe(int jianGe) {
		this.jianGe = jianGe;
	}

	public int getCurrentIndex() {
		return currentIndex;
	}

	public void setCurrentIndex(int currentIndex) {
		this.currentIndex = currentIndex;
	}

}
