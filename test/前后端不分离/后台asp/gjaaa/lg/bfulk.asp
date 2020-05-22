<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>最新新闻的记录表</title>
</head>

<body>
<%
if request("aa")="aa" then
if request("bt")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空!');" & "</script>"
else
'2.1：打开数据库：
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2.2：打开表：
exec="select * from c"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,3,3
rs.addnew
rs("usub")=request("bt")
rs.update
response.write "<script language=JavaScript>" & chr(13) & "alert('录入成功!');" & "</script>"
rs.close
set rs=nothing
conn.close
set oonn=nothing
end if
end if
%>
<form id="form1" name="form1" method="post" action="">
  <p>标题：
    <input name="bt" type="text" id="bt" />
    <input name="aa" type="hidden" id="aa" value="aa" />
  </p>
  <p>
    <input type="submit" name="Submit" value="提交" />
  </p>
</form>

</body>
</html>
