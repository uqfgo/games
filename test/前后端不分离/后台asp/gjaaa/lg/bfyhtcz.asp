<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̨����</title>
</head>

<body>
<!--ȫ��ѡ�е�JS-->
<SCRIPT language=JavaScript type=text/JavaScript>
function CheckAll(form) {
for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
}

</SCRIPT>

<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb") '1�������ݿ�
dim i,intPage,page,pre,last,filepath
  set rs = server.CreateObject("adodb.recordset") 
   sql="select * from b order by ID desc"                  '1������ĺñ��������򷽷�
      rs.PageSize =3                                     '2����������һҳ��ʾ�ļ�¼��
      rs.CursorLocation = 3
      rs.Open sql,conn,0,2,1
      pre = true
      last = true
      page = trim(Request.QueryString("page"))
      
      if len(page) = 0 then
                  intpage = 1
                  pre = false
      else
          if cint(page) =< 1 then
               intpage = 1
               pre = false
          else
              if cint(page) >= rs.PageCount then
                  intpage = rs.PageCount
                  last = false
              else
                   intpage = cint(page)
             end if
         end if
      end if
    if not rs.eof then
         rs.AbsolutePage = intpage
    end if
%>
<form id="form1" name="form1" method="post" action="bsc.asp">
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td ><div align="center">����</div></td>
      <td><div align="center">����</div></td>
    </tr>
<%                                                                      '3������ѭ�����Ҫ����д
   for i=1 to rs.PageSize
     if rs.EOF or rs.BOF then exit for
  %>
    <tr>
      <td><%=rs("fnog")%></div></td>
      <td><div align="center"><a href="bhtxg.asp?id=<%=rs("id")%>" target="_blank">
<label>
<input name="id" type="checkbox" id="id" value="<%=rs("id")%>" />
</label>        
�޸�</a> <a href="bsc.asp?id=<%=rs("id")%>" target="_blank">ɾ��</a></div></td>

	<%
		rs.movenext         '4������Ҫ����д
next

%>
    </tr>
  </table>
  <br />
  <br />
  <table width="500" border="0" align="center" cellspacing="0">
    <tr>
      <td><input name="chkall" type="checkbox" id="chkall" value="select" onclick=CheckAll(this.form)>ȫ��ѡ��</td>
      <td><input name="Submit" type="submit" value="ɾ��ѡ�ж���" /></td>
    </tr>
  </table>
  <br />
  <br />
  <table width="100" border="0" align="center" cellspacing="0">
    <tr>
      <td><a href="bhtss.asp" target="_parent">����</a></td>
	  <td><a href="afulk.asp" target="_parent">����</a></td>
    </tr>
  </table>
  <br />
  <br />
 <table width="99%" border="0" cellpadding="2" cellspacing="2" borderColorLight=#808080 borderColorDark=#ffffff>
   <tr>
     <%if rs.pagecount > 0 then%>
     <td width="13%" align="left">��ǰҳ<%=intpage%>/<%=rs.PageCount%></td>
     <%else%>
    <td width="41%" align="left">��ǰҳ0/0</td><%end if%>
    <td width="46%" align="right"> <a href="bfyhtcz.asp?page=1">��ҳ</a>| 
     <%if pre then%>
     <a href="bfyhtcz.asp?page=<%=intpage -1%>">��ҳ</a>| <%end if%>
     <%if last then%>
      <a href="bfyhtcz.asp?page=<%=intpage +1%>">��ҳ</a> |<%end if%>
      <a href="bfyhtcz.asp?page=<%=rs.PageCount%>">βҳ</a>|ת����
      <select name="sel_page" onchange="javascript:location=this.options[this.selectedIndex].value;">
      <%
       for i = 1 to rs.PageCount
       if i = intpage then%>
       <option value="bfyhtcz.asp?page=<%=i%>" selected><%=i%></option>
     <%else%>
       <option value="bfyhtcz.asp?page=<%=i%>"><%=i%></option>
        <%
          end if
        next
        %>
     </select>ҳ</font> 
    </td>
  </tr>
</table>
    <%
  rs.close
set rs=nothing
conn.close
set conn=nothing
  %>

</form>
</body>
</html>
