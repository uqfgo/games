<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  �ɼ���
  <label>
  <input name="dnxg" type="text" id="dnxg" />
  </label>
  <p>
    <label>
    <input type="submit" name="Submit" value="�ύ" />
    </label>
  </p>
</form>

<%

aa=request("dnxg")
if aa>=60 then
response.write"�ɼ�Ϊ��"
else
response.write"�ɼ�Ϊ��"
end if


%>

</body>
</html>
