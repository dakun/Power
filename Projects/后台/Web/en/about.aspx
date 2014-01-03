<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.Master" AutoEventWireup="true"
	CodeBehind="about.aspx.cs" Inherits="Song.Web.en.about" %>

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
		<img src="/images/cn_company_bannerb.jpg" /></div>
	<div class="about">
		<div class="about-l">
			<div>
				<img src="/images/cn_company_title.gif" alt="about firstpower" /></div>
			<div class="about-menu">
				<div class="about-submenu">
					<div class="about-submenu1">
						<ul style="padding-left: 10px;">
							<li><a href="about.aspx?pid=165">Company Profile</a></li>
							<li><a href="about.aspx?pid=198">Compnay Construction</a></li>
							<li style="padding-bottom: 15px;"><a href="about.aspx?pid=199">Company History</a></li>
							<li><a href="about.aspx?pid=200">Our Strength</a></li>
							<%--<li><a href="Company_QC.html">质量保证体系</a></li>--%>
							<li><a href="about.aspx?pid=201">Researching & Developement</a></li>
						</ul>
					</div>
					<div>
						<p class="comlta">
							<img src="/images/cn_mission.png" alt="OUR MISSION" width="268" height="83"></p>
					</div>
				</div>
				<div class="cu">
					<p style="padding-bottom: 5px;">
						CONTACT US</p>
					<p style="padding-left: 20px; background-image: url(../images/ico_01.gif); background-repeat: no-repeat;">
						<a href="mailto:hzx@efirstpower.com">Email FirstPower</a></p>
					<p style="padding-left: 20px; background-image: url(../images/ico_02.gif); background-repeat: no-repeat;">
						Call us at：0755-83021906, 83021385,
						<br>
						83021386 83021387</p>
					<p style="padding-left: 20px; background-image: url(../images/ico_03.gif); background-repeat: no-repeat;">
						Fax us at：0755-83021927
					</p>
				</div>
			</div>
		</div>
		<%if (Convert.ToInt32(Request.QueryString["pid"]) == 217)
	{ %>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">Home</a>/ About us / Company Profile</div>
			<div class="about-title">
				Company Profile</div>
			<img src="/UploadFile/Pic/<%=Maticsoft.Common.webcommand.GetInfo(217,2) %>" style="float: right;
				width: 245px; height: 245px;" />
			<%=Maticsoft.Common.webcommand.GetInfo(217, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 218)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">Home</a>/ About us / Compnay Construction</div>
			<div class="about-title">
				Compnay Construction</div>
			<%=Maticsoft.Common.webcommand.GetInfo(218, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 219)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">Home</a>/ About us / Company History</div>
			<div class="about-title">
				Company History</div>
			<%=Maticsoft.Common.webcommand.GetInfo(219, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 220)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">Home</a>/ About us /  Our Strength</div>
			<div class="about-title">
				 Our Strength</div>
			<%=Maticsoft.Common.webcommand.GetInfo(220, 1)%>
		</div>
		<%}
	else if (Convert.ToInt32(Request.QueryString["pid"]) == 221)
	{%>
		<div class="about-r">
			<div class="about-le">
				<a href="index.aspx">Home</a>/ About us /  Researching & Developement</div>
			<div class="about-title">
				Researching & Developement</div>
			<%=Maticsoft.Common.webcommand.GetInfo(221, 1)%>
		</div>
		<%} %>
	</div>
</asp:Content>
