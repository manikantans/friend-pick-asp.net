<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>about</title>
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/grayscale.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="row">
    <div class="col-md-3 left">
    
        <asp:Image ID="Image1" runat="server" CssClass="img-rounded" Height="122px" ImageAlign="AbsMiddle" ImageUrl="~/img/plants-bg.jpg" Width="121px" />
    <div>
        <asp:Label ID="Label1" runat="server" Text="Mani" ForeColor="White"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="None" OnClick="Button1_Click" Text="Online" />
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Black" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="93px">
            <asp:ListItem Value="1">Online</asp:ListItem>
            <asp:ListItem Value="0">Offline</asp:ListItem>
            <asp:ListItem Value="2">Online:Chat</asp:ListItem>
            <asp:ListItem Value="3">Online:Busy</asp:ListItem>
            <asp:ListItem Value="4">Busy</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Male"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Single"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="hello "></asp:Label>
    </div>
    </div>
            </div>
    </form>
        </div>
</body>
</html>
