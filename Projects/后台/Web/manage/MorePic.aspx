<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MorePic.aspx.cs" Inherits="Song.Web.manage.testPic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>多图片上传</title>
    <script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function addFile(id) {
            var div = document.createElement("div");
            div.setAttribute("id", id);
            div.innerHTML += "<br />";
            var f = document.createElement("input");
            f.setAttribute("type", "text");
            f.setAttribute("name", "txtTitle");
            f.setAttribute("size", "50");
            div.innerHTML += "<span>标题：</span>";
            div.appendChild(f);
            div.innerHTML += "<br />";
            f = document.createElement("textarea");
            f.setAttribute("name", "txtDetail");
            f.setAttribute("cols", "38");
            f.setAttribute("rows", "2");
            div.innerHTML += "<span>说明：</span>";
            div.appendChild(f);
            div.innerHTML += "<br />";
            f = document.createElement("input");
            f.setAttribute("type", "file");
            f.setAttribute("name", "File");
            f.setAttribute("size", "50");
            div.innerHTML += "<span>图片：</span>";
            div.appendChild(f);

            //IE不支持
            var d = document.createElement("input");
            d.setAttribute("type", "button")
            d.setAttribute("name", "del")
            d.setAttribute("onclick", "deteFile(this)");
            d.setAttribute("value", "移除")
            div.appendChild(d)
            div.innerHTML += "<br />";
            document.getElementById("_container").appendChild(div);

            //IE情况下，设置按钮属性
            //$("input[type=button]").click(function(){ deteFile(this) });
            $("input[name=del]").click(function () { deteFile(this) });
        }

        //删除节点
        function deteFile(o) {
            while (o.tagName != "DIV") o = o.parentNode;
            o.parentNode.removeChild(o);
        }

        //查找出改产品中



        //    $.ajax({url:"http://www.baidu.com",cache = false, success:function(html){$("#result").append(html)}})
        //$get("http://www.baidu.com",function(){ alert("1") })//get
        //$post("http://www.baidu.com","{'id':1}",function(){ alert("1") });//post
        //  </script>
    <style type="text/css">
    <!--
        .PicList { width:100%;  font-size:12px; float:left }
        .PicList ul { padding:0px; margin:0px; }
        .PicList li { list-style:none; padding:0px; margin:0px; margin-left:10px; float:left; width:80px; height:80px;overflow:hidden; border:1px solid #aaa; text-align:center; }
        .PicList_Link { margin-top:5px; }
        a:link,a:visted { color:#333; text-decoration:none;}
        a:hover { color:#ff9900; text-decoration:underline; } 
    -->
</style>
</head>
<body>
    <form id="form1" runat="server" method="post" enctype="multipart/form-data">
    <div class="PicList">
        <ul>
            <asp:Repeater ID="NList" runat="server">
                <ItemTemplate>
                    <li>
                        <img height="60px;" src="../UploadFile/Spic/<%#Eval("Pic") %>" /><div class="PicList_Link">
                            <a href="?action=del&id=<%# Eval("id") %>&no=<%=no %>" onclick="{if(confirm('您确定要删除该图片吗?')){return true;}return false;}">
                                删除图片</a></div>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <div id="_container" style="float: left; padding-top: 20px; line-height: 30px; width: 100%">
        <span>标题：</span><input name="txtTitle" size="50" type="text" /><br />
        <span>说明：</span><textarea name="txtDetail" cols="38" rows="2"></textarea><br />
        <span>图片：</span><input type="file" size="50" name="File" />
    </div>
    <div style="float: left; padding-top: 20px;">
        <input type="button" value="添加文件(Add)" onclick="addFile('')" />
        <asp:Button runat="server" Text="开始上传" ID="UploadButton" OnClick="UploadButton_Click">
        </asp:Button>
    </div>
    <div style="padding: 10px 0">
    </div>
    <div>
        <asp:Label ID="strStatus" runat="server" Font-Names="宋体" Font-Bold="True" Font-Size="9pt"
            Width="450px" BorderStyle="None" BorderColor="White"></asp:Label>
    </div>
    </form>
</body>
</html>
