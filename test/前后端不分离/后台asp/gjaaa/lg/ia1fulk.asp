<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ia1添加记录表</title>
</head>

<body>
<%
if request("a")="a" then 
if request("bt")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空!');" & "</script>"
else
if request("bt2")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空!');" & "</script>"
else
if request("nr")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空!');" & "</script>"
else

'1：打开数据库：
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2.2：打开表：
exec="select * from a2"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,3,3

rs.addnew
rs("bt")=request("bt")
rs("bt2")=request("bt2")
rs("nr")=request("nr")
rs.update
response.write "<script language=JavaScript>" & chr(13) & "alert('录入成功!');" & "</script>"
rs.close
set rs=nothing
conn.close
set oonn=nothing
end if
end if 
end if
end if
%>
<form id="form1" name="form1" method="post" action="">
  标题：
  <label>
  <input name="bt" type="text" id="bt" />
  </label>
  <p>标题2：
    <input name="bt2" type="text" id="bt2" />
    <input name="a" type="hidden" id="a" value="a" />
  </p>
  <p>内容：
    <input name="nr" type="text" id="nr" />
  </p>
  <p>
    <input type="submit" name="Submit" value="提交" />
  </p>
</form>

</body>
</html>
