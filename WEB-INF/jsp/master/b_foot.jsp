<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<div class="bg-main text-white"><!--footer-->
	<div class="center-block width-9">
		<div class="padding-top-lg padding-bottom-lg">
            <div class="width-4 pull-left" style="margin-left:90px;"> 
				<div class="margin-bottom-lg"> 
					<p class="text-white" style="font-size:16px;text-indent:1em;">兼职么网微信公众帐号</p>
				</div>
					<img src="images/wx.jpg" alt="jzme_cn" class="wx_images">
			</div>
			<div class=" col-md-5 pull-right"> 
				<div class="text-white"> 
					<p class="text-white margin-bottom-lg" style="font-size:16px;">一家值得你信赖的兼职平台</p>
					<p class="text-white margin-bottom-md " style="margin-top:70px;"><span class="glyphicon glyphicon-user">&nbsp&nbsp</span><a href="../default/about.html"  class="text-white">关于我们</a></p>
					<p class="text-white margin-bottom-md"><span class="glyphicon glyphicon-envelope">&nbsp&nbsp</span>info@jzme.cn</p>
					<p class="text-white margin-bottom-md"><span class="glyphicon glyphicon-map-marker">&nbsp&nbsp</span>江苏大学创业孵化基地18号</p>
				</div> 
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="bg-sub padding-top-sm padding-bottom-sm">
		<div style="height:20px;" class="width-9 center-block">
				<div class="pull=left" style="width:700px;display:inline-block;text-align:center;">版权所有 © <a href="http://www.vastsum.com"class="text-white">镇江巨和网络科技有限公司</a> All Rights Reserved，苏ICP备15014181号
					<span><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255085408'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1255085408%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></span>
				</div>
				<div class="pull-right text-white" style="width:250px;display:inline-block; text-align:center;">
					<c:if test="${empty loginUser && empty loginBusiness}">
					<span class="glyphicon glyphicon-user text-white">&nbsp</span>
					<a href="/business/businesslogin.jsp" class="text-white">商家登陆</a>
					</c:if>
					
				</div>
				<div class="clearfix"></div>
		</div>
	</div><!--copyRight end-->
</div><!--footer end-->
  </body>