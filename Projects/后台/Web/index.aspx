<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
	CodeBehind="index.aspx.cs" Inherits="Song.Web.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="main-content" style="margin-top: 10px;">
		<div class="wrap">
			<div class="slider cl">
				<ul id="slider">
					<asp:Repeater ID="Repeater1" runat="server">
						<ItemTemplate>
							<li>
								<img src="/uploadfile/pic/<%#Eval("photo") %>" style="width: 940px; height: 320px;" alt="" /></li>
						</ItemTemplate>
					</asp:Repeater>
				</ul>
			</div>
			<div class="float" style="margin-top: 10px;">
				<div class="box float home-info">
					<div class="box-inside">
						<div class="home-info-img">
							<img src="images/hpic_01.jpg" alt="" style="width: 200px; height: 78px;" />
						</div>
						<h2>
							The Battery Solutions For Stored Energy Applications</h2>
						<p>
							<ul>
								<li>Telecommunication Equipment</li>
								<li>Electronic Instruments </li>
								<li>Fire Alarm</li>
								<li>Security Devices </li>
								<li>UPS Power Supply</li>
								<li>Emergency Lighting</li>
							</ul>
						</p>
						<p style="margin: 5px 0;">
							<a href="#" class="btn">更多<i class="fa fa-arrow-right"></i></a>
						</p>
					</div>
				</div>
				<div class="box float home-info">
					<div class="box-inside">
						<div class="home-info-img">
							<img src="images/hpic_02.jpg" alt="" style="width: 200px; height: 78px;" />
						</div>
						<h2>
							The Battery Solutions For Stored Energy Applications</h2>
						<p>
							<ul>
								<li>Telecommunication Equipment</li>
								<li>Electronic Instruments </li>
								<li>Fire Alarm</li>
								<li>Security Devices </li>
								<li>UPS Power Supply</li>
								<li>Emergency Lighting</li>
							</ul>
						</p>
						<p style="margin: 5px 0;">
							<a href="#" class="btn">更多<i class="fa fa-arrow-right"></i></a>
						</p>
					</div>
				</div>
				<div class="box float home-info">
					<div class="box-inside">
						<div class="home-info-img">
							<img src="images/hpic_03.jpg" alt="" style="width: 200px; height: 78px;" />
						</div>
						<h2>
							The Battery Solutions For Stored Energy Applications</h2>
						<p>
							<ul>
								<li>Telecommunication Equipment</li>
								<li>Electronic Instruments </li>
								<li>Fire Alarm</li>
								<li>Security Devices </li>
								<li>UPS Power Supply</li>
								<li>Emergency Lighting</li>
							</ul>
						</p>
						<p style="margin: 5px 0;">
							<a href="#" class="btn">更多<i class="fa fa-arrow-right"></i></a>
						</p>
					</div>
				</div>
				<div class="box float home-info last">
					<div class="box-inside">
						<div class="home-info-img">
							<img src="images/hpic_04.jpg" alt="" style="width: 200px; height: 78px;" />
						</div>
						<h2>
							The Battery Solutions For Stored Energy Applications</h2>
						<p>
							<ul>
								<li>Telecommunication Equipment</li>
								<li>Electronic Instruments </li>
								<li>Fire Alarm</li>
								<li>Security Devices </li>
								<li>UPS Power Supply</li>
								<li>Emergency Lighting</li>
							</ul>
						</p>
						<p style="margin: 5px 0;">
							<a href="#" class="btn">更多<i class="fa fa-arrow-right"></i></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.5.1.min.js" language="javascript" type="text/javascript"></script>
	<script src="js/rhinoslider-1.05.min.js" language="javascript" type="text/javascript"></script>
	<script src="js/mousewheel.js" language="javascript" type="text/javascript"></script>
	<script src="js/easing.js" language="javascript" type="text/javascript"></script>
	<script language="javascript" type="text/javascript">
		var resizeMenu = function () {
			var count = $("#menu ul li").length;
			var width = ((940 - count - 1) / count);
			$("#menu ul li").width(width);
		};

		$(function () {
			resizeMenu();
			$('#slider').rhinoslider();
		});
	</script>
</asp:Content>
