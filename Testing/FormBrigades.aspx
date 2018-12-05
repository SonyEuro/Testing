<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormBrigades.aspx.cs" Inherits="Testing.FormEditBrigades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Работа с бригадами</title>
    <style type="text/css">
        .auto-style1 {
            width: 502px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" align="center">
        <table width="80%">
            <tr>
                <td>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button3" runat="server" Text="Button" />
                        <asp:Button ID="Button4" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button9" runat="server" Text="Button" />
                        <asp:Button ID="Button10" runat="server" Text="Button" />
                    </div>
                </td>
                <td class="auto-style1">
                    <asp:Panel ID="pnlBrigades" runat="server">
                        <div>
                            <p align="center">
                                <asp:Label ID="Label1" runat="server" Text="Бригады"></asp:Label>
                        </div>
                        <div>
                            <asp:ListBox ID="lbBrigades" runat="server" Width="100"></asp:ListBox>
                        </div>

                    </asp:Panel>
                </td>

                <td>
                    <asp:Panel ID="pnlWorkers" runat="server">
                        <div>
                            <p align="center">
                                <asp:Label ID="Label2" runat="server" Text="Работники"></asp:Label>
                        </div>
                        <div>
                            <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
                        </div>

                    </asp:Panel>
                </td>
                <td>
                    <div>
                        <asp:Button ID="Button5" runat="server" Text="Button" />
                        <asp:Button ID="Button6" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button7" runat="server" Text="Button" />
                        <asp:Button ID="Button8" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button11" runat="server" Text="Button" />
                        <asp:Button ID="Button12" runat="server" Text="Button" />
                    </div>
                </td>
                <td>
                    <p align="center">
                        <asp:Label ID="Label3" runat="server" Text="Результаты"></asp:Label>
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
