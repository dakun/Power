<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Left.aspx.cs" Inherits="Song.Web.manage.Left" %>

<%@ Register Src="control/MenuList.ascx" TagName="MenuList" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>管理页面</title>
    <script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="js/prototype.lite.js" type="text/javascript"></script>
    <script src="js/moo.fx.js" type="text/javascript"></script>
    <script src="js/moo.fx.pack.js" type="text/javascript"></script>
    <script language="javascript">
        //显示菜单
        function ShowMenu(id) {
            //jQuery("#l" + id).load("AjaxWebService.aspx?come=lv3&id=" + id);
            jQuery("#l" + id).slideToggle(300);
        }
    </script>
    <style>
        body
        {
            font: 12px Arial, Helvetica, sans-serif;
            color: #000;
            background-color: #EEF2FB;
            margin: 0px;
        }
        #container
        {
            width: 182px;
        }
        #container a
        {
            text-indent: 30px;
        }
        H1
        {
            font-size: 12px;
            margin: 0px;
            width: 182px;
            cursor: pointer;
            height: 30px;
            line-height: 20px;
        }
        H1 a
        {
            display: block;
            width: 182px;
            color: #395a7b;
            height: 30px;
            text-decoration: none;
            moz-outline-style: none;
            background-image: url(images/menu_bgS.gif);
            background-repeat: no-repeat;
            line-height: 30px;
            margin: 0px;
            padding: 0px;
        }
        .content
        {
            width: 182px;
            height: 26px;
        }
        .MM ul
        {
            list-style-type: none;
            margin: 0px;
            padding: 0px;
            display: block;
        }
        .MM li
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            list-style-type: none;
            display: block;
            text-decoration: none; /*height: 26px;*/
            width: 182px;
            padding-left: 0px;
        }
        .MM
        {
            width: 182px;
            margin: 0px;
            padding: 0px;
            left: 0px;
            top: 0px;
            right: 0px;
            bottom: 0px;
            clip: rect(0px,0px,0px,0px);
        }
        .MM a:link
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(images/menu_bg1.gif);
            background-repeat: no-repeat;
            height: 26px;
            width: 182px;
            display: block;
            text-align: left;
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            text-decoration: none;
        }
        .MM a:visited
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(images/menu_bg1.gif);
            background-repeat: no-repeat;
            display: block;
            text-align: left;
            margin: 0px;
            padding: 0px;
            height: 26px;
            width: 182px;
            text-decoration: none;
        }
        .MM a:active
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(images/menu_bg1.gif);
            background-repeat: no-repeat;
            height: 26px;
            width: 182px;
            display: block;
            text-align: left;
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            text-decoration: none;
        }
        .MM a:hover
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            font-weight: bold;
            color: #006600;
            background-image: url(images/menu_bg2.gif);
            background-repeat: no-repeat;
            text-align: left;
            display: block;
            margin: 0px;
            padding: 0px;
            height: 26px;
            width: 182px;
            text-decoration: none;
        }
        .MM li .link1
        {
            color: #395a7b;
        }
        .MM li .lv3
        {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
        <tr>
            <td width="182" valign="top">
                <div id="container">
                    <%--<h1 class="type">
                        <a href="javascript:void(0)">系统设置</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <img src="images/menu_topline.gif" width="182" height="5" />
                                </td>
                            </tr>
                        </table>
                        <ul class="MM">
                            <li><a href="webconfig.aspx?id=2" target="main">网站设置（中）</a></li>
                            <li><a href="webconfig.aspx?id=1" target="main">网站设置（英）</a></li>
                        </ul>
                    </div>--%>
                    <uc1:MenuList ID="MenuList1" runat="server" />
                    <%--<h1 class="type">
                        <a href="javascript:void(0)">修改密码</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <img src="images/menu_topline.gif" width="182" height="5" />
                                </td>
                            </tr>
                        </table>
                        <ul class="MM">
                            <li><a href="resetpassword.aspx" target="main">修改密码</a></li>
                        </ul>
                    </div>--%>
                    <h1 class="type">
                        <a href="javascript:void(0)">系统设置（勿动）</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <img src="images/menu_topline.gif" width="182" height="5" />
                                </td>
                            </tr>
                        </table>
                        <ul class="MM">
                            <li><a href="ClassManage.aspx" target="main">栏目管理</a></li>
                            <li><a href="FieldRunList.aspx?action=add" target="main">字段控制组</a></li>
                            <li><a href="SystemFunction.aspx" target="main">功能管理</a></li>
                        </ul>
                    </div>
                    <script type="text/javascript">
                        var contents = document.getElementsByClassName('content');
                        var toggles = document.getElementsByClassName('type');

                        var myAccordion = new fx.Accordion(
			toggles, contents, { opacity: true, duration: 400 }
		);
                        myAccordion.showThisHideOpen(contents[0]);
                    </script>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
