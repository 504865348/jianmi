<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//Dspan HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
	<title>修改信息</title>  
    <script type="text/javascript">
	function checkForm(){
		var spanbname = $("#spanbname").text(); 
	 if(spanbname != "√ 商家名称" ){ 
	  document.getElementById("spanbname").innerHTML = "<font color='red'>× 请填写商家名称</font>";
	  return false;
	  }
	  var spanlogo = $("#spanlogo").text(); 
	 if(spanlogo != "√ 商家图标" ){ 
	  document.getElementById("spanlogo").innerHTML = "<font color='red'>× 请上传商家图标</font>";
	  return false;
	  }
	   var spanlicence = $("#spanlicence").text(); 
	 if(spanlicence != "√ 营业执照" ){ 
	  document.getElementById("spanlicence").innerHTML = "<font color='red'>× 请上传营业执照</font>";
	  return false;
	  }
	   var spanarea = $("#spanarea").text(); 
	 if(spanarea != "√ 地区" ){ 
	  document.getElementById("spanarea").innerHTML = "<font color='red'>× 请选择地区</font>";
	  return false;
	  }
	   var spancity = $("#spancity").text(); 
	 if(spancity != "√ 城市" ){ 
	  document.getElementById("spancity").innerHTML = "<font color='red'>× 请选择城市</font>";
	  return false;
	  }
	  
	  
	  var spanaddress = $("#spanaddress").text(); 
	 if(spanaddress != "√ 商家地址" ){ 
	  document.getElementById("spanaddress").innerHTML = "<font color='red'>× 请填写商家地址</font>";
	  return false;
	  }
	  var spanperson = $("#spanperson").text(); 
	 if(spanperson != "√ 负责人" ){ 
	  document.getElementById("spanperson").innerHTML = "<font color='red'>× 请填写负责人</font>";
	  return false;
	  }
	  var spanpertel = $("#spanpertel").text(); 
	 if(spanpertel != "√ 负责人电话" ){ 
	  document.getElementById("spanpertel").innerHTML = "<font color='red'>× 请填写负责人电话</font>";
	  return false;
	  }
	  var spansummary = $("#spansummary").text(); 
	 if(spansummary != "√ 商家简介" ){ 
	  document.getElementById("spansummary").innerHTML = "<font color='red'>× 请填写商家简介</font>";
	  return false;
	  }
	    var spanpic1 = $("#spanpic1").text(); 
	 if(spanpic1 != "√ 商家图片" ){ 
	  document.getElementById("spanpic1").innerHTML = "<font color='red'>× 请上传商家图片</font>";
	  return false;
	  }
			}
			
	function checkbname(){
	var bname=document.getElementById("bname").value;
	if(bname==null || bname == ""){
	document.getElementById("spanbname").innerHTML = "<font color='red'>× 请填写商家名称</font>";
		return false;
		}else{
		document.getElementById("spanbname").innerHTML = "<font color='green'>√ 商家名称</font>";
		return true;}
	}
	
	function checklogo(){
	var logo=document.getElementById("logo").value;
	if(logo==null || logo == ""){
	document.getElementById("spanlogo").innerHTML = "<font color='red'>× 请上传商家图标</font>";
		return false;
		}else{
		document.getElementById("spanlogo").innerHTML = "<font color='green'>√ 商家图标</font>";
		return true;}
	}
	function checklicence(){
	var licence=document.getElementById("licence").value;
	if(licence==null || licence == ""){
	document.getElementById("spanlicence").innerHTML = "<font color='red'>× 请上传营业执照</font>";
		return false;
		}else{
		document.getElementById("spanlicence").innerHTML = "<font color='green'>√ 营业执照</font>";
		return true;}
	}
	
	function checkcity(){
	var city=document.getElementById("city").value;
	if(city==null || city == ""){
	document.getElementById("spancity").innerHTML = "<font color='red'>× 请选择城市</font>";
		return false;
		}else{
		document.getElementById("spancity").innerHTML = "<font color='green'>√ 城市</font>";
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
	
	function checkaddress(){
	var address=document.getElementById("address").value;
	if(address==null || address == ""){
	document.getElementById("spanaddress").innerHTML = "<font color='red'>× 请填写商家地址</font>";
		return false;
		}else{
		document.getElementById("spanaddress").innerHTML = "<font color='green'>√ 商家地址</font>";
		return true;}
	}
	function checkperson(){
	var person=document.getElementById("person").value;
	if(person==null || person == ""){
	document.getElementById("spanperson").innerHTML = "<font color='red'>× 请填写负责人</font>";
		return false;
		}else{
		document.getElementById("spanperson").innerHTML = "<font color='green'>√ 负责人</font>";
		return true;}
	}
	function checkpertel(){
	var pertel=document.getElementById("pertel").value;
	if(pertel==null || pertel == ""){
	document.getElementById("spanpertel").innerHTML = "<font color='red'>× 请填写负责人电话</font>";
		return false;
		}else{
		document.getElementById("spanpertel").innerHTML = "<font color='green'>√ 负责人电话</font>";
		return true;}
	}
	function checksummary(){
	var summary=document.getElementById("summary").value;
	if(summary==null || summary == ""){
	document.getElementById("spansummary").innerHTML = "<font color='red'>× 请填写商家简介</font>";
		return false;
		}else{
		document.getElementById("spansummary").innerHTML = "<font color='green'>√ 商家简介</font>";
		return true;}
	}
	function checkpic1(){
	var pic1=document.getElementById("pic1").value;
	if(pic1==null || pic1 == ""){
	document.getElementById("spanpic1").innerHTML = "<font color='red'>× 请上传商家图片</font>";
		return false;
		}else{
		document.getElementById("spanpic1").innerHTML = "<font color='green'>√ 商家图片</font>";
		return true;}
	}	
			
			
	</script>
  </head>
  <body>
  <c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>
<div><!-- article -->
	<div style="background:#fff;">
		 <c:if test="${not empty loginBusiness }">
    <form action="/BChangeServlet" method="post" enctype="multipart/form-data" onsubmit="return checkForm();">
    <div class="list-group">
		
			<span class="list-group-item">商家名称：</span>
		
		
			<span class="list-group-item"><input type="text" name="bname" id="bname" onblur="checkbname()" value="${loginBusiness.bname}" class="form-control"> </span>
		
		
			<span class="list-group-item"><span id="spanbname"></span></span>
		
		<!-- end 商家名称 -->
		
			<span class="list-group-item">商家图标：</span>
		
		
			<span class="list-group-item"><input type="file" name="logo" id="logo" onblur="checklogo()" class="form-control" /></span>
		
		
			<span class="list-group-item"><span id="spanlogo"></span></span>
		
		<!-- end 商家图标 -->
		
			<span class="list-group-item">营业执照：</span>
		
		
			<span class="list-group-item"><input type="file" name="licence" id="licence" onblur="checklicence()" class="form-control" /></span>
		
		
			<span class="list-group-item"><span id="spanlicence"></span></span>
		
		<!-- end 营业执照 -->
		
            <span class="list-group-item">城市：</span>
        
		
            <span class="list-group-item">
            <select name="city" id="city" onblur="checkcity()" class="form-control">
            <option value="镇江市" class="form-control">镇江市</option>
            </select>           
            </span>
         
		
            <span class="list-group-item"><span id="spancity"></span></span>
        
        <!-- end 城市 -->
        
            <span class="list-group-item">地区：</span>
         
		
            <span>
            <select name="area" id="area" onblur="checkarea()" class="form-control" >
            <option value="京口区">京口区</option>
            <option value="润州区">润州区</option>
            <option value="丹徒区">丹徒区</option>
            </select>
            </span>
        
		
            <span><span id="spanarea"></span></span>
         
         <!-- end 地区 -->
        
			<span class="list-group-item">商家地址：</span>
		
		
			<span class="list-group-item"><input type="text" name="address" id="address" onblur="checkaddress()" value="${loginBusiness.address}"class="form-control"> </span>
		
		
		    <span class="list-group-item"><span id="spanaddress"></span></span>
		
		<!-- end 商家地址 -->
		
			<span class="list-group-item">负责人：</span>
		
		
			<span class="list-group-item"><input type="text" name="person" id="person" onblur="checkperson()" value="${loginBusiness.person}"class="form-control"> </span>
		
		
			<span class="list-group-item"><span id="spanperson"></span></span>
		
		<!-- end 负责人 -->
		
			<span class="list-group-item">负责人电话：</span>
		
		
			<span><input type="text" name="pertel" id="pertel" onblur="checkpertel()" value="${loginBusiness.pertel}"class="form-control"> </span>
		
		
			<span><span id="spanpertel"></span></span>
		
		<!-- end 负责人电话 -->
		
            <span class="list-group-item">商家简介：</span>
         
		
            <span class="list-group-item"><textarea rows="6" cols="50" name="summary" id="summary" onblur="checksummary()"class="form-control" >${loginBusiness.summary}</textarea></span>
         
		
        	<span><span id="spansummary"></span></span>
        
        <!-- end 商家简介 -->
        
			<span class="list-group-item">商家图片：</span>
		
		
			<span class="list-group-item"><input type="file" name="pic1" id="pic1" onblur="checkpic1()" class="form-control" /></span>
		
		
			<span class="list-group-item"><span id="spanpic1"></span></span>
		
		<!-- end 商家图片 -->
         
			<span class="list-group-item"><input type="submit" value="修改" class="btn btn-success" /></span>
	             
	</div>
    </form>
  </c:if>
	</div>
</div>
  </body>
</html>
