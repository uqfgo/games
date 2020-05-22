<% '½ûÖ¹ÍøÒ³»º´æ
Response.Buffer = True 
Response.ExpiresAbsolute = Now() - 1 
Response.Expires = 0 
Response.CacheControl = "no-cache"

Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Driver={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("lg.lg.asp")
%>
