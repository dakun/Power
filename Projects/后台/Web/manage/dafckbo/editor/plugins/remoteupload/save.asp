<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Dim sMyXmlDoc, sMyXmlHTTP, 
 = "/UploadFile/"
' = "/Upload/"
DealResponse()
Sub DealResponse()
'On Error Resume Next
If createXmlDom Then
	sMyXmlDoc.Load Request
	If sMyXmlDoc.parseError.errorCode <> 0 Then
		FoundErr = True
		ErrMsg = sMyXmlDoc.parseError.reason & "001"
	Else
		Set status = sMyXmlDoc.selectSingleNode("//imgs/status")
		Set curr=status.selectSingleNode("./@curr")
		Set currfile=status.selectSingleNode("./@currfile")
		Set items = sMyXmlDoc.selectNodes("//imgs/img")
		Dim myHttp:Set myHttp=new xHttp
		myHttp.Path=
		Response.Clear
		Response.ContentType = "text/xml"
		Response.Charset = "utf-8"
		Response.Expires = 0 
		Response.Expiresabsolute = Now() - 1 
		Response.AddHeader "pragma","no-cache" 
		Response.AddHeader "cache-control","private" 
		Response.CacheControl = "no-cache"
		'Response.Write "<?xml version=""1.0"" encoding=""utf-8""?>"
		i=0
		For Each item In items
			src=item.GetAttributeNode("src").nodeValue
			myHttp.URL=src
			myHttp.SaveToFile ""
			Set drc=sMyXmlDoc.createAttribute("drc")
			drc.value=myHttp.Path&myHttp.SaveName
			item.setAttributeNode(drc)

			'更新currfile,curr属性值
			i=i+1
			curr.text=i
			currfile.text=src

			'Response.Write "<img src="""&myHttp.Path&myHttp.SaveName&""" />"
		Next
		response.write sMyXmlDoc.xml
		Set myHttp=Nothing
	End If
Else
	FoundErr = True
	ErrMsg = "服务器不支持MSXML对象"
End If
If Err Then
	FoundErr = True
	ErrMsg = Err.Description
	Err.Clear
	WriteErrXml
	Exit Sub
End If
If FoundErr Then
	WriteXml
	Exit Sub
End If
End Sub
%>
<%
'**************************************************
'函数名：getNodeText
'作  用：获取XML文件中指定节点的文本
'参  数：strElementName   ----节点名称
'返回值：解析出来的文本值，
'**************************************************
Function getNodeText(strElementName)
    If IsNull(strElementName) Or IsEmpty(strElementName) Or strElementName = "" Then Exit Function
    On Error Resume Next
    getNodeText = sMyXmlDoc.getElementsByTagName(strElementName).item(0).text
    If Err Then
        getNodeText = ""
        Err.Clear
    End If
End Function

'**************************************************
'函数名：setNodeText
'作  用：设置XML文件中指定节点的文本
'参  数：strNodeName   ----节点名称
'　　　　strNodeText   ----要设置的文本
'返回值：0 = 设置成功; 否则返回Err.Description
'**************************************************
Function setNodeText(strNodeName, strNodeText)
    If IsNull(strNodeText) Or IsEmpty(strNodeText) or strNodeText = "" Then Exit Function
    If IsNull(strNodeName) Or IsEmpty(strNodeName) or strNodeName = "" Then Exit Function
    
    sMyXmlDoc.getElementsByTagName(strNodeName).Item(0).text = strNodeText
End Function

'**************************************************
'函数名：IsNode
'作  用：检查一个Node是否存在且文本不为空
'参  数：strNodeName   ----节点名称
'返回值：True or False
'**************************************************
Function IsNode(strNodeName)
    IsNode = False
    On Error Resume Next
    Dim strTemp
    strTemp = sMyXmlDoc.getElementsByTagName(strNodeName).item(0).text
    If Err Or IsNull(strTemp) Or strTemp = "" Then
        IsNode = False
    Else
        IsNode = True
    End If
End Function

