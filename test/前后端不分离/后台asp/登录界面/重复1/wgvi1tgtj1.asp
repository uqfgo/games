<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>
<%
a=request("mtkg")
b=request("pndc")

if a="888" and b="999" then
response.write"登录成功！"
else
response.write"<script language=JavaScript>" & chr(13) & "alert('登录失败，请确认账号密码!');" & "window.location.href = 'wgvitgtj1.asp'" & "</script>"
end if
%>

</body>
</html>
