<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="supports5.aspx.cs" Inherits="Song.Web.supports5" %>

<%@ Register Src="right.ascx" TagName="right" TagPrefix="uc1" %>
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
			//$(".fancybox").fancybox();
			TechMenu(4);




		});
	

	</script>
	<style type="text/css">
		body
		{
			background-color: #fff;
			background-image: url(../images/bg_pages5.gif);
			background-color: #ededed;
			background-repeat: repeat-y;
			background-position: center;
		}
		.usetil
		{
			font-weight: bold;
			font-size: 14px;
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
				<li class="highlightme">安全使用规程</li>
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
				<a href="index.aspx">首页</a> / <a href="supports.aspx">技术支持</a> / 安全使用规程</div>
			<div class="techpagecnt">
				<div class="pagetitle">
					安全使用规程</div>
				<%=Maticsoft.Common.webcommand.GetInfo(206,1) %>
			</div>
		</div>
	</div>
</asp:Content>
