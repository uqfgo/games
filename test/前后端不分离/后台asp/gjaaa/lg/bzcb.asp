<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册表</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 18px}
-->
</style>
<link rel="stylesheet" type="text/asp" href="md5.asp">
</head>

<body>
<%
if request("a")="a" then	'如果收到的add对象的值为add  那么
mtkg=md5(request("mtkg"))		'定义变量bt=浏览器接收到的bt值
pndc=md5(request("pndc"))		'定义变量nr=浏览器接收到的nr值
pndc2=md5(request("pndc2"))


if request("mtkg")="" then	'如果bt的值为空,那么弹出对话框不题不能为空,返回上一个页面
response.write"<SCRIPT language=JavaScript>alert('用户名不能为空');"
response.write"javascript:history.go(-1)</SCRIPT>"

else
if pndc<>pndc2 then
response.write"<SCRIPT language=JavaScript>alert('两次输入的密码不一致');"
response.write"javascript:history.go(-1)</SCRIPT>"




else	
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb") '1、打开数据库
set rs=server.createobject("adodb.recordset")	'设置rs对象进行链接数据库记录集
sql="select * from dl"			'定义sql对象选择news表
rs.open sql,conn,3,3				'rs记录集打开sql对象,(3,3)为修改记录集的操作
rs.addnew					'rs记录集添加
rs("mtkg")=mtkg				'记录集bt字段的值=bt
rs("pndc")=pndc					'记录集nr字段的值=nr
rs("ntkl")=request("ntkl")



rs.update					'记录集更新
rs.close					'关闭记录集
set rs=nothing					'释放记录集
response.write"<SCRIPT language=JavaScript>alert('会员注册成功');"
response.write"javascript:history.go(-1)</SCRIPT>"
end if
end if
end if
%>
<form id="form1" name="form1" method="post" action="">
  <input name="a" type="hidden" id="a" value="a" />
  <table width="500" height="200" border="0" align="center" cellspacing="0">
    <tr>
      <td colspan="2" bordercolor="#FFFFFF" bgcolor="#CCCCCC"><div align="center" class="STYLE1">
        <h1>注册表</h1>
      </div></td>
    </tr>
    <tr>
      <td width="120">用户名：</td>
      <td width="376"><label>
        <input name="mtkg" type="text" id="mtkg" />
      </label></td>
    </tr>
    <tr>
      <td>性别：</td>
      <td><label>
<input name="ntkl" type="checkbox" id="ntkl" value="男" />        
男
      </label>
        <label>
        <input name="ntkl" type="checkbox" id="ntkl" value="女" />
        女        </label></td>
    </tr>
    <tr>
      <td>密码：</td>
      <td><label>
        <input name="pndc" type="password" id="pndc" />
      </label></td>
    </tr>
    <tr>
      <td>验证密码:</td>
      <td><label>
        <input name="pndc2" type="password" id="pndc2" />
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><h2>
        <label>
        <input type="submit" name="Submit" value="提交" />
        </label>
      </h2></td>
    </tr>
  </table>
</form>
</body>
</html>
