<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<%
aa=request("mtkg")
bb=request("pndc")

if aa="888" and bb="888" then
session("aaa") ="aaa"
response.write"<script language=JavaScript>" & chr(13) & "alert('��¼�ɹ�����');" & "window.location.href = 'twyg.asp'" & "</script>"
else
response.write"<script language=JavaScript>" & chr(13) & "alert('��¼ʧ�ܣ��˺Ż����벻��ȷ!');" & "window.location.href = 'wgvi.asp'" & "</script>"
end if

%>

</body>
</html>
