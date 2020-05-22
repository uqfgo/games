<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>身份证</title>
</head>

<body>
<%
if session("aaa") ="aaa" then

%>
<form id="form1" name="form1" method="post" action="">
  请输入身份证号码：
  <label>
  <input name="twyg" type="text" size="30" id="twyg" />
  </label>
  <label>
  <input type="submit" name="Submit" value="确认提交" />
  </label>
  <p>&nbsp;</p>
</form>

<%
kgdc=request("twyg")

if len(kgdc)=18 then

rh=mid(kgdc,7,4)

e2=mid(kgdc,11,2)

j2=mid(kgdc,13,2)

btja=rh&"-"&e2&"-"&j2

rhhw=year(now())-rh

ntkl=rhhw mod 2
%>

  <table width="500" height="142" border="1" cellspacing="0">
    <tr>
      <td width="91"><div align="center">身份证号码</div></td>
      <td width="399"><div align="center"><%=kgdc%></div></td>
    </tr>
    <tr>
      <td><div align="center">出生日期</div></td>
      <td><div align="center"><%=btja%></div></td>
    </tr>
    <tr>
      <td><div align="center">年龄</div></td>
      <td><div align="center"><%=rhhw%></div></td>
    </tr>
    <tr>
      <td><div align="center">性别</div></td>
      <td><div align="center"><%if ntkl=0 then response.write"女" else response.write"男" end if%></div></td>
    </tr>
  </table>

<%
else
response.write"请输入正确的身份证号"
end if
%>
<%
else
response.Redirect("wgvi.asp")
end if
%>

</body>
</html>
