<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="supports7.aspx.cs" Inherits="Song.Web.supports7" %>

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
			TechMenu(6);
			$(".faqq").next().addClass("faqa");
			$(".faqq").click(function () {
				$(this).next().toggle();
				$(this).toggleClass("faqqhi");
			});




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
		.faqq
		{
			color: #555;
			font-weight: bold;
			padding-left: 30px;
			padding-bottom: 0px !important;
			font-size: 14px;
			line-height: 30px;
			cursor: pointer;
			background-image: url(../images/faqico-a.png);
			background-repeat: no-repeat;
			background-position: left center;
		}
		.faqqhi
		{
			color: #025f95;
			background-image: url(../images/faqico-b.png);
			background-repeat: no-repeat;
			background-position: left center;
		}
		.faqa
		{
			padding-bottom: 20px;
			display: none;
			padding-left: 30px;
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
				<li class="highlightme">电池基础问答</li>
			</ul>
		</div>
	</div>
	<div class="techpagecontainter">
		<div class="techr">
			<uc1:right ID="right1" runat="server" />
		</div>
		<div class="techl">
			<div class="pagepath">
				<a href="index.aspx">首页</a> / <a href="supports.aspx">技术支持</a> / 蓄电池常见基础知识问答</div>
			<div class="techpagecnt">
				<div class="pagetitle">
					蓄电池常见基础知识问答</div>
				<asp:Repeater ID="Repeater2" runat="server">
					<ItemTemplate>
						<p class="faqq">
							<%#Eval("title") %></p>
							<%#Eval("content") %>
					</ItemTemplate>
				</asp:Repeater>
			</div>
		</div>
	</div>
</asp:Content>
