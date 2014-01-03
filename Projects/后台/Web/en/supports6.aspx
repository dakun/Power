<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.Master" AutoEventWireup="true"
    CodeBehind="supports6.aspx.cs" Inherits="Song.Web.en.supports6" %>

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

            $(".fancybox").fancybox();
            TechMenu(5);


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
                <li class="highlightme">Certifications</li>
                <li><a href="supports7.aspx">MSDS</a></li>
            </ul>
        </div>
    </div>
    <div class="techpagecontainter">
        <div class="techr">
            <uc1:right ID="right1" runat="server" />
        </div>
        <div class="techl">
            <div class="pagepath">
                <a href="index.aspx">Home</a> / <a href="supports.aspx">Technical Supports Center</a>
                / Certifications/Approved</div>
            <div class="techpagecnt">
                <div class="pagetitle">
                    Certifications/Approved</div>
                <%=Maticsoft.Common.webcommand.GetInfo(230,1) %>
            </div>
        </div>
    </div>
</asp:Content>
