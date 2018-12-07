<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormQuestionEditor.aspx.cs" Inherits="Testing.FormQuestionEditor" %>

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
                    <div><asp:Label ID="Label4" runat="server" Text="Наименование темы:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                    </div>
                    <div>
                        <asp:Button ID="Button5" runat="server" Text="Редактировать" />
                    </div>
                    <div>
                        <asp:Button ID="Button6" runat="server" Text="Сохранить" />
                    </div>
                    <div>
                        <asp:Button ID="Button7" runat="server" Text="Добавить" />
                    </div>
                    <div>
                        <asp:Button ID="Button8" runat="server" Text="Удалить" />
                    </div>
                    <div>
                        <asp:Button ID="Button9" runat="server" Text="Редактировать" />
                    </div>
                    <div>
                        <asp:Button ID="Button10" runat="server" Text="Сохранить" />
                    </div>
                    <div>
                        <asp:Button ID="Button11" runat="server" Text="Добавить" />
                    </div>
                    <div>
                        <asp:Button ID="Button12" runat="server" Text="Удалить" />
                    </div>
                </td>
                <td>
                    <div>
                        <asp:Label ID="Label3" runat="server" Text="Вид вопроса:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Вопрос:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="500" Height="200" Wrap="true"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="Варианты ответов:"></asp:Label>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem></asp:ListItem>
                        </asp:CheckBoxList>
                        <asp:TextBox runat="server">Вариант ответа</asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </div>
                    <div>
                        <asp:Button ID="Button3" runat="server" Text="Предпросмотр" />
                    </div>
                    <div>
                        <asp:Button ID="Button4" runat="server" Text="Добавить рисунок в вопрос" />
                    </div>
                    <div>
                        <asp:Button ID="Button13" runat="server" Text="Добавить рисунок в ответ" />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
