<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.Master" AutoEventWireup="true"
    CodeBehind="supports7.aspx.cs" Inherits="Song.Web.en.supports7" %>

<%@ Register Src="right.ascx" TagName="right" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
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
                <li><a href="supports1.aspx">VRLA(AGM) Battery</a></li>
                <li><a href="supports2.aspx">Gelled Battery</a></li>
                <li><a href="supports3.aspx">Battery Packs</a></li>
                <li><a href="supports4.aspx">Terminals</a></li>
                <li><a href="supports5.aspx">Precautions</a></li>
                <li><a href="supports6.aspx">Certifications</a></li>
                <li class="highlightme">MSDS</li>
            </ul>
        </div>
    </div>
    <div class="techpagecontainter">
        <div class="techr">
            <uc1:right ID="right1" runat="server" />
        </div>
        <div class="techl">
            <div class="pagepath">
                <a href="index.aspx">Home</a> / <a href="supports.aspx">Technical Supports Center</a> /  MSDS(Material Safety Data Sheet)</div>
            <div class="techpagecnt">
                <div class="pagetitle">
                    MSDS(Material Safety Data Sheet)</div>
                    <%=Maticsoft.Common.webcommand.GetInfo(231,1) %>
                <%--<asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <p class="faqq">
                            <%#Eval("title") %></p>
                        <%#Eval("content") %>
                    </ItemTemplate>
                </asp:Repeater>--%>
            </div>
        </div>
    </div>
</asp:Content>
