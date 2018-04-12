<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- chat--%>
   
   
    <link href="Css/grayscale.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/grayscale.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.js"></script>
  
</head>
<body style="background-image: url('img/intro-bg1.jpg'); background-repeat: no-repeat; background-attachment: fixed">
    <form id="form1" runat="server">
        <input id="hdUserName" type="hidden" />

        <input id="hdId" type="hidden" />
    <div class="container">
    <div class="brand-heading" style="background-color: #336699; height: 80px;">
        <asp:Label ID="Label3" runat="server" CssClass="label" Font-Bold="True" Font-Size="30pt" ForeColor="White" Text="FriendPick"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="label" Font-Size="Small" ForeColor="White" Text="Pick Your Best Friend!"></asp:Label>

        <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="btn-primary active" Text="Home"  PostBackUrl="~/home.aspx" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Profile" PostBackUrl="~/pfl.aspx" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Friends" PostBackUrl="~/fnds.aspx" OnClick="Button3_Click" />
        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Messages" PostBackUrl="~/message.aspx" OnClick="Button5_Click" />
        <asp:Button ID="Button7" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Settings" PostBackUrl="~/settings.aspx" OnClick="Button7_Click" />
        <asp:Button ID="Button6" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Logout" PostBackUrl="~/Default.aspx" />
  
    </div>
    
        </div>
     <div class="container">  
    <div class="row">
  <div class="col-md-3 left">
      <asp:Image ID="Image1" runat="server" CssClass="img-rounded" Height="122px" Width="144px" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" ImageUrl="~/profile img/IMG-20150217-WA0003.jpg" />
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
  <div class="col-md-6">
      <br />
      <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
      <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
      <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
      <br />
      <asp:TextBox ID="TextBox1" runat="server" Height="176px" TextMode="MultiLine" Width="384px" BackColor="#173B53" ForeColor="White">Dada vishesha???</asp:TextBox>
      <br />
      <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Share" />
      <br />
       <br />
      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" ForeColor="White" BorderWidth="2px" GridLines="Both" >
          <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
          <ItemTemplate>
              <asp:Image ID="Image2" runat="server" Height="52px" ImageUrl='<%# Eval("PIC") %>' Width="56px" />
              <br />
              <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
&nbsp;<br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="COMMENTLabel" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="#FFFFCC" Text='<%# Eval("COMMENT") %>' />
              <br />
              &nbsp;<br />&nbsp;<asp:Label ID="Label5" runat="server" Text="Posted on :"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="CTIMELabel" runat="server" Text='<%# Eval("CTIME") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FPICKConnectionString %>" SelectCommand="SELECT [PIC], [UserName], [COMMENT], [CTIME] FROM [POST] ORDER BY [CTIME] DESC"></asp:SqlDataSource>
  </div>
  
<div class="col-md-3 right">
     <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#3366FF" Height="30px" Width="289px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button9" runat="server" BackColor="#3366FF" BorderStyle="None" ForeColor="White" Height="26px" OnClick="Button9_Click" Text="UPLOAD" />
&nbsp;
     <br />
     <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
         <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#6666FF" />
         <ItemTemplate>
             &nbsp;<asp:Image ID="Image3" runat="server" Height="59px" ImageUrl='<%# Eval("PIC") %>' Width="61px" />
             <br />
             <asp:Label ID="UNAMELabel" runat="server" ForeColor="White" Text='<%# Eval("UNAME") %>' />
             <br />
             <br />
             <asp:Image ID="Image4" runat="server" Height="148px" ImageUrl='<%# Eval("IMGPATH") %>' Width="246px" />
             <br />
             <br />
             Posted on :
             <asp:Label ID="PTIMELabel" runat="server" ForeColor="White" Text='<%# Eval("PTIME") %>' />
             <br />
             <br />
         </ItemTemplate>
     </asp:DataList>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FPICKConnectionString %>" SelectCommand="SELECT [IMGPATH], [UNAME], [PTIME], [PIC] FROM [img] ORDER BY [PTIME] DESC"></asp:SqlDataSource>
    
</div>
  
  
</div>
   </div>   
    </form>
</body>
</html>
