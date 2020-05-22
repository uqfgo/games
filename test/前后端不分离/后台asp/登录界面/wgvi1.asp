<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>
<%
aa=request("mtkg")
bb=request("pndc")

if aa="888" and bb="888" then
session("aaa") ="aaa"
response.write"<script language=JavaScript>" & chr(13) & "alert('登录成功！！');" & "window.location.href = 'twyg.asp'" & "</script>"
else
response.write"<script language=JavaScript>" & chr(13) & "alert('登录失败，账号或密码不正确!');" & "window.location.href = 'wgvi.asp'" & "</script>"
end if

%>

</body>
</html>
