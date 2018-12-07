<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormThemes.aspx.cs" Inherits="Testing.FormThemes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList>
                </td>
                <td>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Редактировать" /></div>
                    <div>
                        <asp:Button ID="Button2" runat="server" Text="Сохранить" /></div>
                    <div>
                        <asp:Button ID="Button3" runat="server" Text="Добавить" /></div>
                    <div>
                        <asp:Button ID="Button4" runat="server" Text="Удалить" /></div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
