<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.Master" AutoEventWireup="true"
	CodeBehind="service.aspx.cs" Inherits="Song.Web.en.service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(function () {
			$("#menu ul li").removeClass("current");
			$("#menu ul li").eq(4).addClass("current");
		});
	</script>
	<script src="/js/FP-TopMenu.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			// Top Menu---------------------------------------
			TopMenu();
			//var rt = requesthtml.QueryStr("inputStr");
			//htmlrequest("awen");


			$("#servbts ul li").hover(function () {
				if ($(this).hasClass("servbthi")) return false;
				//$(this).not($(this).hasClass("servbthi")).addClass("servbthover");
				$(this).addClass("servbthover");
			},
		function () {
			$(this).removeClass("servbthover");
		});


			$("#servbts ul li").click(function () {
				$(".servframe").eq($(this).index()).show().siblings().hide();
				//$(this).addClass("servbtshi").siblings().removeClass("servbtshi");
				$(this).removeClass("servbthover");
				$(this).addClass("servbthi").siblings().removeClass("servbthi");
				setrtheiht();

			});

			var htmlbat = htmlrequest("item");
			$("#servbts>ul>li").eq(htmlbat).trigger("click");


			// form -----------------------------------------------------------

			$("input[class*=required]").after("<span class='rstar'> *</span>");
			$("input").blur(function () {
				var $parent = $(this).parent();
				//$parent.find(".msg").remove();
				var okMsg = '<img src="/images/g_formchk.png" width="16" height="16" />';
				if ($(this).is("#urname")) {
					//var tsstr=
					if ($.trim(this.value) == "" || ($.trim(this.value)).length < 2) {
						var errorMsg = "请输入您的姓名";
						//alert($.trim(this.value.length));
						if ($parent.find(".rstar").length < 1) $parent.find(".required").after("<span class='rstar'> *</span>");
						$parent.find(".msg").text(errorMsg);
					} else {

						$parent.find(".rstar").remove();
						$parent.find(".msg").html(okMsg);
					}
				}

				if ($(this).is("#urcompany")) {
					if ($.trim(this.value) == "" || ($.trim(this.value)).length < 2) {
						var errorMsg = "请输入您的公司名称";
						if ($parent.find(".rstar").length < 1) $parent.find(".required").after("<span class='rstar'> *</span>");
						$parent.find(".msg").text(errorMsg);
					} else {
						$parent.find(".rstar").remove();
						$parent.find(".msg").html(okMsg);
					}
				}

				if ($(this).is("#uremail")) {
					if (this.value == "" || (this.value != "" && !/.+@.+\.[a-zA-Z]{2,4}$/.test(this.value))) {
						var errorMsg = "请输入您的正确邮箱地址";
						if ($parent.find(".rstar").length < 1) $parent.find(".required").after("<span class='rstar'> *</span>");
						$parent.find(".msg").text(errorMsg);
					} else {
						$parent.find(".rstar").remove();
						$parent.find(".msg").html(okMsg);
					}
				}

				if ($(this).is("#urtel")) {
					if ($.trim(this.value) == "" || ($.trim(this.value)).length < 6) {
						// \d{3}-\d{8}|\d{4}-\d{7}
						// (^\([0]\d{2}|\d{4}\))(\d{6,7}$)
						//if($.trim(this.value)=="" || !/^((d{3,4})|d{3,4}-)?d{7,8}/.test(this.value) ) {
						//!/[^\d]/.test(v)
						var errorMsg = "请输入您的常用电话号码";
						if ($parent.find(".rstar").length < 1) $parent.find(".required").after("<span class='rstar'> *</span>");
						$parent.find(".msg").text(errorMsg);
					} else {
						$parent.find(".rstar").remove();
						$parent.find(".msg").html(okMsg);
					}
				}

			});


			$('#sendf').click(function () {

				$("form :input.required").trigger('blur');
				var numError = $('form .rstar').length;
				if (numError) {
					alert("请检查您的输入");
					return false;
				}

				$.ajax({
					type: "POST",
					url: "cn_sendmail.php",
					data: {
						//product:$("#urproduct").val(),
						name: $("#urname").val(),
						company: $("#urcompany").val(),
						email: $("#uremail").val(),
						tel: $("#urtel").val(),
						contents: $("#urcontents").val(),
						mycodes: $("#mycodes").val()

					},
					error: function () { alert("未知错误，请稍后再试") },
					success: function (msg) {
						alert(msg);
						fGetCode(); // Reset the codes
					}

				});
			});
			//end form


		}); // end readydocument


		// Functions --------------------------------------------------------------------------------------
		function setrtheiht() {
			var hfot = $(".servframe:visible").height() + $(".servframe:visible").offset().top - 200;
			//var hfot=$("#hfoot").offset().top-$("#sercontr").offset().top;
			//alert(hfot);
			$("#sercontr").css("height", hfot);
		}
		function findid(str, arr) {
			var narray = new Array();
			var tems;
			for (var key in arr) {
				if (arr[key] != str) narray.push(arr[key]);
				if (arr[key] == str) tems = arr[key];
			}
			narray.reverse();
			narray.push(tems);
			return narray;
		}

		function picrunself() {
			//bthit
			var playnext = bthit + 1;
			if (bthit == $("#servpicfuner>img").length - 1) playnext = 0;
			$("#servpicfuner>img").eq(playnext).trigger("click");

		}

		function fGetCode() {
			document.getElementById('mycode').src = 'cn_imgcodes.php?temp="' + Math.random() + '"';
		}

		function htmlrequest(s) {
			var str = window.location.href;
			var stra;
			var htmlstr = "?" + s;
			str = str.substring(str.lastIndexOf(htmlstr) + htmlstr.length + 1);
			var strn = Number(str);
			if (strn >= 0 && strn < 4) return (strn);
			else return (0);
		}
		function clearinfo() {
			document.getElementById("enquireform").reset();
			$(".msg").text("");

		}
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="servbanner">
		<div class="center">
			<div id="servcnt">
				<div id="servbts">
					<ul>
						<li>Feedback/Enquire Online</li>
						<li>Contact Us</li>
						<li>File Download</li>
					</ul>
				</div>
				<div id="servpicfuner">
				</div>
				<div id="servpicbig">
					&nbsp;</div>
			</div>
		</div>
	</div>
	<div class="center">
		<div id="sercontl">
			<div class="servframe">
				<div class="pathhere">
					<a href="index.aspx">Home</a>Service / Feedback/Enquire Online</div>
				<div class="txttil">
					Feedback/Enquire Online</div>
				<form name="enquireform" id="enquireform" method="post">
				<div class="pTabPageBord">
					<p>
						&nbsp;</p>
					<div class="divTab">
						<span class="labe1">Name</span>
						<asp:TextBox name="urname" runat="server" CssClass="required" ID="urname"></asp:TextBox>
						<span class="msg"></span>
					</div>
					<div class="divTab">
						<span class="labe1">Company</span>
						<asp:TextBox name="urcompany" runat="server" CssClass="required" ID="urcompany"></asp:TextBox>
						<span class="msg"></span>
					</div>
					<div class="divTab">
						<span class="labe1">Email</span>
						<asp:TextBox name="uremail" runat="server" CssClass="required" ID="uremail"></asp:TextBox>
						<span class="msg"></span>
					</div>
					<div class="divTab">
						<span class="labe1">Phone No.</span>
						<asp:TextBox name="urtel" runat="server" CssClass="required" ID="urtel"></asp:TextBox>
						<span class="msg"></span>
					</div>
					<div class="divTabs">
						<span class="labe1">Contents</span></div>
					<div class="divTabt">
						<textarea name="textarea" runat="server" cols="45" rows="15" id="urcontents"></textarea>
					</div>
					<div class="clearit">
					</div>
					<%--<div style="padding-top: 30px; text-align: center">
						<div style="padding-left: 160px;">
							<span class="left vfdd">请输入验证码</span> <span>
								<input name="mycodes" type="text" class="left" id="mycodes" size="10" />
							</span><span class="left">
								<img id="mycode" src="cn_imgcodes.php" />
							</span><span class="left">
								<input type="button" name="rimg" id="rimg" value="看不清楚" onclick="fGetCode();" />
							</span>
						</div>
					</div>--%>
					<div style="padding-top: 30px; text-align: center">
						<asp:Button ID="sendf" runat="server" Text="&nbsp;&nbsp;Sent&nbsp;&nbsp;" name="sendf"
							title="Sent" OnClick="sendf_Click" />
						<input type="button" name="setinfo" id="setinfo" value="&nbsp;&nbsp;Reset all&nbsp;&nbsp;"
							onclick="location.reload()" style="" />
					</div>
					<p>
						&nbsp;</p>
					<p>
						&nbsp;</p>
					<p>
						&nbsp;</p>
					<p>
						&nbsp;</p>
				</div>
				</form>
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>
			</div>
			<div class="servframe">
				<div class="pathhere">
					<a href="index.aspx">Home</a> / Service / Contact information</div>
				<div class="txttil">
					Contact information</div>
				<%=Maticsoft.Common.webcommand.GetInfo(222,1) %>
			</div>
			<div class="servframe">
				<div class="pathhere">
					<a href="/index.aspx">Home</a> / Service /  File Download</div>
				<div class="txttil">
					 File Download</div>
				<%--<p>
					<img src="../images/file_manual.jpg" width="122" height="156" class="fileimg" /></p>
				<p>
					&nbsp;</p>
				<p>
					<strong>产品说明书(英文版本:2012/12)</strong></p>
				<p>
					&nbsp;</p>
				<p>
					<img src="../images/ico_pdf.png" alt="" width="16" height="16" align="absbottom" />
					<a href="../uploadfile/files/FirstPower_2012.pdf" target="_blank"><strong>一电英文产品说明书</strong></a>
					(文件大小: 2M. 按鼠标右键另存到您的电脑)</p>
				<p>
					<a href="../uploadfile/files/201312212037299301.doc">
						<img src="../images/ico_rar.png" alt="" width="16" height="16" align="absbottom" /><strong>
							文件下载</strong></a> (PDF 高清晰版本, 文件大小: 14.5M)</p>
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>--%>
				<asp:Repeater ID="Repeater2" runat="server">
					<ItemTemplate>
						<p>
							<img src="/uploadfile/pic/<%#Eval("text2") %>" alt="" width="200" height="112" class="fileimg" /></p>
						<p>
							&nbsp;</p>
						<p>
							<strong><%#Eval("title") %></strong></p>
						<p>
							&nbsp;</p>
						<p>
							<a href="../uploadfile/files/<%#Eval("photo") %>">
								<img src="../images/ico_rar.png" width="16" height="16" align="absbottom" />
								<strong>Download File</strong></a></p>
								<br />
					</ItemTemplate>
				</asp:Repeater>
			</div>
		</div>
		<div id="sercontr">
			<p>
				<img src="/images/cn_service_3.png" /></p>
			<p>
				&nbsp;</p>
		</div>
	</div>
	<div class="clearit">
	</div>
</asp:Content>
