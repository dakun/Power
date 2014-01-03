<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="Song.Web.manage.ProductInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>网站设置</title>
    <link href="css/skin.css" rel="stylesheet" type="text/css" />
    <link href="css/css.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">

        function CheckFile(obj) {
            var array = new Array('doc', 'xls', 'rar', 'zip', 'ppt', 'pdf', '.ppt', 'docx');  //可以上传的文件类型  
            if (obj.value == '') {
                alert("让选择要上传的文件!");
                return false;
            }
            else {
                var fileContentType = obj.value.match(/^(.*)(\.)(.{1,8})$/)[3]; //这个文件类型正则很有用：）  
                var isExists = false;
                for (var i in array) {
                    if (fileContentType.toLowerCase() == array[i].toLowerCase()) {
                        isExists = true;
                        return true;
                    }
                }
                if (isExists == false) {
                    alert("上传文件类型不正确!文件只支持上传.doc、.xls、.rar、.zip、.ppt、.pdf、.docx格式，请重新上传！");
                    return false;
                }
                return false;
            }
        }  
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="17" valign="top" background="images/mail_leftbg.gif">
                    <img src="images/left-top-right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="images/content-bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg"
                        id="table2">
                        <tr>
                            <td height="31">
                                <div class="titlebt">
                                    产品管理</div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="16" valign="top" background="images/mail_rightbg.gif">
                    <img src="images/nav-right-bg.gif" width="16" height="29" />
                </td>
            </tr>
            <tr>
                <td valign="middle" background="images/mail_leftbg.gif">
                    &nbsp;
                </td>
                <td valign="top" bgcolor="#F7F8F9">
                    <div class="k10">
                    </div>
                    <!--主体内容区 开始-->
                    <% if (Request.QueryString["action"] == "edittype")
                       { %>
                    <table width="100%" border="1" bordercolor="#eae3e4">
                        <tr>
                            <th rowspan="3">
                                文件
                            </th>
                            <th rowspan="3">
                                所属系列
                            </th>
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
                        <tr>
                            <td>
                                <asp:FileUpload ID="newsphoto" runat="server" onchange="CheckFile(this);" Width="100%"  />
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value="nophoto" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="100%">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_xh" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_eddy" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_edrl" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_nz" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_cmm" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_cin" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_wmm" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_win" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_gmm" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_gin" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_zgmm" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_zgin" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_dzxh" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_dzwz" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_kg" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="edit_lbs" runat="server" Width="100%" align="center"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="edit_button" runat="server" Text="确认修改" OnClick="edit_button_Click"
                                    CssClass="inp1" Width="100%" align="center" />
                            </td>
                        </tr>
                    </table>
                    <%}
                       else
                       { %>
                    <table border="1" cellspacing="0" width="1700" cellpadding="0" class="tablecss1"
                        bordercolor="#eae3e4">
                        <tr>
                            <td style="height: 30px" colspan="17" width="100%" class="tabletop">
                                产品管理 <a href="#" onclick="history.back()">返回上一页</a>
                            </td>
                        </tr>
                        <tr align="center" width="100%">
                            <td colspan="17">
                                <asp:Label ID="curtypename" runat="server"></asp:Label>
                                <!-- 信息类别管理 开始 -->
                                <table border="1" width="1700" cellspacing="0" cellpadding="0" class="tablecss1"
                                    bordercolor="#f7f7f7">
                                    <asp:Repeater ID="newstypelist" runat="server" OnItemCommand="manageproductlist_ItemCommand"
                                        OnItemDataBound="manageproductlist_ItemDataBound">
                                        <HeaderTemplate>
                                            <tr bgcolor="#F7F7F7" style="font-weight: bolder">
                                                <th rowspan="3">
                                                    文件
                                                </th>
                                                <th rowspan="3">
                                                    所属系列
                                                </th>
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
                                                <th rowspan="3">
                                                    操作
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
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <%#Eval("pdfurl") %>
                                                </td>
                                                <td align="center">
                                                    <%# getTypeName(Convert.ToString(Eval("producttype")))%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("Model") %>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("NominalVoltage")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("Capacity")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("InternalResistance")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("LengthMM")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("LengthIn")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("WidthMM")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("WidthIn")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("HeightMM")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("HeightIn")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("TotalHeightMM")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("TotalHeightIn")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("TerminalType")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("TerminalPosition")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("WeightKg")%>
                                                </td>
                                                <td align="center">
                                                    <%#Eval("WeightLbs")%>
                                                </td>
                                                <td align="center">
                                                    <asp:LinkButton ID="lbtn_Update" CommandName="Update" CommandArgument='<%#Eval("ID") %>'
                                                        runat="server">修改</asp:LinkButton>
                                                    |
                                                    <asp:LinkButton ID="lbtn_Del" CommandName="Del" CommandArgument='<%#Eval("ID") %>'
                                                        runat="server">删除</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                                <center>
                                    <asp:Literal ID="nodate" runat="server"></asp:Literal></center>
                                <!-- 信息类别管理 结束 -->
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="center" colspan="17" bgcolor="#f7f7f7" style="color: Red;">
                                增加产品
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="3">
                                文件
                            </th>
                            <th rowspan="3">
                                选择系列
                            </th>
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
                            <th rowspan="3">
                                操作
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
                        <tr>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" onchange="CheckFile(this);" />
                                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value="nophoto" />
                                <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                            </td>
                            <td>
                                <asp:DropDownList ID="newstype" runat="server" Width="100%">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="add_xh" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_eddy" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_edrl" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_nz" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_cmm" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_cin" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_wmm" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_win" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_gmm" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_gin" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_zgmm" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_zgin" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_dzxh" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_dzwz" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_kg" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="add_lbs" runat="server" Width="100%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="添加产品" OnClick="Button1_Click" CssClass="inp1"
                                    Width="100%" />
                            </td>
                        </tr>
                    </table>
                    <%} %>
                    <!--主体内容区 结束-->
                </td>
                <td background="images/mail_rightbg.gif">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td valign="bottom" background="images/mail_leftbg.gif">
                    <img src="images/buttom_left2.gif" width="17" height="17" />
                </td>
                <td background="images/buttom_bgs.gif">
                    <img src="images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="images/mail_rightbg.gif">
                    <img src="images/buttom_right2.gif" width="16" height="17" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
