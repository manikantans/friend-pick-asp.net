<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pwdfogot.aspx.cs" Inherits="pwdfogot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 191px;
        }
        .auto-style2 {
            width: 243px;
        }
    </style>
</head>
<body style="background-image: url('img/intro-bg1.jpg')">
    <form id="form1" runat="server">
    
       <div>
           <table style="width: 100%;">
               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Enter your Email address :"></asp:Label>
                   </td>
                   <td class="auto-style2">
                       <asp:TextBox ID="TextBox1" runat="server" ForeColor="#3333FF" Width="158px"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Email ID" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">&nbsp;</td>
                   <td class="auto-style2">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style1">&nbsp;</td>
                   <td class="auto-style2">
                       <asp:Button ID="Button1" runat="server" BackColor="#3333FF" BorderStyle="None" ForeColor="White" Text="Button" Width="72px" />
                   </td>
                   <td>&nbsp;</td>
               </tr>
           </table>
    </div>
    </form>
</body>
</html>
