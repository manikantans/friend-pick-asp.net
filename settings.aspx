<%@ Page Language="C#" AutoEventWireup="true" CodeFile="settings.aspx.cs" Inherits="settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- chat--%>
    <!-- chatjs requirements -->
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="ChatJs/js/jquery.autosize.js"></script>
   
    <link href="Css/grayscale.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/grayscale.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.js"></script>
  
    <style type="text/css">
        .auto-style3 {
            height: 24px;
            width: 186px;
        }
        .auto-style4 {
            width: 186px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
            width: 141px;
        }
        .auto-style8 {
            height: 24px;
            width: 141px;
        }
        .auto-style9 {
            width: 186px;
            height: 39px;
        }
        .auto-style11 {
            height: 39px;
            width: 141px;
        }
        .auto-style12 {
            width: 106px;
            height: 32px;
        }
        .auto-style13 {
            height: 24px;
            width: 106px;
        }
        .auto-style14 {
            width: 106px;
            height: 39px;
        }
    </style>
  
</head>
<body style="background-image: url('img/intro-bg1.jpg'); background-repeat: no-repeat; background-attachment: fixed">
    <form id="form1" runat="server">
    <div class="container">
    <div class="brand-heading" style="background-color: #336699; height: 80px;">
        <asp:Label ID="Label3" runat="server" CssClass="label" Font-Bold="True" Font-Size="30pt" ForeColor="White" Text="FriendPick"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="label" Font-Size="Small" ForeColor="White" Text="Pick Your Best Friend!"></asp:Label>

       
        <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Home" PostBackUrl="~/home.aspx" CausesValidation="False" />
        <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Profile" PostBackUrl="~/pfl.aspx" CausesValidation="False" />
        <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Friends" PostBackUrl="~/fnds.aspx" CausesValidation="False" />
        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Messages" PostBackUrl="~/message.aspx" CausesValidation="False" />
        <asp:Button ID="Button7" runat="server" BorderStyle="None" CssClass="btn-primary active" Text="Settings" PostBackUrl="~/settings.aspx" CausesValidation="False" />
        <asp:Button ID="Button6" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Logout" PostBackUrl="~/Default.aspx" CausesValidation="False" />
    </div>
    
        </div>
     <div class="container">  
   <div class="col-md-3 left">
         <br />
         <asp:Image ID="Image1" runat="server" Height="217px" Width="243px" />
         <br />
         <asp:Label ID="Label11" runat="server" ForeColor="White" Text="Label"></asp:Label>
         <br />
         <asp:Label ID="Label12" runat="server" ForeColor="White" Text="Label"></asp:Label>
       <br />
         <asp:Label ID="Label13" runat="server" ForeColor="White" Text="Label"></asp:Label>
         <br />
         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
             <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
             <ItemTemplate>
                 WORKS AT:
                 <asp:Label ID="WORKLabel" runat="server" Text='<%# Eval("WORK") %>' />
                 <br />
                 LIVES IN:
                 <asp:Label ID="PLACELabel" runat="server" Text='<%# Eval("PLACE") %>' />
                 <br />
                 <asp:Label ID="MSTATUSLabel" runat="server" Text='<%# Eval("MSTATUS") %>' />
                 <br />
                 <asp:Label ID="PFNLabel" runat="server" Text='<%# Eval("PFN") %>' />
                 <br />
<br />
             </ItemTemplate>
         </asp:DataList>
         
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FPICKConnectionString %>" SelectCommand="SELECT [WORK], [PLACE], [MSTATUS], [PFN] FROM [settings] WHERE ([UID] = @UID)">
             <SelectParameters>
                 <asp:SessionParameter Name="UID" SessionField="field1" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
       </div>
         <center>
         <div class="col-md-6">
&nbsp;<table style="width: 104%;">
    <tr>
        <td>
            &nbsp;</td>
         <td>
             <asp:Button ID="Button9" runat="server" BackColor="#3366FF" BorderStyle="None" ForeColor="White" OnClick="Button9_Click" Text="Change Password" Width="145px" CausesValidation="False" />
        </td>
         <td>&nbsp;</td>
    </tr>
             <tr>
                 <td class="auto-style4">
                     <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Where you live ? :"></asp:Label>
                 </td>
                 <td class="auto-style12">
                     <asp:TextBox ID="TextBox1" runat="server" ForeColor="#3366FF"></asp:TextBox>
                 </td>
                 <td class="auto-style7">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Status :"></asp:Label>
                 </td>
                 <td class="auto-style13">
                     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                         <asp:ListItem>Married</asp:ListItem>
                         <asp:ListItem>Single</asp:ListItem>
                         <asp:ListItem>In a Relationship</asp:ListItem>
                         <asp:ListItem>Engaged</asp:ListItem>
                         <asp:ListItem>Complicated</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style8">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
    <tr>
        <td>
            <asp:Label ID="Label10" runat="server" ForeColor="White" Text="About your profession :"></asp:Label>
        </td>
         <td>
             <asp:TextBox ID="TextBox5" runat="server" ForeColor="#3366FF"></asp:TextBox>
        </td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
             <tr>
                 <td class="auto-style9">
                     <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Where You work?  :"></asp:Label>
                 </td>
                 <td class="auto-style14">
                     <asp:TextBox ID="TextBox3" runat="server" ForeColor="#3366FF"></asp:TextBox>
                 </td>
                 <td class="auto-style11">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
    <tr>
        <td></td>
         <td>
             <asp:Button ID="Button8" runat="server" BackColor="#6666FF" BorderStyle="None" ForeColor="White" OnClick="Button8_Click" Text="UPDATE" />
        </td>
         <td>
             <asp:Label ID="Label14" runat="server" ForeColor="White" Text="Label"></asp:Label>
        </td>
    </tr>
         </table>
   </div>
             </center>
   </div>   
    </form>
</body>
</html>

