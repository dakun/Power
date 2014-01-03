<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="right.ascx.cs" Inherits="Song.Web.en.right" %>
<!-- #BeginLibraryItem "/Library/cn_site_support_right.lbi" -->
<div class="techprd">
	<a href="">Products Overview</a></div>
<div class="techlict">
	<ul>
		<asp:Repeater ID="Repeater1" runat="server">
			<ItemTemplate>
				<li><a href="">
					<%#Eval("title") %></a></li>
			</ItemTemplate>
		</asp:Repeater>
	</ul>
</div>
<div>
</div>
<div>
	<p style="padding-bottom: 5px; padding-top: 20px; font-size: 16px;">
		Contact us</p>
	<p style="padding-left: 20px; margin-top: 5px; background-image: url(../images/ico_01.gif);
		background-repeat: no-repeat;">
		<a href="<%=Maticsoft.Common.webcommand.Getinfom("webemail",2) %>">Email FirstPower（一电<sup>®</sup>）</a></p>
	<p style="padding-left: 20px; margin-top: 5px; background-image: url(../images/ico_02.gif);
		background-repeat: no-repeat;">
		Call us at：<%=Maticsoft.Common.webcommand.Getinfom("webtel",2) %></p>
	<p style="padding-left: 20px; margin-top: 5px; background-image: url(../images/ico_03.gif);
		background-repeat: no-repeat;">
		Fax us at：<%=Maticsoft.Common.webcommand.Getinfom("webfax",2) %>
	</p>
</div>
<!-- #EndLibraryItem -->
