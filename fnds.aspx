<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fnds.aspx.cs" Inherits="fnds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .auto-style7 {
            width: 154px;
            height: 115px;
        }
        .auto-style8 {
            width: 19px;
            height: 115px;
        }
        .auto-style10 {
            width: 19px;
            height: 116px;
        }
        .auto-style11 {
            width: 154px;
            height: 116px;
        }
        .auto-style12 {
            width: 19px;
            height: 120px;
        }
        .auto-style13 {
            width: 154px;
            height: 120px;
        }
        .auto-style14 {
            width: 19px;
            height: 125px;
        }
        .auto-style15 {
            width: 154px;
            height: 125px;
        }
        .auto-style16 {
            width: 19px;
            height: 121px;
        }
        .auto-style17 {
            width: 154px;
            height: 121px;
        }
        .auto-style18 {
            width: 19px;
            height: 117px;
        }
        .auto-style19 {
            width: 154px;
            height: 117px;
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

        <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Home" PostBackUrl="~/home.aspx" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Profile" PostBackUrl="~/pfl.aspx" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="btn-primary active" Text="Friends" PostBackUrl="~/fnds.aspx" OnClick="Button3_Click" />
        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Messages" PostBackUrl="~/message.aspx" OnClick="Button5_Click" />
        <asp:Button ID="Button7" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Settings" PostBackUrl="~/settings.aspx" OnClick="Button7_Click" />
        <asp:Button ID="Button6" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Logout" PostBackUrl="~/Default.aspx" />
  
    </div>
    
        </div> 
         <div class="col-md-3 left">
      <asp:Image ID="Image8" runat="server" CssClass="img-rounded" Height="122px" Width="144px" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ImageUrl="~/profile img/IMG-20150217-WA0003.jpg" />
      <br />
      <br />
      <asp:Label ID="Label1" runat="server" CssClass="label" Font-Bold="False" Font-Size="Large" Text="Likhith Dk"></asp:Label>
      <br />
      <br />
      <asp:Label ID="LSEX" runat="server" CssClass="label" Font-Size="Medium" Text="Label"></asp:Label>
      <br />
      <asp:Label ID="LDOB" runat="server" CssClass="label" Font-Size="Medium" Text="Label"></asp:Label>
      <br />
  </div>
         <div class="col-md-6" >
             <table style="width: 100%;">
                 <tr>
                     <td class="auto-style8">
                         <asp:Image ID="Image1" runat="server" Height="89px" Width="94px" />
                         <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="#0066FF"></asp:Label>
                     </td>
                     <td class="auto-style7">
                         <asp:Button ID="Button8" runat="server" Text="ADD" BorderStyle="None" CssClass="btn-primary" OnClick="Button8_Click" />
                     </td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style10">
                         <asp:Image ID="Image2" runat="server" Height="81px" Width="94px" />
                         <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="#3366FF"></asp:Label>
                     </td>
                     <td class="auto-style11">
                         <asp:Button ID="Button9" runat="server" Text="ADD" BorderStyle="None" CssClass="btn-primary" OnClick="Button9_Click" />
                     </td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style12">
                         <asp:Image ID="Image3" runat="server" Height="87px" Width="94px" />
                         <asp:Label ID="Label7" runat="server" Text="Label" ForeColor="#3366FF"></asp:Label>
                     </td>
                     <td class="auto-style13">
                         <asp:Button ID="Button10" runat="server" Text="ADD" BorderStyle="None" CssClass="btn-primary" OnClick="Button10_Click" />
                     </td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style14">
                         <asp:Image ID="Image4" runat="server" Height="87px" Width="94px" />
                         <asp:Label ID="Label8" runat="server" Text="Label" ForeColor="#3366FF"></asp:Label>
                     </td>
                     <td class="auto-style15">
                         <asp:Button ID="Button11" runat="server" Text="ADD" BorderStyle="None" CssClass="btn-primary" OnClick="Button11_Click" />
                     </td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style12">
                         <asp:Image ID="Image5" runat="server" Height="87px" Width="94px" />
                         <asp:Label ID="Label9" runat="server" Text="Label" ForeColor="#3366FF"></asp:Label>
                     </td>
                     <td class="auto-style13">
                         <asp:Button ID="Button12" runat="server" Text="ADD" BorderStyle="None" CssClass="btn-primary" OnClick="Button12_Click" />
                     </td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style16">
                     </td>
                     <td class="auto-style17">
                     </td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style18">
                         &nbsp;</td>
                     <td class="auto-style19">
                         &nbsp;</td>
                     
                 </tr>
             </table>
         </div>   
         <div class="col-md-3 right">

         </div>
    </form>
</body>
</html>
