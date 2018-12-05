<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTest.aspx.cs" Inherits="Testing.FormTest" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Тестирование</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button2" runat="server" Text="Помощь" />
        <br />
        <asp:Label ID="LQuestion" runat="server" Text="Вопрос?"></asp:Label>
        <asp:CheckBoxList ID="ChBsAnswers" runat="server" Width="540px">
            <asp:ListItem>Ответ 1</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="ПРОВЕРИТЬ/ДАЛЕЕ" />
    </form>
    </body>
</html>
