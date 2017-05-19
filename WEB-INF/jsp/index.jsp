<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
<head><meta http-equiv=Content-Type content='text/html; charset=UTF-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="兼米网 镇江兼米网  兼米兼职  江苏大学兼米网  网页设计协会  江苏大学网页设计协会兼米网">
<meta http-equiv="description" content="兼米网，一家靠谱的兼职平台">
<link rel='icon shortcut' href='../jzphone/favicon.ico' />
<link rel="stylesheet" href="../jzphone/common.css" type="text/css"/>
<link rel="stylesheet" href="../jzphone/style.css" type="text/css"/>
<link href="../images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
<script type="text/javascript" src="../jzphone/jquery.1.10.0.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/global.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/history.js-var=1440769219942" ></script>

<style>
.btn1 {
  display: inline-block;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
 .row{
     line-height: 28px;
 }
</style>
<title>兼米网，一家靠谱的兼职平台</title>
<link href="../jzphone/idangerous.css" rel="stylesheet" type="text/css" />
<link href="../jzphone/home.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../jzphone/jquery.excoloSlider.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/home.js-var=1440769219942"></script>
<script src="../components-ak=uowUEH8rt0Xywk84UU1U1Q19&v=1.0"></script>
</head>
<body>

	<!--头部开始-->
	<div class="header link-green">
		<div class="h-l">
			<span class="cityBtn dis" id="currentCityName">镇江市</span>
		</div>

		<div class="h-c tc f20">
			<div class="searchHome">
				<input class="Txt" type="text" placeholder="请输入职位关键字"
					id="searchContent"><input class="btn" type="button"
					onclick="sendSearch();">
			</div>
		</div>
		<div class="h-r">
			<a href="user" id="messageLink" class="my dis"></a>
		</div>
	</div>
	<div class="blank"></div>
	
	<!--兼职类型开始-->
	<div class="home8 clearfix lineme ">
		<ul>
			<li><a href="getJobsByType?jobtype=3"><i
					class="bg1"><img src="../jzphone/cuxiao.png" /></i>兼米家教</a></li>
			<li><a href="getJobsByType?jobtype=10"><i
					class="bg2"><img
						src="../jzphone/chuandan.png" /></i>定位基因</a></li>
			<li><a href="getJobsByType?jobtype=10"><i
					class="bg3"><img
						src="../jzphone/service.png" /></i>服务员</a></li>
			<li><a href="getJobsByType?jobtype=18"><i
					class="bg4"><img src="../jzphone/talk.png" /></i>客服</a></li>
			<li><a href="getJobsByType?jobtype=9"><i
					class="bg5"><img src="../jzphone/send.png"/></i>一手单</a></li>
			<li><a href="getJobsByType?jobtype=21"><i
					class="bg6"><img
						src="../jzphone/teststudent.png" /></i>实习生</a></li>
			<li><a href="getJobsByType?jobtype=6"><i
					class="bg7"><img src="../jzphone/time.png"/></i>小时工</a></li>
			<li><a href="getJobsByType?jobtype"><i class="bg8"><img
						src="../jzphone/all.png"/></i>全部兼职</a></li>
		</ul>
	</div>

	<!--兼职推荐开始-->
	<div class="like150420 clearfix">
		<h2 class="f16">
			推荐职位<span style="float: right;"> </span>
		</h2>
		<ul id="recomendjoblist">
		<!-- 兼职详情列表开始 -->
		<c:if test="${empty jobs}">
		<input type="button" value="点我有惊喜" style="width:100%;background:#00B38A;color:#fff;" class="btn1" onclick="location.href='index';"/>                      
             </c:if>
	             <c:if test="${not empty jobs}">
					<c:forEach items="${jobs}" var="job" >
							<li>
								<a href="udetailjob?id=1&jid=${job.jid}"><!-- 职位详情 -->
								<div class="fr ml10">
									<p class="link-grey f12">
								 		<i class="f24 link-yel mr5">${job.salary}</i> 元/时<!-- 结算方式 -->
									</p>
								</div> 
								<img src="<%=request.getContextPath()%>${job.jurl}" height="50" class="fl mr15">
								<h3 class="f16">${job.title}</h3>
								<div class="clearfix link-grey mt10 con">
									<span class="labels label2">日结</span></div>
								<div class="clearfix link-grey mt10 con">
									<span class="fr">${job.area}</span>
									<span class="date"></span>
								</div>
								</a>
							</li>
			</c:forEach>
			</c:if>
			<!-- 兼职详情列表 end -->
			
		</ul>
		
	</div>
	<!-- 分页 -->	
		<div class="wrap center-block margin-bottom-sm margin-top-sm">	
				<div class="row">
                                <nav>
                                    <ul class="pager">
                                        <li style="text-align: center;float: left;"><a href="listjob?currentIndex=${currentIndex-10 }&jianGe=10">上一页</a></li>

                                        <li style="text-align: center;float:right;"><a href="listjob?currentIndex=${currentIndex+10 }&jianGe=10">下一页</a></li>
                                    </ul>
                                </nav>
                 </div>				
		</div>
	
	<!--底部开始-->
	<div class="footer pt15 pb15 clearfix">
	<div class="tc rl clearfix">
		<span><a href="userloginPage" id="bottomLoginLink" class="link-green">登录</a></span>
			<span><a href="userregistTo"  id="bottomRegLink" class="link-green">注册</a></span>
		<span>城市：<a id="bottomPosCity" class="link-green">镇江市</a></span>
	</div>
	<div class="mt10 tc ab link-grey">
		<a href="/ListJobServlet?id=3&pNum=1"class="link-green" id="foothead">找兼职</a>|
		<span id="footsecond" class="link-green"><!-- 网站流量统计 -->
				<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1256504270'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/q_stat.php%3Fid%3D1256504270%26l%3D2' type='text/javascript'%3E%3C/script%3E"));</script>
		</span>|<!-- end 代码统计 --> 
		<a href="default/about.jsp"id="footforth" class="link-green">关于我们</a>
	</div>
	<div class="copyright tc pb10 f12">
		<span>找兼职？上吏部</span>
	</div>
	<p class="tc mt5 f12 link-grey">@jzme.top</p>
</div>
</body>
</html>
