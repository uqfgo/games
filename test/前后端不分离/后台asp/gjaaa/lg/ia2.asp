<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ѧУ�ſ�</title>
<style>
*{margin:0px; padding:0px; text-decoration:none; list-style:none;}
.nftfsua{ width:1002px; height:900px;margin:auto; }
#nftfsua1{ width:221px; height:800px;float:left;}
#nftfsua11{ width:221px; height:187px;}
#nftfsua111{ width:201px; height:25px; background:url(lgimg/bj1.png); color:#eee; line-height:25px; padding-left:20px;}
#nftfsua112{ width:220px; height:161px; border:1px solid #2266aa;}
#nftfsua112 ul { display:block; margin-top:10px; margin-left:28px;}
#nftfsua112 ul li { width:142px; height:32px;background:url(lgimg/bj4.jpg); font-size:9px; color:#BBBBBB; line-height:32px; padding-left:20px;}
#nftfsua12{ width:221px; height:147px;margin-top:11px;}
#nftfsua121{ width:201px; height:27px; background:url(lgimg/bj2.png); line-height:27px; color:#EEEEEE; padding-left:20px;}
#nftfsua122{ width:221px; height:120px; border:1px solid #e2e2e2;}
#nftfsua13{ width:221px; height:98px; margin-top:10px;margin-top:11px;}
#nftfsua131{ width:201px; height:25px; background:url(lgimg/bj1.png); line-height:25px; color:#eee; padding-left:20px;}
#nftfsua132{ width:221px; height:71px; border:1px solid #2266aa;}
#nftfsua132 img{ display:block; float:left; margin:20px;}
#nftfsua132 span{ display:block; float:left; margin-top:20px;}
#nftfsua2{ width:768px; height:800px;float:left; margin-left:9px;}
#nftfsua21{ width:748px; height:25px; background:url(lgimg/bj2.png); font-size:16px; line-height:25px; color:#EEEEEE;padding-left:20px;}
#nftfsua22{ width:768px; height:750px; border:1px solid #ddd; margin-top:5px;}
#nftfsua22 p{ display:block; font-size:24px; color:#EE0000; font:�����п�;}
#nftfsua23{ width:682px; height:37px; border-bottom:1px dotted #888; margin-left:30px; font-size:9px; line-height:37px;}

</style>
</head>

<body>

<!--#include file="mb1.asp"-->




<div class="nftfsua">
<!--��벿��-->
  <div id="nftfsua1">
    <div id="nftfsua11">
	  <div id="nftfsua111">��Ŀ����</div>
	  <div id="nftfsua112">
	    <ul>
		  <li>���¹���</li>
		  <li>��������</li>
		  <li>רҵ����</li>
		  <li>����ר��</li>
		</ul>
	  </div>
	</div>
	<div id="nftfsua12">
	  <div id="nftfsua121">��������</div>
	  <div id="nftfsua122"><span><select size="1">
  <option value="��ѡ�����">��ѡ�����</option>
  <option value="���¹���">���¹���</option>
  <option value="��������">��������</option>
  <option value="רҵ����">רҵ����</option>
  <option value="����ר��">����ר��</option>
</select>
<input name="" type="text" /><br />
<input name="����" type="submit" id="����" /></span>
</div>
	</div>
	<div id="nftfsua13">
	  <div id="nftfsua131">QQ�ͷ�</div>
	  <div id="nftfsua132">
	    <img src="lgimg/QQ.jpg" />
		<span>������ѯ</span>
	  </div>	 
	</div>
  </div>
  <div id="nftfsua2">
  <%'1�������ݿ�
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2���򿪱�
exec="select * from ia2 order by id desc"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 %>
<%do while not rs.eof%>
     <div id="nftfsua21"><%=rs("bt")%></div>
	 <%rs.movenext
loop
'1���رձ�
rs.close
set rs=nothing
'2���ر����ݿ�
conn.close
set conn=nothing
%>
   <%'1�������ݿ�
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2���򿪱�
exec="select * from ia2 order by id desc"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 %>
<%do while not rs.eof%>

<div id="nftfsua211" style=" display: block; width:738px; height:30px;border:1px solid #2266aa; line-height:30px; font-size:9px; padding-left:30px;"><%=rs("bt2")%></div>

	 <%rs.movenext
loop
'1���رձ�
rs.close
set rs=nothing
'2���ر����ݿ�
conn.close
set conn=nothing
%>

<div id="nftfsua22">
<%
'1�������ݿ�
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2���򿪱�
exec="select top 19 * from ia21 order by id desc"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>
 <ul>
 <%do while not rs.eof%>
   <li id="nftfsua23"><a href="ia22.asp?id=<%=rs("id")%>"><%=rs("nr")%></a></li>
   <%rs.movenext
loop
'1���رձ�
rs.close
set rs=nothing
'2���ر����ݿ�
conn.close
set conn=nothing%>
 </ul>
</div>
	 </div>

<!--�Ұ벿�ֵ��˽���-->
 
</div>

<!--#include file="mb2.asp"-->
</body>
</html>
