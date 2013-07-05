<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="99乘法表.aspx.cs" Inherits="xiaowangzi.Account.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>九九乘法表</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
<%
int i,j;
for (i=1 ;i<=9;i++)
%>
<%
for (j=1;j<=i;j++)
%>
<%if (j == i) %>
<%{ %>
<%=j + "*" + i + "=" + i * j + "<br>"%>
<%} %>
<%else%>
<%{ %>
<%if (i * j < 10) %>
<%{ %>
<%=j + "*" + i + "=" + i * j + "&nbsp;&nbsp;"%>
<%} %>
<%else %>
<%=j + "*" + i + "=" + i * j + "&nbsp;"%>
<%} %>
</div>
    </form>
</body>
</html>