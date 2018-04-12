<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fogot.aspx.cs" Inherits="fogot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('img/intro-bg1.jpg'); height: 272px;">
    <form id="form1" runat="server">
    <div style="height: 393px">
    <center style="height: 345px">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Your Account is Temporarily Unavailable" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Sorry for the inconvenience " Font-Size="Large"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/img/Study.png" Width="126px" />
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Exit your browser and try again." Font-Size="Large"></asp:Label>
    </center>
    </div>
    </form>
</body>
</html>
