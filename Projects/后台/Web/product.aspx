<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="product.aspx.cs" Inherits="Song.Web.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(function () {
			$("#menu ul li").removeClass("current");
			$("#menu ul li").eq(2).addClass("current");
		});
	</script>
	<script type="text/javascript">
		$(function () {
			$(".prdoverf").hover(function () {
				$(this).children(".sers").addClass("sershi");
			}, function () {
				$(this).children(".sers").removeClass("sershi");
			});
		});

	</script>
	<style type="text/css">
		body
		{
			background-color: #f1f5f4;
			background-repeat: repeat-y;
			background-position: center;
		}
		#prdbanner
		{
			width: 100%;
			height: 160px;
			background-image: url(images/banner_prd_cnbg.jpg);
		}
		.prdoverf
		{
			float: left;
			width: 440px;
			margin: 15px;
			height: 220px;
			padding-bottom: 20px;
			padding-top: 10px;
			background-color: #FFFFFF;
			cursor: pointer;
		}
		.sers
		{
			font-size: 16px;
			font-weight: bold;
			color: #fff;
			height: 39px;
			padding-top: 9px;
			padding-left: 10px;
			margin-bottom: 20px;
			background-image: url(images/prd_series_bg.png);
		}
		.sershi
		{
			background-image: url(images/prd_series_bghi.png);
		}
		
		.serimg
		{
			padding-left: 20px;
			padding-right: 20px;
		}
		
		.prdoverf .cnt
		{
			position: absolute;
			height: 165px;
			width: 420px;
		}
		.prdoverf .cnt .rtt
		{
			position: absolute;
			width: 180px;
			height: 130px;
			overflow: hidden;
			left: 245px;
			top: 0px;
		}
		
		.prdoverf .cnt .rtt ul
		{
			padding-left: 15px;
			padding-top: 10px;
		}
		.prdoverf .cnt .rtt ul li
		{
			font-size: 11px;
			line-height: 10px;
			padding-bottom: 3px;
		}
		.prdoverf .cnt .rtico
		{
			position: absolute;
			left: 245px;
			top: 130px;
			padding-left: 14px;
			border: 0;
		}
		.prdovertitle
		{
			padding-top: 20px;
			padding-bottom: 20px;
			font-size: 16px;
		}
		.prdovertitle p
		{
			font-size: 14px;
			line-height: 25px;
		}
		.prdovertitle img
		{
			float: left;
			padding-right: 20px;
		}
		.rtt ul li
		{
			
		list-style-type: disc;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="prdbanner">
		<div class="wrap">
			<img src="images/banner_prd_en2.jpg" alt="" width="960" height="160" /></div>
	</div>
	<div class="wrap">
		<div class="clearit">
			<img src="images/prd_series_line.png" />
		</div>
		<asp:Repeater runat="server" ID="repeater5">
			<ItemTemplate>
				<div class="prdoverf">
					<p class="sers">
						<%#Eval("title") %></p>
					<div class="cnt">
						<a href="product-info.aspx?id=<%#Eval("id") %>">
							<img src="/uploadfile/pic/<%#Eval("photo") %>" width="215" height="155" class="serimg" /></a>
						<div class="rtt">
							<%#Eval("text4")%>
						</div>
						<a href="product-info.aspx?id=<%#Eval("id") %>">
							<%--<img src="images/ico_arrow_04.gif" width="68" height="24" class="rtico" />--%>
							<img src="images/arrow_1.png" width="68" height="24" class="rtico" />
							</a>
					</div>
				</div>
				<%--<%if (i % 2 == 0)
	  {%>
				<div class="clearit">
				</div>
				<%} %>--%>
			</ItemTemplate>
		</asp:Repeater>
	</div>
</asp:Content>
