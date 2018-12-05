<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTeacher.aspx.cs" Inherits="Testing.FormTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Редактор вопросов" />
            <asp:Button ID="Button2" runat="server" Text="Результаты" />
        </div>
        <div>
            <asp:Button ID="Button3" runat="server" Text="Бригады" />
            <asp:Button ID="Button4" runat="server" Text="Отчёты" />
            <asp:Button ID="Button7" runat="server" Text="Синхронизация" />
        </div>
        <div>
            <asp:Button ID="Button5" runat="server" Text="Профили" />
            <asp:Button ID="Button6" runat="server" Text="Сменить пароль" />
        </div>
    </form>
</body>
</html>
