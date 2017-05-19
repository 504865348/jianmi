<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
 <head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="兼米网 镇江兼职平台">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
	<script src="/date/calendar.js"></script>
	<script src="/date/WdatePicker.js"></script>
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
  <body style="background:#EBE9E5;">
<div class="center-block"><!-- article -->
	<div style="background:#fff;">
		<c:if test="${empty loginBusiness}">
		<script>
			alert('您还没有登录!');
			window.location.href = "/business/businesslogin.jsp";
		</script>
	</c:if>
	<c:if test="${not empty loginBusiness }">
		<form action="/AddJobServlet" method="post"
			 onsubmit="return checkForm();">
			<div >
				<!-- article -->
				<table class="table">
					<tr>
						<td>兼职标题：</td>
					</tr>
					<tr>
						<td><input type="text" name="title" id="title" onblur="checktitle()" class="form-control" /><span
							style="display:inline-block;margin-left:10px;color:#ddd">比如：某某公司招聘发单员</span>
						</td>
					</tr>
					<tr>
						<td><span id="spantitle"></span></td>
					</tr>
					<tr>
						<td>兼职分类：</td>
					</tr>
					<tr>
						<td><select name="jobtype" id="jobtype" onblur="checkjobtype()" class="form-control">
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
					</tr>
					<tr>
						<td><span id="spanjobtype"></span></td>
					</tr>
					<!-- end type -->
					<tr>
						<td>兼职地区：</td>
					</tr>
					<tr>
						<td><select name="area" id="area" onblur="checkarea()" class="form-control">
								<option value="京口区">京口区</option>
								<option value="润州区">润州区</option>
								<option value="丹徒区">丹徒区</option>
						</select></td>
					</tr>
					<tr>
						<td><span id="spanarea"></span></td>
					</tr>
					<!-- end area -->
					<tr>
						<td>兼职时薪：</td>
					</tr>
					<tr>
						<td><input type="text" name="salary" id="salary" onblur="checksalary()" class="form-control"/>
						</td>
					</tr>
					<tr>
						<td><span id="spansalary"></span></td>
					</tr>
					<!--end 兼职时薪 -->
					<tr>
						<td>招收总人数：</td>
					</tr> 
					<tr>
						<td><input type="text" name="personnum" id="personnum" onblur="checkpersonnum()" class="form-control"/><span
							style="display:inline-block;margin-left:10px;color:#ddd">/人(请填入数字)</span>
						</td>
					</tr>
					<tr>
						<td><span id="spanpersonnum"></span></td>
					</tr>
					<!-- end 招收人数 -->
					<tr>
						<td>兼职内容：</td>
					</tr> 
					<tr>
						<td>
								<textarea rows="6" cols="40" name="content" id="content" onblur="checkcontent()" class="form-control" wrap="physical"></textarea>
								<span style="display:block;">比如：在万达广场发单，每人限发一张</span>
						</td>
					</tr> 
					<tr>
							<td><span id="spancontent"></span></td>
					</tr>
					<!-- end 兼职内容 -->
					<tr>
						<td>任职要求：</td>
					</tr> 
					<tr>
						<td>				
							<textarea  id="ask"rows="6" cols="40" name="ask" class="form-control" onblur="checkask()" wrap="physical" ></textarea>
							<span style="display:block;">比如：在万达广场发单，每人限发一张</span>
						</td>
					</tr> 
					<tr>
							<td><span id="spanask"></span></td>
					</tr>
					<!-- end 任务要求 -->
					<tr>
						<td>报名截止时间：</td>
					</tr> 
					<tr>
						<td>
							<input type="text" name="endtime" id="endtime" onblur="checkendtime()" class="form-control" onclick="WdatePicker()"/> 
							<span>比如：2015年8月25日</span>
						</td>
					</tr> 
					<tr>
						<td><span id="spanendtime"></span></td>
					</tr>
					<!-- end 报名时间 -->
					<tr>
						<td>面试时间：</td>
					</tr> 
					<tr>
						<td><input type="text" name="interviewtime" id="interviewtime" onblur="checkinterviewtime()" class="form-control" onclick="WdatePicker()" />
							<span style="display:block;">比如：2015年8月25日</span>
						</td>
					</tr> 
					<tr>
						<td><span id="spaninterviewtime"></span></td>
					</tr>
					<!-- end 面试时间 -->
					<tr>
						<td>培训时间：</td>
					</tr> 
					<tr>
						<td><input type="text" name="traintime" id="traintime" onblur="checktraintime()" class="form-control" onclick="WdatePicker()"/>
							<span style="display:block;">比如：2015年8月25日
								&nbsp或者 &nbsp无</span></td>
					</tr> 
					<tr>
								<td><span id="spantraintime"></span></td>
					</tr>
					<!-- end 培训时间 -->
					<tr>
						<td>工作时间：</td>
					</tr> 
					<tr>
						<td><input type="text" name="worktime" id="worktime" onblur="checkworktime()" class="form-control" /> <span
							style="display:block;">比如：8:00~22:00</span>
						</td>
					</tr> 
					<tr>
						<td><span id="spanworktime"></span></td>
					</tr>
					<!-- end 培训时间 -->
					<tr>
						<td>工作地点：</td>
					</tr> 
					<tr>
						<td><input type="text" name="workplace" id="workplace" onblur="checkworkplace()" class="form-control" />
							<span style="display:block;">比如：万达广场</span>
						</td>
					</tr> 
					<tr>
						<td><span id="spanworkplace"></span></td>
					</tr>
					<!-- end 工作时间 -->
					<tr>
						<td>性别需求：</td>
					</tr> 
					<tr>
						<td><select name="gender" id="gender" onblur="checkgender()" class="form-control" >
								<option value="男">男</option>
								<option value="女">女</option>
								<option value="不限">不限</option>
						</select></td>
					</tr> 
					<tr>
						<td><span id="spangender"></span></td>
					</tr>
					<tr>
						<td colspan="3"><input type="submit" value="发布兼职"
							class="btn bg-main width-12" /></td>
					</tr>
				</table>
			</div>
		</form>
	</c:if>
	</div>
</div>
</html>