'**************************************************
'函数名：createXmlDom
'作  用：创建尽可能高版本的MSXML对象
'参  数：无
'返回值：True - 创建sMyXmlDoc成功
'　　　　False - 服务器不支持MSXML对象
'**************************************************
Function createXmlDom()
    On Error Resume Next
    Set sMyXmlDoc = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
    If Err Then
        Err.Clear
        createXmlDom = False
        FoundErr = True
        ErrMsg = "服务器不支持MSXML2.FreeThreadedDOMDocument对象"
    Else
        createXmlDom = True
    End If
End function
'**************************************************
'函数名：createXmlHTTP
'作  用：创建尽可能高版本的ServerXMLHTTP对象
'参  数：无
'返回值：True - 创建sMyXmlDoc成功
'　　　　False - 服务器不支持ServerXMLHTTP对象
'**************************************************
Private Function createXmlHttp()
    On Error Resume Next
    Set sMyXmlHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
    If Err Then
        createXmlHttp = False
        FoundErr = True
        ErrMsg = "服务器不支持ServerXMLHTTP对象"
    Else
        createXmlHttp = True
    End If
End Function
'**************************************************
'过程名：SendPost
'作  用：处理远程系统的通讯，用异步方式发送请求
'参  数：无
'**************************************************
Sub SendPost()
    If createXmlHttp Then
        sPE_Items(conUsername,1) = getNodeText(sPE_Items(conUsername,0))
        sPE_Items(conSyskey,1) = MD5(sPE_Items(conUsername,1) & API_Key,16)
        setNodeText sPE_Items(conSyskey,0), sPE_Items(conSyskey,1)
        sMyXmlHTTP.setTimeouts API_Timeout,API_Timeout,API_Timeout*6,API_Timeout*6
        Dim intIndex
        For intIndex = 0 to Ubound(arrUrlsSp2)
            sMyXmlHttp.open "POST", arrUrlsSp2(intIndex), False
            sMyXmlHttp.setRequestHeader "Content-Type", "text/xml; charset=utf-8"
            sMyXmlHttp.send sMyXmlDoc
            If sMyXmlHTTP.readyState = 4 and sMyXmlHTTP.status = 200 Then
                Dim objRecXml
                set objRecXml = Server.CreateObject("Microsoft.XMLDOM")
                objRecXml.Async = False
                objRecXml.Load(sMyXmlHTTP.ResponseXML)
                If Err Then
                    FoundErr = True
                    ErrMsg = "用户服务目前不可用。[APIError-HTTP1-" & intIndex & "]"
                    Err.Clear
                ElseIf objRecXml.parseError.errorCode <> 0 Then
                    FoundErr = True
                    ErrMsg = "用户服务目前不可用。[APIError-XmlParse-" & intIndex & "]"
                    Err.Clear
                Else
                    If objRecXml.documentElement.selectSingleNode("//status").text <> "0" Then
                        FoundErr = True
                        ErrMsg = objRecXml.documentElement.selectSingleNode("//message").text & " [APIError-API-" & intIndex & "]"
                    End If
                End If
            ElseIf sMyXmlHttp.readyState = 4 and sMyXmlHttp.status <> 200 Then
                FoundErr = True
                'ErrMsg = "用户服务目前不可用！ [APIError-HTTP2-" & intIndex & "]"
                ErrMsg = BytesToBstr(sMyXmlHttp.ResponseBody, "utf-8")
            End If
            If FoundErr Then
                If intIndex > 0 Then
                    RollbackUser intIndex
                End If
                Exit For
            End If
        Next
    Else
        FoundErr = True
        ErrMsg = "用户服务目前不可用！ [APIError-HTTP-Runtime]"
    End If
End Sub
Function BytesToBstr(Body, Cset)
    Dim Objstream
    Set Objstream = Server.CreateObject("adodb.stream")
    Objstream.Type = 1
    Objstream.Mode = 3
    Objstream.Open
    Objstream.Write Body
    Objstream.Position = 0
    Objstream.Type = 2
    Objstream.Charset = Cset
    If Err.Number <> 0 Then
        Err.Clear
        Objstream.Close
        Set Objstream = Nothing
        BytesToBstr = "$False$"
        Exit Function
    End If
    BytesToBstr = Objstream.ReadText
    Objstream.Close
    Set Objstream = Nothing
