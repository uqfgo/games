


<% if session("a")="" then
response.redirect "bdl.asp"
else
%>








<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>专业设置的增加记录表</title>
<script charset="utf-8" src="kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
<script>    
var editor;
            KindEditor.ready(function(K) {
                editor = K.create('textarea[name="nr"]', {
                    uploadJson : '../asp/upload_json.asp',
                    fileManagerJson : '../asp/file_manager_json.asp',
                    allowFileManager : true
                });
                 
            });
</script>
</head>

<body>
<%
if request("aaaa")="aaaa" then
if request("nr")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题或内容不能为空!');" &"</script>"
else
if request("bt")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题或内容不能为空!');" &"</script>"
else


set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
exec="select * from b"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,3,3 

rs.addnew
rs("fnog")=request("bt")
rs("fnognr")=request("nr")
rs.update
response.write "<script language=JavaScript>" & chr(13) & "alert('提交成功!');" &"</script>"
rs.close
set rs=nothing
conn.close
set oonn=nothing
end if
end if
end if
%>
<form id="form1" name="form1" method="post" action="">
  <table width="500" height="56" border="1" align="center" cellspacing="0">
    <tr>
      <td width="54">标题：</td>
      <td width="436"><input name="bt" type="text" id="bt" size="50" /></td>
    </tr>
    <tr>
      <td>内容：</td>
      <td><textarea name="nr" cols="60" rows="10" id="nr"></textarea></td>
    </tr>
    <tr>
      <td><input type="submit" name="Submit" value="提交" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
  
  <input name="aaaa" type="hidden" id="aaaa" value="aaaa" />
</form>
<%end if%>
</body>
</html>
