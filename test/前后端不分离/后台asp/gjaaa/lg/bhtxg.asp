<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<%
'1�������ݿ�
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2���򿪱�
exec="select * from b where id="&request("id")
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,3 
if request("a")="a" then
rs("fnog")=request("bt")
rs("fnognr")=request("nr")
response.write "<script language=JavaScript>" & chr(13) & "alert('�޸ĳɹ�!');" & "</script>"
end if
%>
<form id="form1" name="form1" method="post" action="">
  <table width="500" border="0" cellspacing="0">
    <tr>
      <td>���⣺
        <label>
        <input name="bt" type="text" id="bt" value="<%=rs("fnog")%>" />
      </label></td>
    </tr>
    <tr>
      <td>���ݣ�
        <textarea name="nr" rows="15" id="nr"><%=rs("fnognr")%></textarea></td>
    </tr>
    <tr>
      <td><label>
        <input type="submit" name="Submit" value="�޸�" />
      </label></td>
    </tr>
  </table>
  <input name="a" type="hidden" id="a" value="a" />
</form>
<%
rs.update
rs.close
set rs=nothing

%>
</body>
</html>
