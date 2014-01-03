<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="about.aspx.cs" Inherits="Song.Web.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(function () {
			$("#menu ul li").removeClass("current");
			$("#menu ul li").eq(1).addClass("current");
		});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div style="width: 100%; background: #1e92d5; height: 88px; text-align: center;">
		<img src="images/cn_company_bannerb.jpg" /></div>
	<div class="about">
		<div class="about-l">
			<div>
				<img src="images/cn_company_title.gif" alt="about firstpower" /></div>
			<div class="about-menu">
				<div class="about-submenu">
					<div class="about-submenu1">
						<ul style="padding-left: 10px;">
							<li><a href="about.aspx?pid=165">企业简介</a></li>
							<li><a href="about.aspx?pid=198">企业构架/分公司</a></li>
							<li style="padding-bottom: 15px;"><a href="about.aspx?pid=199">企业发展历程</a></li>
							<li><a href="about.aspx?pid=200">我们的优势</a></li>
							<%--<li><a href="Company_QC.html">质量保证体系</a></li>--%>
							<li><a href="about.aspx?pid=201">产品研发体系</a></li>
						</ul>
					</div>
					<div>
						<p class="comlta">
							<img src="images/cn_mission.png" alt="企业愿景" width="268" height="83"></p>
					</div>
				</div>
				<div class="cu">
					<p style="padding-bottom: 5px;">
						联系我们</p>
					<p style="padding-left: 20px; background-image: url(../images/ico_01.gif); background-repeat: no-repeat;">
						<a href="mailto:hzx@efirstpower.com">Email FirstPower</a></p>
					<p style="padding-left: 20px; background-image: url(../images/ico_02.gif); background-repeat: no-repeat;">
						电话：0755-83021906, 83021385,
						<br>
						83021386 83021387</p>
					<p style="padding-left: 20px; background-image: url(../images/ico_03.gif); background-repeat: no-repeat;">
						传真：0755-83021927
					</p>
				</div>
			</div>
		</div>
		<%if (Convert.ToInt32(Request.QueryString["pid"]) == 165)
	{ %>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">首页</a> / 关于我们 / 企业简介</div>
			<div class="about-title">
				公司简介</div>
			<img src="/UploadFile/Pic/<%=Maticsoft.Common.webcommand.GetInfo(165,2) %>" style="float: right;
				width: 245px; height: 245px;" />
			<%=Maticsoft.Common.webcommand.GetInfo(165, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 198)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">首页</a> / 关于我们 / 企业组织构架/分公司</div>
			<div class="about-title">
				企业组织构架/分公司</div>
			<%=Maticsoft.Common.webcommand.GetInfo(198, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 199)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">首页</a> / 关于我们 / 企业发展历程</div>
			<div class="about-title">
				企业发展历程</div>
			<%=Maticsoft.Common.webcommand.GetInfo(199, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 200)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">首页</a> / 关于我们 / 我们的优势</div>
			<div class="about-title">
				我们的优势</div>
			<%=Maticsoft.Common.webcommand.GetInfo(200, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 201)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">首页</a> / 关于我们 / 产品研发体系</div>
			<div class="about-title">
				产品研发体系</div>
			<%=Maticsoft.Common.webcommand.GetInfo(201, 1)%>
		</div>
		<%} %>
	</div>
</asp:Content>
