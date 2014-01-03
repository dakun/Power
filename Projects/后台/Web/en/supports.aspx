<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.Master" AutoEventWireup="true"
    CodeBehind="supports.aspx.cs" Inherits="Song.Web.en.supports" %>

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
            //TechMenu(2);	
            //$(".fancybox").fancybox();




        });
	

    </script>
    <style type="text/css">
        body
        {
            background-image: url(../images/bg_pages5.gif);
            background-color: #ededed;
            background-repeat: repeat-y;
            background-position: center;
        }
        .spindcnt
        {
            width: 650px;
            height: 180px;
        }
        .spindcnt div
        {
            float: right;
            width: 400px;
            border-top: #cfe1ef solid 5px;
            padding-top: 10px;
            padding-bottom: 30px;
        }
        .spindcnt img
        {
            float: left;
            border: 0;
            padding-top: 10px;
            padding-left: 40px;
        }
        .spindcnt p
        {
            font-size: 16px;
            font-weight: bold;
            color: #555;
        }
        .spindcnt ul
        {
            padding-left: 15px;
            list-style-position: outside;
            list-style-type: disc;
        }
        .spindcnt ul li
        {
            padding-bottom: 0px;
            color: #666;
            line-height: 15px;
            font-size: 12px;
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
                <a href="index.aspx">Home</a> / Technical Supports Center</div>
            <div class="techpagecnt">
                <div class="pagetitle">
                    FirstPower（一电<sup>®</sup>）Technical Supports Center</div>
                <p>
                </p>
                <div class="spindcnt">
                    <a href="supports1.aspx">
                        <img src="../images/supports_tech_01.jpg" alt="" /></a>
                    <div>
                        <p>
                            <a href="supports1.aspx">FirstPower VRLA(AGM) Battery</a></p>
                        <ul>
                            <li>Features of FirstPower VRLA(AGM) Battery</li>
                            <li>Battery Construction</li>
                            <li>Characteristics of Discharging</li>
                            <li>Characteristics of Charging</li>
                            <li>Battery Life</li>
                            <li>Battery Storage</li>
                            <li>Battery Internal Resistance</li>
                            <li>Battery Capacity Selection</li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
                <div class="clearit">
                </div>
                <div class="spindcnt">
                    <a href="Supports2.aspx">
                        <img src="../images/supports_tech_03.jpg" /></a>
                    <div>
                        <p>
                            <a href="Supports2.aspx">FirstPower Gelled ( Gelled Electrolyte ) Battery</a></p>
                        <ul>
                            <li>Introduction</li>
                            <li>Features & Benefits</li>
                            <li>Applications</li>
                            <li>Characteristics of Charging</li>
                            <li>Discharge & cycling ability</li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
                <div class="spindcnt">
                    <a href="Supports3.aspx">
                        <img src="../images/supports_tech_04.jpg" /></a>
                    <div>
                        <p>
                            <a href="Supports3.aspx">Battery Packs</a></p>
                        <ul>
                            <li>CFP Type Battery Pack Assembling</li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
                <div class="spindcnt">
                    <a href="Supports4.aspx">
                        <img src="../images/supports_tech_05.jpg" /></a>
                    <div>
                        <p>
                            <a href="Supports4.aspx">Battery Terminals</a></p>
                        <ul>
                            <li>Motorcycle Battery Terminals</li>
                            <li>Terminal Types</li>
                            <li>Terminal Position</li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
                <div class="spindcnt">
                    <a href="Supports5.aspx">
                        <img src="../images/supports_tech_05.jpg" /></a>
                    <div>
                        <p>
                            <a href="Supports5.aspx">Handling Precautions</a></p>
                        <ul>
                            <li>Charging and Handling Precautions for FirstPower VRLA Batteries</li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
                <div class="spindcnt">
                    <a href="Supports6.aspxl">
                        <img src="../images/supports_tech_09.jpg" /></a>
                    <div>
                        <p>
                            <a href="Supports6.aspx">International Certifications</a></p>
                        <ul>
                            <li>ISO9001:2000 Certification</li>
                            <li>UL Certification</li>
                            <li>CE Certification</li>
                            <li>VdS Certification</li>
                            <li>KS Approval</li>
                            <li>IEC Certification</li>
                            <li>JISC Certification</li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
                <div class="spindcnt">
                    <a href="Supports7.aspx">
                        <img src="../images/supports_tech_08.jpg" /></a>
                    <div>
                        <p>
                            <a href="Supports7.aspx">MSDS(Material Safety Data Sheet)</a></p>
                        <ul>
                            <li>MATERIAL SAFETY DATA SHEET (MSDS) Updated: March. 17, 2007 </li>
                            <li>Updated: March. 17, 2007? </li>
                        </ul>
                    </div>
                </div>
                <div class="clearit">
                </div>
            </div>
        </div>
    </div>
    <div class="clearit">
    </div>
</asp:Content>
