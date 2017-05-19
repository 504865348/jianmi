<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/user.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<style>
		.span1{
			display:inline-block;
			width:25%;
		}
		.span2{
			display:block;
		}
	</style>
	<title>修改资料</title>
  </head> 
  <body>
  <script type="text/javascript">
	function checkForm(){
	var gender=document.getElementById("gender").value;
	if(gender==null || gender == ""){
	document.getElementById("spangender").innerHTML = "<font color='red'>× 我不提醒你就不输入性别了吗</font>";
		return false;
		}
	var spanrealname = $("#spanrealname").text(); 
	 if(spanrealname != "√ 好名字" ){ 
	  document.getElementById("spanrealname").innerHTML = "<font color='red'>× 请输入真实姓名</font>";
	  return false;
	  }
	  var spanarea = $("#spanarea").text(); 
	 if(spanarea != "√ 好地区" ){ 
	  document.getElementById("spanarea").innerHTML = "<font color='red'>× 请选择地区</font>";
	  return false;
	  }
	   var spancity = $("#spancity").text(); 
	 if(spancity != "√ 好城市" ){ 
	  document.getElementById("spancity").innerHTML = "<font color='red'>× 请选择城市</font>";
	  return false;
	  }
	  var spanschool = $("#spanschool").text(); 
	 if(spanschool != "√ 好学校" ){ 
	  document.getElementById("spanschool").innerHTML = "<font color='red'>× 请选择学校</font>";
	  return false;
	  }
	  var spancollege = $("#spancollege").text(); 
	 if(spancollege != "√ 好学院" ){ 
	  document.getElementById("spancollege").innerHTML = "<font color='red'>× 请选择学院</font>";
	  return false;
	  }
	  var spanintoyear = $("#spanintoyear").text(); 
	 if(spanintoyear != "√ 好年份" ){ 
	  document.getElementById("spanintoyear").innerHTML = "<font color='red'>× 请选择入学年份</font>";
	  return false;
	  }
	  var spanintroduction = $("#spanintroduction").text(); 
	 if(spanintroduction != "√ 好简介" ){ 
	  document.getElementById("spanintroduction").innerHTML = "<font color='red'>× 请填写个人简介</font>";
	  return false;
	  }
	    var spanemail = $("#spanemail").text(); 
	 if(spanemail != "√ 好邮箱" ){ 
	  document.getElementById("spanemail").innerHTML = "<font color='red'>× 请填写邮箱</font>";
	  return false;
	  }
	  
	
	
	}
	
	
	function checkrealname(){
	var realname=document.getElementById("realname").value;
	if(realname==null || realname == ""){
	document.getElementById("spanrealname").innerHTML = "<font color='red'>× 请输入真实姓名</font>";
		return false;
		}else{
		document.getElementById("spanrealname").innerHTML = "<font color='green'>√ 好名字</font>";
		return true;}
	}
	
	function checkarea(){
	var area=document.getElementById("area").value;
	if(area==null || area == ""){
	document.getElementById("spanarea").innerHTML = "<font color='red'>× 请选择地区</font>";
		return false;
		}else{
		document.getElementById("spanarea").innerHTML = "<font color='green'>√ 好地区</font>";
		return true;}
	}
	
	function checkcity(){
	var city=document.getElementById("city").value;
	if(city==null || city == ""){
	document.getElementById("spancity").innerHTML = "<font color='red'>× 请选择城市</font>";
		return false;
		}else{
		document.getElementById("spancity").innerHTML = "<font color='green'>√ 好城市</font>";
		return true;}
	}
	
	function checkschool(){
	var school=document.getElementById("school").value;
	if(school==null || school == ""){
	document.getElementById("spanschool").innerHTML = "<font color='red'>× 请选择学校</font>";
		return false;
		}else{
		document.getElementById("spanschool").innerHTML = "<font color='green'>√ 好学校</font>";
		return true;}
	}
	
	function checkcollege(){
	var college=document.getElementById("college").value;
	if(college==null || college == ""){
	document.getElementById("spancollege").innerHTML = "<font color='red'>× 请选择学院</font>";
		return false;
		}else{
		document.getElementById("spancollege").innerHTML = "<font color='green'>√ 好学院</font>";
		return true;}
	}
	
	function checkintoyear(){
	var intoyear=document.getElementById("intoyear").value;
	if(intoyear==null || intoyear == ""){
	document.getElementById("spanintoyear").innerHTML = "<font color='red'>× 请选择入学年份</font>";
		return false;
		}else{
		document.getElementById("spanintoyear").innerHTML = "<font color='green'>√ 好年份</font>";
		return true;}
	}
	
	function checkintroduction(){
	var introduction=document.getElementById("introduction").value;
	if(introduction==null || introduction == ""){
	document.getElementById("spanintroduction").innerHTML = "<font color='red'>× 请填写个人简介</font>";
		return false;
		}else{
		document.getElementById("spanintroduction").innerHTML = "<font color='green'>√ 好简介</font>";
		return true;}
	}
	
	function checkemail(){
	var email=document.getElementById("email").value;
	if(email==null || email == ""){
	document.getElementById("spanemail").innerHTML = "<font color='red'>× 请填写邮箱</font>";
		return false;
		}else{
		document.getElementById("spanemail").innerHTML = "<font color='green'>√ 好邮箱</font>";
		return true;}
	}	
	</script>
