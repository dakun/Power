<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="supports1.aspx.cs" Inherits="Song.Web.supports1" %>

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

			// -------------------------------------------------
			var agmcounter = 0;
			var scrollcnt = false;
			$(".techmenucnt>ol>li").bind('click', function () {
				if (scrollcnt) {
					$("html,body").animate({ scrollTop: $(".techpagecnt").eq($(this).index()).offset().top }, 500);
					return false;
				}




				$(".techpagecnt").filter(":visible").hide();
				$(".techpagecnt").eq($(this).index()).show();
				$(this).addClass("techarrowhi");
				$(this).siblings().removeClass("techarrowhi");
				$(".agmnag").show();
				$(".agmnagCol").hide();
				agmcounter = $(this).index();
				//alert(agmcounter);	


				if (agmcounter > 0) {
					$(".agmnagprev").html("上一内容： <a href='#'>" + $(".techmenucnt>ol>li:eq(" + (agmcounter - 1) + ")").text() + "</a>");
					$(".agmnagprev").show();
				}
				if (agmcounter < $(".techmenucnt>ol>li").length - 1) {
					$(".agmnagnext").html("下一内容：  <a href='#'>" + $(".techmenucnt>ol>li:eq(" + (agmcounter + 1) + ")").text() + "</a>");
					$(".agmnagnext").show();

				}

				if (agmcounter == 0) $(".agmnagprev").hide();
				if (agmcounter == ($(".techmenucnt>ol>li").length - 1)) $(".agmnagnext").hide();


				//alert(str);		
			});


			$(".agmnagnext").click(function () {
				$(".techmenucnt>ol>li").eq(agmcounter + 1).trigger('click');
			}
		);

			$(".agmnagprev").click(function () {
				$(".techmenucnt>ol>li").eq(agmcounter - 1).trigger('click');
			}
		);


			$(".agmnagall span").click(function () {
				if ($(this).index() == 0) {
					$(".techpagecnt").show();
					$(".agmnag").hide();
					$(".techmenucnt>ol>li").eq(agmcounter).removeClass("techarrowhi");
					$(".agmnagCol").show();
					scrollcnt = true;
				}
				else {
					$("html,body").animate({ scrollTop: $("#header").offset().top }, 100);
				}
			}
		);

			$(".techmenucnt>o>li").hover(
		  function () {
		  	if ($(this).hasClass("techarrowhi")) return false;
		  	else $(this).addClass("techarrow");
		  },
		  function () {
		  	$(this).removeClass("techarrow");
		  }
		);

			//agmnagCol

			$(".agmnagCol span").click(function () {

				if ($(this).index() == 0) {
					scrollcnt = false;
					$(".techmenucnt>ol>li").eq(0).trigger('click');

				}

				$("html,body").animate({ scrollTop: $("#header").offset().top }, 300);



			}
		);


			$(".techmenucnt>ol>li").eq(0).trigger('click');
			$(".fancybox").fancybox();
			TechMenu(0);



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
			font-family: "Microsoft Yahei" ,Verdana, Arial, "SimHei" ,Helvetica, sans-serif;
		}
		.agmnag
		{
			font-size: 13px;
			font-weight: bold;
			padding-top: 10px;
			margin-top: 50px;
			color: #0066CC;
		}
		.agmnagall
		{
			padding-top: 5px;
			margin-top: 30px;
			cursor: pointer;
			border-top: #ccc solid 1px;
			color: #333333;
		}
		
		.agmnagCol
		{
			padding-top: 5px;
			padding-bottom: 40px;
			cursor: pointer;
			font-size: 13px;
			font-weight: bold;
			border-top: #ccc solid 1px;
			display: none;
		}
		.agmnagCol span
		{
			padding: 5px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="techbanner">
		<div id="techmenu">
			<ul>
				<li class="highlightme">密封阀控式铅酸蓄电池</li>
				<li><a href="supports2.aspx">胶体蓄电池 </a></li>
				<li><a href="supports3.aspx">电池组与装配</a></li>
				<li><a href="supports4.aspx">电池端子</a></li>
				<li><a href="supports5.aspx">安全使用规程</a></li>
				<li><a href="supports6.aspx">产品认证/资质</a></li>
				<li><a href="supports7.aspx">电池基础问答</a></li>
			</ul>
		</div>
	</div>
	<div id="techsubpager">
		<div class="center">
			<div class="pagepath">
				<a href="index.aspx">首页</a> / <a href="supports1.aspx">技术支持</a> / 密封阀控式铅酸蓄电池</div>
		</div>
	</div>
	<div class="techpagecontainter">
		<div class="techr">
			<uc1:right ID="right1" runat="server" />
		</div>
		<div class="techl">
			<div class="pagetitle">
				FirstPower（一电<sup>®</sup>）密封阀控式铅酸蓄电池</div>
			<div>
				<strong>目 录</strong></div>
			<div class="techmenucnt">
				<ol>
					<asp:Repeater ID="Repeater2" runat="server">
						<ItemTemplate>
							<li>
								<%#Eval("title") %></li>
						</ItemTemplate>
					</asp:Repeater>
				</ol>
			</div>
			<asp:Repeater ID="Repeater3" runat="server">
				<ItemTemplate>
					<div class="techpagecnt">
						<div class="pagetechtitle">
							<%#Eval("title") %></div>
						<%#Eval("content") %>
						<div class="agmnag">
							<div class="agmnagprev">
								上一内容：</div>
							<div class="agmnagnext">
								下一内容：</div>
							<div class="agmnagall">
								<span>展开全部内容</span> | <span>到顶部</span></div>
						</div>
					</div>
				</ItemTemplate>
			</asp:Repeater>
			<div class="agmnagCol">
				<span>折叠内容</span> | <span>到顶部</span></div>
		</div>
	</div>
	<div class="clearit">
	</div>
</asp:Content>
