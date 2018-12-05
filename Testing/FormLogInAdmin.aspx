<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLogInAdmin.aspx.cs" Inherits="Testing.FormLogInAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Вход для администратора"></asp:Label>
            </div>
            <asp:Label ID="Label2" runat="server" Text="Логин"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Пароль"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Войти" />
        </div>
    </form>
</body>
</html>
