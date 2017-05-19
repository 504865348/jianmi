<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="Keywords" content="">
<meta name="Description" content="">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
<link href="css/jz.css" rel="stylesheet">
<link href="css/business.css" rel="stylesheet">
<link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" />
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
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
	

	<jsp:include page="../master/b_top.jsp" />
	<div class="wrap center-block">
		<!-- article -->
		<div class="list-group width-2 pull-left">
			<jsp:include page="../master/b_navside.jsp" />
		</div>
		<div class="width-10 pull-right" style="background: #fff;">
			<c:if test="${not empty business }">
				<form action="BusChangeBB" method="post"
					enctype="multipart/form-data" onsubmit="return checkForm();">
					<table class="bc_info">
						<tr>
							<td class="width-3">商家名称：</td>
							<td class="width-3"><input type="text" name="bname"
								id="bname" onblur="checkbname()" value="${business.bname}"
								class="jz_input"></td>
							<td class="width-5"><span id="spanbname"></span></td>
						</tr>
						<tr>
							<td>商家图标：</td>
							<td><input type="file" name="file" id="logo"
								onblur="checklogo()" class="jz_input" /></td>
							<td><span id="spanlogo"></span></td>
						</tr>
						<tr>
							<td>营业执照：</td>
							<td><input type="file" name="file" id="licence"
								onblur="checklicence()" class="jz_input" /></td>
							<td><span id="spanlicence"></span></td>
						</tr>
						<tr>
							<td>城市：</td>
							<td><select name="city" id="city" onblur="checkcity()">
									<option value="镇江市">镇江市</option>
							</select></td>
							<td><span id="spancity"></span></td>
						</tr>
						<tr>
							<td>地区：</td>
							<td><select name="area" id="area" onblur="checkarea()">
									<option value="京口区">京口区</option>
									<option value="润州区">润州区</option>
									<option value="丹徒区">丹徒区</option>
							</select></td>
							<td><span id="spanarea"></span></td>
						</tr>
						<tr>
							<td>商家地址：</td>
							<td><input type="text" name="address" id="address"
								onblur="checkaddress()" value="${business.address}"
								class="jz_input"></td>
							<td><span id="spanaddress"></span></td>
						</tr>
						<tr>
							<td>负责人：</td>
							<td><input type="text" name="person" id="person"
								onblur="checkperson()" value="${business.person}"
								class="jz_input"></td>
							<td><span id="spanperson"></span></td>
						</tr>
						<tr>
							<td>负责人电话：</td>
							<td><input type="text" name="pertel" id="pertel"
								onblur="checkpertel()" value="${business.pertel}"
								class="jz_input"></td>
							<td><span id="spanpertel"></span></td>
						</tr>
						<tr>
							<td>商家简介：</td>
							<td><textarea rows="6" cols="50" name="summary" id="summary"
									onblur="checksummary()" class="jz_input">${business.summary}</textarea></td>
							<td><span id="spansummary"></span></td>
						</tr>
						<tr>
							<td>商家图片：</td>
							<td><input type="file" name="file" id="pic1"
								onblur="checkpic1()" /></td>
							<td><span id="spanpic1"></span></td>
						</tr>
						<tr>
							<td colspan="3"><input type="submit" value="修改"
								class="btn btn-success width-3" /></td>
						</tr>
					</table>
				</form>
			</c:if>
		</div>
		<div class="clearfix"></div>
	</div>
	<jsp:include page="../master/b_foot.jsp" />
</body>
</html>
