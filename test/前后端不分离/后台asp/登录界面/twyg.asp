<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���֤</title>
</head>

<body>
<%
if session("aaa") ="aaa" then

%>
<form id="form1" name="form1" method="post" action="">
  ���������֤���룺
  <label>
  <input name="twyg" type="text" size="30" id="twyg" />
  </label>
  <label>
  <input type="submit" name="Submit" value="ȷ���ύ" />
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
      <td width="91"><div align="center">���֤����</div></td>
      <td width="399"><div align="center"><%=kgdc%></div></td>
    </tr>
    <tr>
      <td><div align="center">��������</div></td>
      <td><div align="center"><%=btja%></div></td>
    </tr>
    <tr>
      <td><div align="center">����</div></td>
      <td><div align="center"><%=rhhw%></div></td>
    </tr>
    <tr>
      <td><div align="center">�Ա�</div></td>
      <td><div align="center"><%if ntkl=0 then response.write"Ů" else response.write"��" end if%></div></td>
    </tr>
  </table>

<%
else
response.write"��������ȷ�����֤��"
end if
%>
<%
else
response.Redirect("wgvi.asp")
end if
%>

</body>
</html>
