<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>

<%
ntkg=request("ntkg")
pndc=request("pndc")
bc=request("bc")

if ntkg="888" and pndc="999" then
response.Cookies("aa").Expires=date()+bc
response.Cookies("aa")="bb"
response.Redirect"xfjs.asp"
else
response.write "<script language=JavaScript>" & chr(13) & "alert('�˺Ż��������!');" & "window.location.href = 'index.asp'" & "</script>"
end if 
%>

</body>
</html>
