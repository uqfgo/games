<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ѧУ�ſ���̨����</title>
</head>

<body>
<%
'1�������ݿ�
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2���򿪱�
exec="select * from a2 order by id desc"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>
<form id="form1" name="form1" method="post" action="">
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td><div align="center">����</div></td>
      <td><div align="center">����</div></td>
    </tr>
	<%do while not rs.eof%>
    <tr>
	<td><div align="center"><%=rs("bt")%></div></td>
    <td><div align="center"><a href="ia1htxg.asp?id=<%=rs("id")%>">�޸�</a></div></td>
	  	 </tr>
	 <%rs.movenext
loop

'1���رձ�
rs.close
set rs=nothing
'2���ر����ݿ�
conn.close
set conn=nothing

%>
  </table>
</form>
</body>
</html>
