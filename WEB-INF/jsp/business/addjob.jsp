


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<meta name="Keywords" content="">
<meta name="Description" content="">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
<link href="css/jz.css" rel="stylesheet">
<link href="css/user.css" rel="stylesheet">
<link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" />
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="date/calendar.js"></script>
<script src="date/WdatePicker.js"></script>
<script type="text/javascript">
	function checkForm(){
		var spantitle = $("#spantitle").text(); 
	 if(spantitle != "√ 兼职标题" ){ 
	  document.getElementById("spantitle").innerHTML = "<font color='red'>× 请填写兼职标题</font>";
	  return false;
	  }
	  var spanjobtype = $("#spanjobtype").text(); 
	 if(spanjobtype != "√ 兼职类型" ){ 
	  document.getElementById("spanjobtype").innerHTML = "<font color='red'>× 请选择兼职类型</font>";
	  return false;
	  }
	   var spanarea = $("#spanarea").text(); 
	 if(spanarea != "√ 地区" ){ 
	  document.getElementById("spanarea").innerHTML = "<font color='red'>× 请选择地区</font>";
	  return false;
	  }
	   var spansalary = $("#spansalary").text(); 
	 if(spansalary != "√ 时薪" ){ 
	  document.getElementById("spansalary").innerHTML = "<font color='red'>× 请填写时薪</font>";
	  return false;
	  }
	   var spanpersonnum = $("#spanpersonnum").text(); 
	 if(spanpersonnum != "√ 招收总人数" ){ 
	  document.getElementById("spanpersonnum").innerHTML = "<font color='red'>× 请填写招收总人数</font>";
	  return false;
	  }
	    var spancontent = $("#spancontent").text(); 
	 if(spancontent != "√ 兼职内容" ){ 
	  document.getElementById("spancontent").innerHTML = "<font color='red'>× 请填写兼职内容</font>";
	  return false;
	  }
	   var spanask = $("#spanask").text(); 
	 if(spanask != "√ 兼职需求" ){ 
	  document.getElementById("spanask").innerHTML = "<font color='red'>× 请填写兼职需求</font>";
	  return false;
	  }
	   var spanendtime = $("#spanendtime").text(); 
	 if(spanendtime != "√ 报名截止时间" ){ 
	  document.getElementById("spanendtime").innerHTML = "<font color='red'>× 请填写报名截止时间</font>";
	  return false;
	  }
	   var spanworktime = $("#spanworktime").text(); 
	 if(spanworktime != "√ 工作时间" ){ 
	  document.getElementById("spanworktime").innerHTML = "<font color='red'>× 请填写工作时间</font>";
	  return false;
	  }
	  
	    var spanworkplace = $("#spanworkplace").text(); 
	 if(spanworkplace != "√ 工作地点" ){ 
	  document.getElementById("spanworkplace").innerHTML = "<font color='red'>× 请填写工作地点</font>";
	  return false;
	  }
	   var spangender = $("#spangender").text(); 
	 if(spangender != "√ 性别需求" ){ 
	  document.getElementById("spangender").innerHTML = "<font color='red'>× 请填写性别需求</font>";
	  return false;
	  }
	
	  
	  
	  
	  
	  
	  }
	
	function checktitle(){
	var title=document.getElementById("title").value;
	if(title==null || title == ""){
	document.getElementById("spantitle").innerHTML = "<font color='red'>× 请填写兼职标题</font>";
		return false;
		}else{
		document.getElementById("spantitle").innerHTML = "<font color='green'>√ 兼职标题</font>";
		return true;}
	}
	
	function checkjobtype(){
	var jobtype=document.getElementById("jobtype").value;
	if(jobtype==null || jobtype == ""){
	document.getElementById("spanjobtype").innerHTML = "<font color='red'>× 请选择兼职类型</font>";
		return false;
		}else{
		document.getElementById("spanjobtype").innerHTML = "<font color='green'>√ 兼职类型</font>";
		return true;}
	}
	function checkarea(){
	var area=document.getElementById("area").value;
	if(area==null || area == ""){
	document.getElementById("spanarea").innerHTML = "<font color='red'>× 请选择地区</font>";
		return false;
		}else{
		document.getElementById("spanarea").innerHTML = "<font color='green'>√ 地区</font>";
		return true;}
	}
	
	function checksalary(){
	var salary=document.getElementById("salary").value;
	if(salary==null || salary == ""){
	document.getElementById("spansalary").innerHTML = "<font color='red'>× 请填写时薪</font>";
		return false;
		}else{
		document.getElementById("spansalary").innerHTML = "<font color='green'>√ 时薪</font>";
		return true;}
	}	
	function checkpersonnum(){
	var personnum=document.getElementById("personnum").value;
	if(personnum==null || personnum == ""){
	document.getElementById("spanpersonnum").innerHTML = "<font color='red'>× 请填写招收总人数</font>";
		return false;
		}else{
		document.getElementById("spanpersonnum").innerHTML = "<font color='green'>√ 招收总人数</font>";
		return true;}
	}
	
	function checkcontent(){
	var content=document.getElementById("content").value;
	if(content==null || content == ""){
	document.getElementById("spancontent").innerHTML = "<font color='red'>× 请填写兼职内容</font>";
		return false;
		}else{
		document.getElementById("spancontent").innerHTML = "<font color='green'>√ 兼职内容</font>";
		return true;}
	}
	function checkask(){
	var ask=document.getElementById("ask").value;
	if(ask==null || ask== ""){
	document.getElementById("spanask").innerHTML = "<font color='red'>× 请填写兼职需求</font>";
		return false;
		}else{
		document.getElementById("spanask").innerHTML = "<font color='green'>√ 兼职需求</font>";
		return true;}
	}
	function checkendtime(){
	var endtime=document.getElementById("endtime").value;
	if(endtime==null || endtime == ""){
	document.getElementById("spanendtime").innerHTML = "<font color='red'>× 请填写报名截止时间</font>";
		return false;
		}else{
		document.getElementById("spanendtime").innerHTML = "<font color='green'>√ 报名截止时间</font>";
		return true;}
	}
	function checkinterviewtime(){
	var interviewtime=document.getElementById("interviewtime").value;
	if(interviewtime==null || interviewtime == ""){
	document.getElementById("spaninterviewtime").innerHTML = "<font color='red'>× 若无面试，则不用填写</font>";
		return true;
		}else{
		document.getElementById("spaninterviewtime").innerHTML = "<font color='green'>√ 面试时间</font>";
		return true;}
	}
	function checktraintime(){
	var traintime=document.getElementById("traintime").value;
	if(traintime==null || traintime == ""){
	document.getElementById("spantraintime").innerHTML = "<font color='red'>× 若无培训，则不用填写</font>";
		return true;
		}else{
		document.getElementById("spantraintime").innerHTML = "<font color='green'>√ 培训时间</font>";
		return true;}
	}	
	
	function checkworktime(){
	var worktime=document.getElementById("worktime").value;
	if(worktime==null || worktime == ""){
	document.getElementById("spanworktime").innerHTML = "<font color='red'>× 请填写工作时间</font>";
		return false;
		}else{
		document.getElementById("spanworktime").innerHTML = "<font color='green'>√ 工作时间</font>";
		return true;}
	}	
	function checkworkplace(){
	var workplace=document.getElementById("workplace").value;
	if(workplace==null || workplace == ""){
	document.getElementById("spanworkplace").innerHTML = "<font color='red'>× 请填写工作地点</font>";
		return false;
		}else{
		document.getElementById("spanworkplace").innerHTML = "<font color='green'>√ 工作地点</font>";
		return true;}
	}	
	function checkgender(){
	var gender=document.getElementById("gender").value;
	if(gender==null || gender == ""){
	document.getElementById("spangender").innerHTML = "<font color='red'>× 请选择性别需求</font>";
		return false;
		}else{
		document.getElementById("spangender").innerHTML = "<font color='green'>√ 性别需求</font>";
		return true;}
	}	
			
