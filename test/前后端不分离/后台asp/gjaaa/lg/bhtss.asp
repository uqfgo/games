<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <input name="aa" type="hidden" id="aa" value="aa" />
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td>���⣺</td>
      <td><label>
        <input name="bt" type="text" id="bt" size="50" />
      </label></td>
      <td><label>
        <input type="submit" name="Submit" value="����" />
      </label></td>
    </tr>
  </table>
</form>
<br />

<%
if request("aa")="aa" then
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb") '1�������ݿ�

sql="select * from b where fnog like '%"&request("bt")&"%'"		
set rs=server.createobject("ADODB.Recordset")
rs.open sql,conn,1,1
	if rs.eof  then 
		response.write"<SCRIPT language=JavaScript>alert('û���ҵ���¼���ǳƲ���ȷ��');"
		response.write"this.location.href='bhtss.asp'</SCRIPT>"
	else
%>


<table width="500" border="0" align="center" cellspacing="0">

  <tr>
    <td><div align="center">����</div></td>
    <td><div align="center">����</div></td>
  </tr>
     <%do while not rs.eof%>
  <tr>
    <td><%=rs("fnog")%></td>
    <td><div align="center"><a href="bhtxg.asp?id=<%=rs("id")%>">�޸�</a> <a href="bsc.asp?id=<%=rs("id")%>">ɾ��</a></div></td>
  </tr>
  <%
rs.movenext
loop
rs.close
set rs=nothing

%>
</table>
<% end if%>
<% end if%>
</body>
</html>
