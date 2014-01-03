<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="sale.aspx.cs" Inherits="Song.Web.sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(function () {
			$("#menu ul li").removeClass("current");
			$("#menu ul li").eq(5).addClass("current");
		});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
