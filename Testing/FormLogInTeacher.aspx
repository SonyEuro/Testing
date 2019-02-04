<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLogInTeacher.aspx.cs" Inherits="Testing.FormLogInTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Вход для преподавателя"></asp:Label>
            </div>
            <asp:Label ID="Label2" runat="server" Text="Логин"></asp:Label>
            <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Пароль"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnEnter" runat="server" Text="Войти" OnClick="btnEnter_Click" />
        </div>
    </form>
</body>
</html>
