<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�û���½</title>
</head>

<body>
<strong>

<% if request("a")="a" then
mtkg=request("mtkg")
pndc=request("pndc")
if mtkg="" or pndc="" then
response.write"<SCRIPT language=JavaScript>alert('��ܰ��ʾ���û������벻��Ϊ��');"
response.write"javascript:history.go(-1)</SCRIPT>"


else
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
set rs=server.createobject("adodb.recordset")
   sql="select * from dl where mtkg='"&mtkg&"' and pndc='"&pndc&"'"
   rs.open sql,conn,3,3
   if rs.bof or rs.eof then
   response.write"<SCRIPT language=JavaScript>alert('������û������룬���������룡');"
   response.write"javascript:history.go(-1)</SCRIPT>"


else
  session("dj")=rs("dj")
    if rs("dj")="2" then
    response.write"<SCRIPT language=JavaScript>alert('��½�ɹ���');"
response.write"this.location.href='index.asp'</SCRIPT>"
else
    response.write"<SCRIPT language=JavaScript>alert('��½�ɹ���');"
response.write"this.location.href='bhtcz.asp'</SCRIPT>"
end if
end if
end if
else

%>
</strong>
<form id="form1" name="form1" method="post" action="">
  <input name="a" type="hidden" id="a" value="a" />
  <table width="500" height="200" border="0" align="center" cellspacing="0">
    <tr>
      <td colspan="2"><h1 align="center">�û���¼</h1></td>
    </tr>
    <tr>
      <td>�û�����</td>
      <td><input name="mtkg" type="text" id="mtkg" /></td>
    </tr>
    <tr>
      <td>���룺</td>
      <td><input name="pndc" type="text" id="pndc" /></td>
    </tr>
    <tr>
      <td><input name="dl" type="submit" id="dl" /></td>
    </tr>
  </table>
</form>
<%end if%>
</body>
</html>
