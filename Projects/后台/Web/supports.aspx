<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="supports.aspx.cs" Inherits="Song.Web.supports" %>

<%@ Register src="right.ascx" tagname="right" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(function () {
			$("#menu ul li").removeClass("current");
			$("#menu ul li").eq(3).addClass("current");
		});
	</script>
	<script src="js/FP-TopMenu.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {

			// Top Menu---------------------------------------
			TopMenu();

			// -------------------------------------------------
			//TechMenu(2);	
			//$(".fancybox").fancybox();




		});
	

	</script>
	<style type="text/css">
		body
		{
			background-image: url(../images/bg_pages5.gif);
			background-color: #ededed;
			background-repeat: repeat-y;
			background-position: center;
		}
		.spindcnt
		{
			width: 650px;
			height: 180px;
		}
		.spindcnt div
		{
			float: right;
			width: 400px;
			border-top: #cfe1ef solid 5px;
			padding-top: 10px;
			padding-bottom: 30px;
		}
		.spindcnt img
		{
			float: left;
			border: 0;
			padding-top: 10px;
			padding-left: 40px;
		}
		.spindcnt p
		{
			font-size: 16px;
			font-weight: bold;
			color: #555;
		}
		.spindcnt ul
		{
			padding-left: 15px;
			list-style-position: outside;
			list-style-type: disc;
		}
		.spindcnt ul li
		{
			padding-bottom: 0px;
			color: #666;
			line-height: 15px;
			font-size: 12px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="techbanner">
		<div id="techmenu">
			<ul>
				<li><a href="supports1.aspx">密封阀控式铅酸蓄电池</a></li>
				<li><a href="supports2.aspx">胶体蓄电池</a></li>
				<li><a href="supports3.aspx">电池组与装配</a></li>
				<li><a href="supports4.aspx">电池端子</a></li>
				<li><a href="supports5.aspx">安全使用规程</a></li>
				<li><a href="supports6.aspx">产品认证/资质</a></li>
				<li><a href="supports7.aspx">电池基础问答</a></li>
			</ul>
		</div>
	</div>
	<div class="techpagecontainter">
		<div class="techr">
			
			<uc1:right ID="right1" runat="server" />
			
		</div>
		<div class="techl">
			<div class="pagepath">
				<a href="index.aspx">首页</a> / 技术支持</div>
			<div class="techpagecnt">
				<div class="pagetitle">
					FirstPower（一电<sup>®</sup>）技术支持中心</div>
				<p>
				</p>
				<div class="spindcnt">
					<a href="supports1.aspx">
						<img src="../images/supports_tech_01.jpg" alt=""  /></a>
					<div>
						<p>
							<a href="supports1.aspx">FirstPower（一电<sup>®</sup>）密封阀控式铅酸蓄电池</a></p>
						<ul>
							<li>电池特点</li>
							<li>电池结构</li>
							<li>电池放电特性</li>
							<li>电池充电特性</li>
							<li>电池使用寿命</li>
							<li>电池存储</li>
						</ul>
					</div>
				</div>
				<div class="clearit">
				</div>
				<div class="clearit">
				</div>
				<div class="spindcnt">
					<a href="Supports_Battery_Rack.html">
						<img src="../images/supports_tech_03.jpg" /></a>
					<div>
						<p>
							<a href="Supports_Battery_Rack.html">电池组(CFP型号电池组装配)</a></p>
						<ul>
							<li><span id="result_box" lang="en" xml:lang="en"></span>48V100AH~48V3000AH装配示意图</li>
						</ul>
					</div>
				</div>
				<div class="clearit">
				</div>
				<div class="spindcnt">
					<a href="Supports_Battery_Terminals.html">
						<img src="../images/supports_tech_04.jpg" /></a>
					<div>
						<p>
							<a href="Supports_Battery_Terminals.html">电池端子</a></p>
						<ul>
							<li>端子类型</li>
							<li>端子位置示意图</li>
							<li>摩托车电池端子</li>
						</ul>
					</div>
				</div>
				<div class="clearit">
				</div>
				<div class="spindcnt">
					<a href="Supports_Precautions.html">
						<img src="../images/supports_tech_05.jpg" /></a>
					<div>
						<p>
							<a href="Supports_Precautions.html">电池安全使用规程</a></p>
						<ul>
							<li>使用前注意事项</li>
							<li>安装使用</li>
							<li>例行维护 </li>
							<li>使用注意事项</li>
							<li>电池的存放</li>
						</ul>
					</div>
				</div>
				<div class="clearit">
				</div>
				<div class="spindcnt">
					<a href="Supports_Certifications.html">
						<img src="../images/supports_tech_09.jpg" /></a>
					<div>
						<p>
							<a href="Supports_Certifications.html">产品认证/资质</a></p>
						<ul>
							<li>ISO9001国际质量管理体系认证</li>
							<li>日本JISC</li>
							<li>英国BS、德国DIN、国际电工学会IEC等标准</li>
							<li>美国UL认证（MH28204）</li>
							<li>欧盟CE认证</li>
							<li>韩国KS认证</li>
							<li>德国VdS认证</li>
							<li>中国信息产业部入网认证</li>
						</ul>
					</div>
				</div>
				<div class="clearit">
				</div>
				<div class="spindcnt">
					<a href="Supports_FAQ.html">
						<img src="../images/supports_tech_08.jpg" /></a>
					<div>
						<p>
							<a href="Supports_FAQ.html">蓄电池常见基础知识问答</a></p>
						<ul>
							<li>什么是电池、电源？<br />
							</li>
							<li>什么是阀控式免维护铅酸蓄电池? </li>
							<li>常用的阀控式免维护铅酸蓄电池有那些种类？<br />
							</li>
							<li>什么是电池的额定容量<br />
							</li>
							<li>什么是电池的额定电压<br />
							</li>
							<li>什么是电池的内阻？</li>
						</ul>
					</div>
				</div>
				<div class="clearit">
				</div>
			</div>
		</div>
	</div>
	<div class="clearit">
	</div>
</asp:Content>