</script>
<title>商家中心</title>
</head>
<body style="background: #EBE9E5;">
	<jsp:include page="../master/b_top.jsp" />
	<div class="wrap center-block">
		<!-- article -->
		<div class="list-group width-2 pull-left">
			<jsp:include page="../master/b_navside.jsp" />
		</div>
		<div class="width-10 pull-right" style="background: #fff;">
			<c:if test="${empty loginBusiness}">
				<script>
			/* alert('您还没有登录!');
			window.location.href = "/business/businesslogin.jsp"; */
		</script>
			</c:if>
			<c:if test="${ empty loginBusiness }">
				<form:form action="addAddbusiness" method="post"
					onsubmit="return checkForm();">
					<div class="" style="width: 100%; overflow: hidden;">
						<!-- article -->
						<table class="aj_info">
							<tr>
								<td class="width-2">兼职标题：</td>
								<td class="width-6"><input type="text" name="title"
									id="title" onblur="checktitle()" class="jz_input"
									style="width: 300px;" /><span
									style="display: inline-block; margin-left: 10px; color: #ddd">比如：某某公司招聘发单员</span>
								</td>
								<td class="width-3"><span id="spantitle"></span></td>
							</tr>
							<tr>
								<td>兼职分类：</td>
								<td><select name="jobtype" id="jobtype"
									onblur="checkjobtype()" class="jz_input">

										<option value="1">服务员</option>
										<option value="2">发单员</option>
										<option value="3">家教</option>
										<option value="4">模特</option>
										<option value="5">礼仪</option>
										<option value="6">主持</option>
										<option value="7">导购</option>
										<option value="8">理货员</option>
										<option value="9">送餐员</option>
										<option value="10">促销</option>
										<option value="11">销售</option>
										<option value="12">文员</option>
										<option value="13">设计</option>
										<option value="14">保安</option>
										<option value="15">现场协助</option>
										<option value="16">话务员</option>
										<option value="17">翻译</option>
										<option value="18">客服</option>
										<option value="19">演出</option>
										<option value="20">校园主管</option>
										<option value="21">其他</option>
								</select></td>
								<td><span id="spanjobtype"></span></td>
							</tr>
							<tr>
								<td>兼职地区：</td>
								<td><select name="area" id="area" onblur="checkarea()"
									class="jz_input">
										<option value="京口区">京口区</option>
										<option value="润州区">润州区</option>
										<option value="丹徒区">丹徒区</option>
								</select></td>
								<td><span id="spanarea"></span></td>
							</tr>
							<tr>
								<td>兼职时薪：</td>
								<td><input type="text" name="salary" id="salary"
									onblur="checksalary()" class="jz_input" /></td>
								<td><span id="spansalary"></span></td>
							</tr>
							<tr>
								<td>招收总人数：</td>
								<td><input type="text" name="personnum" id="personnum"
									onblur="checkpersonnum()" class="jz_input" /><span
									style="display: inline-block; margin-left: 10px; color: #ddd">/人(请填入数字)</span>
								</td>
								<td><span id="spanpersonnum"></span></td>
							</tr>
							<tr>
								<td>兼职内容：</td>
								<td>
									<div class="width-6 pull-left">
										<textarea rows="6" cols="40" name="content" id="content"
											onblur="checkcontent()" class="form-control" wrap="physical"></textarea>
									</div>
									<div class="width-5 pull-left">
										<span style="display: block;">比如：在万达广场发单，每人限发一张</span>
									</div>
									<div class="clearfix"></div>
								</td>
								<td><span id="spancontent"></span></td>
							</tr>
							<tr>
								<td>任职要求：</td>
								<td>
									<div class="width-6 pull-left">
										<textarea id="ask" rows="6" cols="40" name="ask"
											class="form-control" onblur="checkask()" wrap="physical"></textarea>
									</div>
									<div class="width-5 pull-left">
										<span style="display: block;">比如：在万达广场发单，每人限发一张</span>
									</div>
									<div class="clearfix"></div>
								</td>
								<td><span id="spanask"></span></td>
							</tr>
							<tr>
								<td>报名截止时间：</td>
								<td><input type="text" name="endtime" id="endtime"
									onblur="checkendtime()" class="jz_input"
									onclick="WdatePicker()" /> <span
									style="display: inline-block; margin-left: 10px; color: #ddd">比如：2015年8月25日</span>
								</td>
								<td><span id="spanendtime"></span></td>
							</tr>
							<tr>
								<td>面试时间：</td>
								<td><input type="text" name="interviewtime"
									id="interviewtime" onblur="checkinterviewtime()"
									class="jz_input" onclick="WdatePicker()" /> <span
									style="display: inline-block; margin-left: 10px; color: #ddd">比如：2015年8月25日</span>
								</td>
								<td><span id="spaninterviewtime"></span></td>
							</tr>
							<tr>
								<td>培训时间：</td>
								<td><input type="text" name="traintime" id="traintime"
									onblur="checktraintime()" class="jz_input"
									onclick="WdatePicker()" /> <span
									style="display: inline-block; margin-left: 10px; color: #ddd">比如：2015年8月25日
										&nbsp或者 &nbsp无</span></td>
								<td><span id="spantraintime"></span></td>
							</tr>
							<tr>
								<td>工作时间：</td>
								<td><input type="text" name="worktime" id="worktime"
									onblur="checkworktime()" class="jz_input"
									onclick="WdatePicker()" /> <span
									style="display: inline-block; margin-left: 10px; color: #ddd">比如：8:00~22:00</span>
								</td>
								<td><span id="spanworktime"></span></td>
							</tr>
							<tr>
								<td>工作地点：</td>
								<td><input type="text" name="workplace" id="workplace"
									onblur="checkworkplace()" class="jz_input" /> <span
									style="display: inline-block; margin-left: 10px; color: #ddd">比如：万达广场</span>
								</td>
								<td><span id="spanworkplace"></span></td>
							</tr>
							<tr>
								<td>性别需求：</td>
								<td><select name="gender" id="gender"
									onblur="checkgender()">
										<option value="男">男</option>
										<option value="女">女</option>
										<option value="不限">不限</option>
								</select></td>
								<td><span id="spangender"></span></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="发布兼职"
									class="btn btn-success width-4" /></td>
							</tr>
						</table>
					</div>
				</form:form>
			</c:if>
		</div>
		<div class="clearfix"></div>
	</div>
	<jsp:include page="../master/b_foot.jsp" />
</html>
