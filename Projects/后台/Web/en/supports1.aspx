<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.Master" AutoEventWireup="true"
	CodeBehind="supports1.aspx.cs" Inherits="Song.Web.en.supports1" %>

<%@ Register Src="right.ascx" TagName="right" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script type="text/javascript">
		$(function () {
			$("#menu ul li").removeClass("current");
			$("#menu ul li").eq(3).addClass("current");
		});
	</script>
	<script src="/js/FP-TopMenu.js" type="text/javascript"></script>
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
					$(".agmnagprev").html("Prev： <a href='#'>" + $(".techmenucnt>ol>li:eq(" + (agmcounter - 1) + ")").text() + "</a>");
					$(".agmnagprev").show();
				}
				if (agmcounter < $(".techmenucnt>ol>li").length - 1) {
					$(".agmnagnext").html("Next：  <a href='#'>" + $(".techmenucnt>ol>li:eq(" + (agmcounter + 1) + ")").text() + "</a>");
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
		 #techbanner
        {
            background: url(/images/support_banner_2.jpg) no-repeat;
            background-position: center;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="techbanner">
		<div id="techmenu">
			<ul>
                <li class="highlightme">VRLA(AGM) Battery</li>
                <li><a href="supports2.aspx">Gelled Battery</a></li>
                <li><a href="supports3.aspx">Battery Packs</a></li>
                <li><a href="supports4.aspx">Terminals</a></li>
                <li><a href="supports5.aspx">Precautions</a></li>
                <li><a href="supports6.aspx">Certifications</a></li>
                <li><a href="supports7.aspx">MSDS</a></li>
			</ul>
		</div>
	</div>
	<div id="techsubpager">
		<div class="center">
			<div class="pagepath">
				<a href="index.aspx">Home</a> / <a href="supports1.aspx">Technical Supports Center</a> / FirstPower VRLA(AGM) Battery</div>
		</div>
	</div>
	<div class="techpagecontainter">
		<div class="techr">
			<uc1:right ID="right1" runat="server" />
		</div>
		<div class="techl">
			<div class="pagetitle">
				FirstPower VRLA(AGM) Battery</div>
			<div>
				<strong>Contents</strong></div>
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
								Prev：</div>
							<div class="agmnagnext">
								Next：</div>
							<div class="agmnagall">
								<span>Expand All Contents</span> | <span>Go Top</span></div>
						</div>
					</div>
				</ItemTemplate>
			</asp:Repeater>
			<div class="agmnagCol">
				<span>Collapse Contents</span> | <span>Go Top</span></div>
		</div>
	</div>
	<div class="clearit">
	</div>
</asp:Content>
