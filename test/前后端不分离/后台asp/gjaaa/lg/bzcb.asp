<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ע���</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 18px}
-->
</style>
<link rel="stylesheet" type="text/asp" href="md5.asp">
</head>

<body>
<%
if request("a")="a" then	'����յ���add�����ֵΪadd  ��ô
mtkg=md5(request("mtkg"))		'�������bt=��������յ���btֵ
pndc=md5(request("pndc"))		'�������nr=��������յ���nrֵ
pndc2=md5(request("pndc2"))


if request("mtkg")="" then	'���bt��ֵΪ��,��ô�����Ի����ⲻ��Ϊ��,������һ��ҳ��
response.write"<SCRIPT language=JavaScript>alert('�û�������Ϊ��');"
response.write"javascript:history.go(-1)</SCRIPT>"

else
if pndc<>pndc2 then
response.write"<SCRIPT language=JavaScript>alert('������������벻һ��');"
response.write"javascript:history.go(-1)</SCRIPT>"




else	
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb") '1�������ݿ�
set rs=server.createobject("adodb.recordset")	'����rs��������������ݿ��¼��
sql="select * from dl"			'����sql����ѡ��news��
rs.open sql,conn,3,3				'rs��¼����sql����,(3,3)Ϊ�޸ļ�¼���Ĳ���
rs.addnew					'rs��¼�����
rs("mtkg")=mtkg				'��¼��bt�ֶε�ֵ=bt
rs("pndc")=pndc					'��¼��nr�ֶε�ֵ=nr
rs("ntkl")=request("ntkl")



rs.update					'��¼������
rs.close					'�رռ�¼��
set rs=nothing					'�ͷż�¼��
response.write"<SCRIPT language=JavaScript>alert('��Աע��ɹ�');"
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
        <h1>ע���</h1>
      </div></td>
    </tr>
    <tr>
      <td width="120">�û�����</td>
      <td width="376"><label>
        <input name="mtkg" type="text" id="mtkg" />
      </label></td>
    </tr>
    <tr>
      <td>�Ա�</td>
      <td><label>
<input name="ntkl" type="checkbox" id="ntkl" value="��" />        
��
      </label>
        <label>
        <input name="ntkl" type="checkbox" id="ntkl" value="Ů" />
        Ů        </label></td>
    </tr>
    <tr>
      <td>���룺</td>
      <td><label>
        <input name="pndc" type="password" id="pndc" />
      </label></td>
    </tr>
    <tr>
      <td>��֤����:</td>
      <td><label>
        <input name="pndc2" type="password" id="pndc2" />
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><h2>
        <label>
        <input type="submit" name="Submit" value="�ύ" />
        </label>
      </h2></td>
    </tr>
  </table>
</form>
</body>
</html>
