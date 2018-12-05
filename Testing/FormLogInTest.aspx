<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLogInTest.aspx.cs" Inherits="Testing.FormLogInTest" %>

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
                <asp:Label ID="Label4" runat="server" Text="Вход для тестируемых"></asp:Label>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Бригада"></asp:Label>
            <asp:DropDownList ID="LBrigades" runat="server">
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Фамилия"></asp:Label>
            <asp:DropDownList ID="ListWorkers" runat="server">
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Пароль"></asp:Label>
            <asp:TextBox ID="TbPassword" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Тестирование" />
            <asp:Button ID="Button2" runat="server" Text="Подготовка" />
        </div>

    </form>
</body>
</html>
