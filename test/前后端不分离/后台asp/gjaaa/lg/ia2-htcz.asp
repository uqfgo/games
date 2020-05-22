<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新闻中心</title>
<style>
</style>
</head>

<body>

<form id="" name="" action="" method="post">
<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb") '1、打开数据库

exec="select  * from ia22 order by id desc" '2、打开表
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td>标题：</td>
      <td>操作</td>
      <td></td>
    </tr>
	
	<%do while not rs.eof%>
    <tr>
      <td><%=rs("nr")%></td>
      <td>修改 删除</td>
      <td>搜索</td>
    </tr>
  </table>
  <%
rs.movenext
loop
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
</form>


</body>
</html>