End Function
Sub WriteErrXml()
    Response.Clear
    Response.ContentType = "text/xml"
    Response.Charset = "utf-8"
    Response.Expires = 0 
    Response.Expiresabsolute = Now() - 1 
    Response.AddHeader "pragma","no-cache" 
    Response.AddHeader "cache-control","private" 
    Response.CacheControl = "no-cache"
    Response.Write "<?xml version=""1.0"" encoding=""utf-8""?>" & vbNewLine
    Response.Write "<root><appid>powereasy</appid><status>1</status><body><message>" & ErrMsg & "</message></body></root>"
    Response.End
End Sub
Sub WriteXml()
    Response.Clear
    Response.ContentType = "text/xml"
    Response.Charset = "utf-8"
    Response.Expires = 0 
    Response.Expiresabsolute = Now() - 1 
    Response.AddHeader "pragma","no-cache" 
    Response.AddHeader "cache-control","private" 
    Response.CacheControl = "no-cache"
    Response.Write "<?xml version=""1.0"" encoding=""utf-8""?>" & vbNewLine
    Response.Write sMyXmlDoc.documentElement.xml
    Response.End
End Sub
Class xhttp
private cset,sUrl,sPath,sErr,sSaveName
Private Sub Class_Initialize()
cset="utf-8"
sPath="./"
sErr=""
sSaveName=""
end sub


Private Sub Class_Terminate()
End Sub

Public Property LET URL(theurl)
sUrl=theurl
end property
Public Property Let Path(str)
sPath=str
End Property
Public Property Get Path()
Path=sPath
End Property
public property GET BasePath()
BasePath=mid(sUrl,1,InStrRev(sUrl,"/")-1)
end property

public property GET FileName()
FileName=mid(sUrl,InStrRev(sUrl,"/")+1)
end property
public property GET Html()
Html=BytesToBstr(getBody(sUrl))
end Property
Public Property Get xErr()
xErr=sErr
End Property
Public Property Get SaveName()
SaveName = sSaveName
End Property
private Function BytesToBstr(body)

dim objstream 
set objstream = Server.CreateObject("adodb.stream") 
with objstream
.Type = 1
.Mode = 3
.Open 
.Write body
.Position = 0
.Type = 2
.Charset = Cset
BytesToBstr = .ReadText
.Close 
end with
set objstream = nothing 
End Function 

private function getBody(surl)
dim xmlHttp
'set xmlHttp=server.createobject("MSXML2.XMLHTTP")
Set xmlHttp=Server.CreateObject("MSXML2.ServerXMLHTTP")
with xmlHttp
'.setTimeouts 10000,10000,10000,30000
.open "GET",surl,false
.send
While .readyState<>4
.waitForResponse 1000
Wend
getBody=.responsebody
End with
If Err.Number<>0 Then
sErr=Err.Number
Err.Clear
Else
sErr=""
End If
set xmlHttp=nothing
end function


Public Function SaveToFile(tofile)
dim objStream,imgs
If Len(""&tofile)=0 Then tofile=RndFileName()
sSaveName = tofile
imgs=getBody(sUrl)
Set objStream = Server.CreateObject("ADODB."&"Stream")
with objStream
.Type =1
.Open
.write imgs
.SaveToFile server.mappath(sPath&tofile),2
.Close()
end with 
set objstream=nothing
end function

Private Function RndFileName()
Dim nn:nn=Now()
Dim fileExt:fileExt=Mid(sUrl,InstrRev(sUrl,".")+1)
Randomize
RndFileName=Year(nn)&Month(nn)&Day(nn)&Hour(nn)&Minute(nn)&Second(nn)&Int(8999*Rnd +1000)&"."&fileExt
End Function
End Class
%>