<div class="center-block"><!-- article -->
	<div>
		<form action="/UserChangeServlet" method="post" onsubmit="return chenckForm()">
   			<div class="panel">
   				<ul class="list-group">
   					<li class="list-group-item">
   						<span class="span1">真实姓名：</span>
   						<span><input  class="jz_input" type="text"
	            name="realname" id="realname" value="${loginUser.realname}" onblur="checkrealname()" ></span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">性别：</span>
   						<span><input type="radio" name="gender" value="男" >男
	           					<input type="radio"name="gender" value="女" >女</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">城市：</span>
   						<span><select class="jz_input" name="city" id="city" onblur="checkcity()"  class="jz_input">
	           				 <option value="镇江市">镇江市</option>
	           				 </select>
	           			</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">地区：</span>
   						<span>
	   						<select  onblur="checkarea()"   class="jz_input" name="area" id="area">
				            <option value="京口区">京口区</option>
				            <option value="润州区">润州区</option>
				            <option value="丹徒区">丹徒区</option>
				            </select>
   						</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">学校：</span>
   						<span>
	   						<select  onblur="checkschool()"   class="jz_input" name="school" id="school">
				            <option value="江苏大学">江苏大学</option>
				            <option value="江苏科技大学">江苏科技大学</option>
				            <option value="镇江高专">镇江高专</option>
				            </select>
   						</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">学院：</span>
   						<span>
   							<select onblur="checkcollege()"   class="jz_input" name="college" id="college">
				            <option value="机械工程学院">机械工程学院</option>
				            <option value="汽车与交通工程学院">汽车与交通工程学院</option>
				            <option value="能源与动力工程学院">能源与动力工程学院</option>
				            <option value="材料科学与工程学院">材料科学与工程学院</option>
				            <option value="电气信息工程学院">电气信息工程学院</option>
				            <option value="食品与生物工程学院">食品与生物工程学院</option>
				            <option value="环境与安全工程学院">环境与安全工程学院</option>
				            <option value="计算机科学与通讯工程学院">计算机科学与通讯工程学院</option>
				            <option value="理学院">理学院</option>
				            <option value="土木工程与力学院">土木工程与力学院</option>
				            <option value="化学化工学院">化学化工学院</option>
				            <option value="管理学院">管理学院</option>
				            <option value="财经学院">财经学院</option>
				            <option value="马克思学院">马克思学院</option>
				            <option value="文法学院">文法学院</option>
				            <option value="外国语学院">外国语学院</option>
				            <option value="艺术学院">艺术学院</option>
				            <option value="教师教育学院">教师教育学院</option>
				            <option value="临床医学院">临床医学院</option>
				            <option value="药学院">药学院</option>
				            <option value="海外教育学院">海外教育学院</option>
				            <option value="京江学院">京江学院</option>
				            <option value="继续教育学院">继续教育学院</option>
				            <option value="体育部">体育部</option>
				            <option value="船舶与海洋工程学院">船舶与海洋工程学院</option>
				            <option value="电子信息学院">电子信息学院</option>
				            <option value="计算机科学与工程学院">计算机科学与工程学院</option>
				            <option value="数理学院">数理学院</option>
				            <option value="冶金与材料工程学院">冶金与材料工程学院</option>
				            <option value="环境与化学工程学院">环境与化学工程学院</option>
				            <option value="土木工程与建筑学院">土木工程与建筑学院</option>
				            <option value="蚕业研究所">蚕业研究所</option>
				            <option value="生物技术学院">生物技术学院</option>
				            <option value="经济管理学院">经济管理学院</option>
				            </select>
   						</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">入学年份：</span>
   						<span>
	   						<select  onblur="checkintoyear()" class="jz_input" name="intoyear" id="intoyear">
					            <option value="2011">2011</option>
					            <option value="2012">2012</option>
					            <option value="2013">2013</option>
					            <option value="2014">2014</option>
					            <option value="2015">2015</option>
					            <option value="2016">2016</option>
				            </select>
   						</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">个人简介：</span>
   						<span>
   							<textarea onblur="checkintroduction()" rows="6" cols="35" name="introduction" id="introduction"  wrap="physical">${loginUser.introduction}</textarea>
   						</span>
   					</li>
   					<li class="list-group-item">
   						<span class="span1">个人邮箱：</span>
   						<span><input onblur="checkemail()" type="text" name="email" id="email" value="${loginUser.email}" class="jz_input"></span>
   					</li>
   					<li class="list-group-item">
   						<span class="span2" id=spanrealname></span>
   						<span class="span2" id=spangender></span>
   						<span class="span2" id=spancity></span>
   						<span class="span2" id=spanarea></span>
   						<span class="span2" id=spanschool></span>
   						<span class="span2" id=spancollege></span>
   						<span class="span2" id=spanintoyear></span>
   						<span class="span2" id=spanintroduction></span>
   						<span class="span2" id=spanemail></span>
   					</li>
   				</ul>
   				<input type="submit" value="修改" class="btn btn-success width-12"/>
    		</div>
   		</form>
	</div><!-- right end -->
</div>
</body>
</html>
