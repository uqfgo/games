<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̨����</title>
</head>

<body>

<% if session("dj")<>"1" then
response.redirect "bdl.asp"
else
%>
<!--ȫ��ѡ�е�JS-->
<SCRIPT language=JavaScript type=text/JavaScript>
function CheckAll(form) {
for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
}

</SCRIPT>

<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb") '1�������ݿ�

exec="select  * from b order by id desc" '2���򿪱�
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>
<form id="form1" name="form1" method="post" action="bsc.asp">
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td ><div align="center">����</div></td>
      <td><div align="center">����</div></td>
    </tr>
	<%do while not rs.eof%>
    <tr>
      <td><%=rs("fnog")%></div></td>
      <td><div align="center"><a href="bhtxg.asp?id=<%=rs("id")%>" target="_blank">
<label>
<input name="id" type="checkbox" id="id" value="<%=rs("id")%>" />
</label>        
�޸�</a> <a href="bsc.asp?id=<%=rs("id")%>" target="_blank">ɾ��</a></div></td><%rs.movenext
loop%>
    </tr>
  </table>
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td><input name="chkall" type="checkbox" id="chkall" value="select" onclick=CheckAll(this.form)>ȫ��ѡ��</td>
      <td><input name="Submit" type="submit" value="ɾ��ѡ�ж���" /></td>
    </tr>
  </table>
  <table width="100" border="0" align="center" cellspacing="0">
    <tr>
      <td><a href="bhtss.asp" target="_parent">����</a></td>
	  <td><a href="afulk.asp" target="_parent">����</a></td>
    </tr>
  </table>
</form>
<%
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
<%end if%>
</body>
</html>
