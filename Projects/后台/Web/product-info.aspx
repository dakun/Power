<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true"
    CodeBehind="product-info.aspx.cs" Inherits="Song.Web.product_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $(".battspectab table tr:odd").addClass("trcolorrowb");
            $(".battspectab table tr").hover(function () {
                $(this).addClass("trcolorhi");
            }, function () {
                $(this).removeClass("trcolorhi");
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrap">
        <div id="stopb">
            <div class="center">
                <a href="Products_Overview.html">
                    <img src="images/cn_products_bannerb.jpg" width="960" height="88"></a></div>
        </div>
        <div class="battcnt">
            <div class="pagepath">
                <a href="index.html">首页</a> / <a href="Products_Overview.html">产品中心</a> / 长寿命电池系列
            </div>
            <div id="batttsercnt">
                <div class="ser">
                    长寿命电池系列</div>
                <div class="addwo">
                    <div class="bshare-custom">
                        <div class="bsPromo bsPromo2">
                        </div>
                        <a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog">
                        </a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb">
                        </a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis">
                        </a>
                    </div>
                </div>
            </div>
            <div class="battprdcnt">
                <img id="battserimg" src="../images/Battery_Series_Long_Life.jpg" width="410" height="320"
                    class="bimg">
                <div class="battprdcntc">
                    <div class="capt">
                        <strong>标称电压：</strong>6V、12V； &nbsp;&nbsp;&nbsp;&nbsp;<strong>额定容量：</strong>40AH~250AH
                        ；<br>
                        采用特殊的铅钙合金，同时利用高强度的ABS塑料外壳或阻燃ABS塑料外壳和专利密封技术，使电池的设计使用寿命达到12年。</div>
                    <div class="feat">
                        <p>
                            电池特点</p>
                        <ul>
                            <li>不需维护，无需加水补液</li>
                            <li>可靠性高、使用寿命长</li>
                            <li>重量、体积比能量高</li>
                            <li>内阻小，输出功率高</li>
                            <li>自放电小,使用温度范围广</li>
                            <li>满荷电出厂，运输安全</li>
                            <li>可以任意方向使用<br>
                            </li>
                        </ul>
                    </div>
                    <div class="app">
                        <p>
                            典型应用领域</p>
                        <ul>
                            <li>通讯设备 </li>
                            <li>电子仪器 </li>
                            <li>不间断电源 </li>
                            <li>太阳能发电系统</li>
                            <li>风力发电系统</li>
                        </ul>
                        <p>
                            &nbsp;</p>
                    </div>
                    <div class="clearit">
                    </div>
                    <div class="appsmall">
                        <img src="images/app_01.jpg" width="55" height="55">
                        <img src="images/app_02.jpg" width="55" height="55">
                        <img src="images/app_08.jpg" width="55" height="55">
                        <img src="images/app_04.jpg" width="55" height="55">
                        <img src="images/app_11.jpg" width="55" height="55">
                        <img src="images/app_17.jpg" width="55" height="55">
                    </div>
                </div>
            </div>
        </div>
        <div class="clearit">
        </div>
        <div class="battspec2">
            长寿命电池系列技术规格
        </div>
        <div class="battspectab">
            <table width="100%" border="1">
                <tr>
                    <th rowspan="3">
                        型号
                    </th>
                    <th rowspan="3">
                        额定电压<br />
                        (V)
                    </th>
                    <th rowspan="3">
                        额定容量<br />
                        (AH)
                    </th>
                    <th rowspan="3">
                        内阻<br />
                        (mΩ)
                    </th>
                    <th colspan="8">
                        外型规格（mm/in）
                    </th>
                    <th colspan="2" rowspan="2">
                        端子
                    </th>
                    <th colspan="2" rowspan="2">
                        重量<br />
                        ±4%(Kg)
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        长
                    </th>
                    <th colspan="2">
                        宽
                    </th>
                    <th colspan="2">
                        高
                    </th>
                    <th colspan="2">
                        总高
                    </th>
                </tr>
                <tr>
                    <th height="19">
                        mm
                    </th>
                    <th>
                        in
                    </th>
                    <th>
                        mm
                    </th>
                    <th>
                        in
                    </th>
                    <th>
                        mm
                    </th>
                    <th>
                        in
                    </th>
                    <th>
                        mm
                    </th>
                    <th>
                        in
                    </th>
                    <th>
                        型号
                    </th>
                    <th>
                        位置
                    </th>
                    <th>
                        Kg
                    </th>
                    <th>
                        Lbs
                    </th>
                </tr>
                <asp:Repeater runat="server" ID="repepat6">
                    <ItemTemplate>
                        <tr class="">
                            <td style="font-weight: bold; text-align: left; padding-left: 30px; font-size: 13px;
                                cursor: pointer; background-image: url(images/ico_pdf.gif); background-repeat: no-repeat no-repeat;">
                                <%#Eval("Model")%>
                            </td>
                            <td>
                                <%#Eval("NominalVoltage")%>
                            </td>
                            <td>
                               <%#Eval("Capacity")%>
                            </td>
                            <td>
                                <%#Eval("InternalResistance")%>
                            </td>
                            <td>
                                <%#Eval("LengthMM")%>
                            </td>
                            <td>
                                <%#Eval("LengthIn")%>
                            </td>
                            <td>
                                <%#Eval("WidthMM")%>
                            </td>
                            <td>
                                <%#Eval("WidthIn")%>
                            </td>
                            <td>
                                <%#Eval("HeightMM")%>
                            </td>
                            <td>
                                 <%#Eval("HeightIn")%>
                            </td>
                            <td>
                                <%#Eval("TotalHeightMM")%>
                            </td>
                            <td>
                                <%#Eval("TotalHeightIn")%>
                            </td>
                            <td>
                                <%#Eval("TerminalType")%>
                            </td>
                            <td>
                                 <%#Eval("TerminalPosition")%>
                            </td>
                            <td>
                                <%#Eval("WeightKg")%>
                            </td>
                            <td>
                               <%#Eval("WeightLbs")%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<tr class="">
    <td style="font-weight: bold; text-align: left; padding-left: 30px; font-size: 13px; cursor: pointer; background-image: url(images/ico_pdf.gif); background-repeat: no-repeat no-repeat;">FP1270L</td>
    <td>12</td>
    <td>7</td>
    <td>28</td>
    <td>151</td>
    <td>5.94</td>
    <td>65</td>
    <td>2.56</td>
    <td>94</td>
    <td>3.7</td>
    <td>100</td>
    <td>3.94</td>
    <td>T1/T2</td>
    <td>F</td>
    <td>2.35</td>
    <td>5.18</td>
  </tr>
  <tr class="">
    <td style="font-weight: bold; text-align: left; padding-left: 30px; font-size: 13px; cursor: pointer; background-image: url(images/ico_pdf.gif); background-repeat: no-repeat no-repeat;">FP1270L</td>
    <td>12</td>
    <td>7</td>
    <td>28</td>
    <td>151</td>
    <td>5.94</td>
    <td>65</td>
    <td>2.56</td>
    <td>94</td>
    <td>3.7</td>
    <td>100</td>
    <td>3.94</td>
    <td>T1/T2</td>
    <td>F</td>
    <td>2.35</td>
    <td>5.18</td>
  </tr>--%>
            </table>
        </div>
    </div>
</asp:Content>
