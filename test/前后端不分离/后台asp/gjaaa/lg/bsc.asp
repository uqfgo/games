<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
exec="delete * from b where id="&request("id")
conn.execute exec
response.write "<script language=JavaScript>" & chr(13) & "alert('É¾³ý³É¹¦!');" & "window.location.href = 'bhtcz.asp'" & "</script>"
%>
