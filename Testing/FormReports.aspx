<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormReports.aspx.cs" Inherits="Testing.FormReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="ПТО"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div> <asp:Label ID="Label3" runat="server" Text="Тип отчёта"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Отчётные периоды"></asp:Label>
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="Button2" runat="server" Text="Button" />
            <asp:Button ID="Button3" runat="server" Text="Button" />
            <asp:Button ID="Button4" runat="server" Text="Button" />
            <asp:Button ID="Button5" runat="server" Text="Button" />
            <asp:Button ID="Button6" runat="server" Text="Button" />

        </div>
    </form>
</body>
</html>
