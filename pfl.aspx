<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pfl.aspx.cs" Inherits="pfl" %>


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
  
    </head>
<body style="background-image: url('img/intro-bg1.jpg'); background-repeat: no-repeat; background-attachment: fixed">
    <form id="form1" runat="server">
    <div class="container">
    <div class="brand-heading" style="background-color: #336699; height: 80px;">
        <asp:Label ID="Label3" runat="server" CssClass="label" Font-Bold="True" Font-Size="30pt" ForeColor="White" Text="FriendPick"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="label" Font-Size="Small" ForeColor="White" Text="Pick Your Best Friend!"></asp:Label>

        
        <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Home" PostBackUrl="~/home.aspx" />
        <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="btn-primary active" Text="Profile" PostBackUrl="~/pfl.aspx" />
        <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Friends" PostBackUrl="~/fnds.aspx" />
        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Messages" PostBackUrl="~/message.aspx" />
        <asp:Button ID="Button7" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Settings" PostBackUrl="~/settings.aspx" />
        <asp:Button ID="Button6" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Logout" PostBackUrl="~/Default.aspx" />
    </div>
    
        </div>
     <div class="container">  
   <div class="col-md-3 left">
         <asp:Image ID="Image1" runat="server" Height="199px" Width="214px" />
         <br />
         <asp:Label ID="Label5" runat="server" Text="NAME" ForeColor="White"></asp:Label>
         <br />
         <asp:Label ID="Label6" runat="server" ForeColor="White" Text="GEND"></asp:Label>
         <br />
         <asp:Label ID="Label7" runat="server" ForeColor="White" Text="DATE"></asp:Label>
         <br />
       </div>
         <center>
         <div class="col-md-6">
&nbsp;<br />
             <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Height="143px" Width="437px">
                 <EditItemTemplate>
                     IMGPATH:
                     <asp:TextBox ID="IMGPATHTextBox" runat="server" Text='<%# Bind("IMGPATH") %>' />
                     <br />
                     <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                     &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     IMGPATH:
                     <asp:TextBox ID="IMGPATHTextBox" runat="server" Text='<%# Bind("IMGPATH") %>' />
                     <br />
                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <asp:Image ID="Image2" runat="server" Height="290px" ImageUrl='<%# Eval("IMGPATH") %>' Width="421px" />
                     <br />

                 </ItemTemplate>
             </asp:FormView>
             &nbsp;&nbsp;&nbsp;
             <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="None" CssClass="btn-primary" ForeColor="Black" Height="39px" Width="418px" />
             <br />
             <asp:Button ID="Button8" runat="server" BackColor="#6666FF" BorderStyle="None" ForeColor="White" Text="UPLOAD" OnClick="Button8_Click" />
             <br />
             </div>
             </center>



   </div>  
        <div class="col-md-6 right" >

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FPICKConnectionString %>" SelectCommand="SELECT [IMGPATH] FROM [img] WHERE ([UID] = @UID)">
                <SelectParameters>
                    <asp:SessionParameter Name="UID" SessionField="field1" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

