<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>学校概况后台修改</title>
</head>


<body>
<%
'1、打开数据库
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2、打开表
exec="select * from a2 where id="&request("id")
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,3
if request("a")="a" then
rs("bt")=request("bt")
rs("bt2")=request("bt2")
rs("nr")=request("nr")
response.write "<script language=JavaScript>" & chr(13) & "alert('修改成功!');" & "</script>"
end if
%>

<form id="form1" name="form1" method="post" action="">
  <p>标题：
    <input name="bt" type="text" id="bt" value="<%=rs("bt")%>" />
</p>
  <p>标题2：
    <input name="bt2" type="text" id="bt2" value="<%=rs("bt2")%>" />
    <input name="a" type="hidden" id="a" value="a" />
  </p>
  <p>内容：
    <textarea name="nr" rows="15" id="nr"><%=rs("nr")%></textarea>
  </p>
  <p>
    <label>
    <input type="submit" name="Submit" value="修改" />
    </label>
  </p>
</form>
<%
rs.update
rs.close
set rs=nothing

%>

</body>
</html>
