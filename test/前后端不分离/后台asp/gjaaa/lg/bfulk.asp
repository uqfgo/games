<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�������ŵļ�¼��</title>
</head>

<body>
<%
if request("aa")="aa" then
if request("bt")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ⲻ��Ϊ��!');" & "</script>"
else
'2.1�������ݿ⣺
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2.2���򿪱�
exec="select * from c"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,3,3
rs.addnew
rs("usub")=request("bt")
rs.update
response.write "<script language=JavaScript>" & chr(13) & "alert('¼��ɹ�!');" & "</script>"
rs.close
set rs=nothing
conn.close
set oonn=nothing
end if
end if
%>
<form id="form1" name="form1" method="post" action="">
  <p>���⣺
    <input name="bt" type="text" id="bt" />
    <input name="aa" type="hidden" id="aa" value="aa" />
  </p>
  <p>
    <input type="submit" name="Submit" value="�ύ" />
  </p>
</form>

</body>
</html>
