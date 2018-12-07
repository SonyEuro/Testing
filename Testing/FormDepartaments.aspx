<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormDepartaments.aspx.cs" Inherits="Testing.FormDepartaments" %>

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
                    <div>
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                    </div>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button3" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button4" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </div>
                </td>
                <td><div>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div><div>
                    <asp:Button ID="Button5" runat="server" Text="Button" /></div></td>
                <td><div>
                    <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                </div><div>
                    <asp:Button ID="Button6" runat="server" Text="Button" /></div><div>
                        <asp:Button ID="Button8" runat="server" Text="Button" /></div><div>
                        <asp:Button ID="Button7" runat="server" Text="Button" /></div></td>
            </tr>
        </table>
    </form>
</body>
</html>
