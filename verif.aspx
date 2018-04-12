<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verif.aspx.cs" Inherits="verif" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('http://localhost:2418/img/intro-bg1.jpg')">
    <form id="form1" runat="server">
        <center>
    <div style="height: 328px">
    
        <br />
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Text="YOUR ACCOUNT HAS BEEN LOCKED"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Please follow the steps to unlock  your  account" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
    <BotDetect:Captcha runat="server" Height="84px" Width="279px" ID="mcaptcha" /> 
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#3366CC" Height="25px" Width="156px"></asp:TextBox>
        &nbsp;
        
        <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="White" BorderStyle="None" ForeColor="White" OnClick="Button1_Click" Text="Submit" Height="29px" Width="59px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    </div>
            </center>
    </form>
</body>
</html>
