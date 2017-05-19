package com.jianzhi.entity;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.stereotype.Component;

@Component
public class User {
	public Integer uid;
	public String username; // not null
	public String password; // not null
	public Timestamp registtime;
	public String realname;
	public String gender;
	public String city;
	public String area;
	public String school;
	public String college; // 专业
	public String intoyear;
	public String introduction;
	public String email;
	public String money;
	public int worknum; // 工作次数
	public int goodas; // 好评
	public int badas; // 差评
	public String picurl;
	public int state;

	public Integer getIsStu() {
		return isStu;
	}

	public void setIsStu(Integer isStu) {
		this.isStu = isStu;
	}

	public String role;
	public Date date;
	public String height;
	public Integer isStu; //

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getRegisttime() {
		return registtime;
	}

	public void setRegisttime(Timestamp registtime) {
		this.registtime = registtime;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getIntoyear() {
		return intoyear;
	}

	public void setIntoyear(String intoyear) {
		this.intoyear = intoyear;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public int getWorknum() {
		return worknum;
	}

	public void setWorknum(int worknum) {
		this.worknum = worknum;
	}

	public int getGoodas() {
		return goodas;
	}

	public void setGoodas(int goodas) {
		this.goodas = goodas;
	}

	public int getBadas() {
		return badas;
	}

	public void setBadas(int badas) {
		this.badas = badas;
	}

	public String getPicurl() {
		return picurl;
	}

	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
