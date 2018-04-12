<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <%--<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>--%>

    <title>FPICK</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .auto-style1 {
            width: 145px;
        }
    </style>

    </head>

<body id="page-top"  data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">Start</span> 
                </a>
            </div>
   <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from Login link when scrolled up past Login section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#Login">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="Signup.aspx">Signup</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
           <div class="container">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Friendpick</h1>
                        <p class="intro-text">Pick your best friend.</p>
                        <a href="#Login" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
          </div>
    </header>
    <!-- Login Section -->
     <form runat="server">
    <section id="Login" class="container content-section text-center">
        <center>
        <div class="row">
            
            <div class="col-lg-8">
               
                <center>
               <table  runat="server" >
                  <tr>
                      
                          <td colspan="3" align="center">
 <h2>Login </h2>
                          </td>
                      
                  </tr>
                  <tr>
                      
                          <td><asp:Image ID="Image1" runat="server" ImageUrl="~/img/appbar.user.png"></asp:Image></td>
                          <td>
                              <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" ForeColor="#333333"></asp:TextBox>
                          </td>
                     <td class="auto-style1">

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="label-danger" ErrorMessage="Please Enter a valid Email address" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                         <br />
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" CssClass="label-danger" ErrorMessage="Please Enter a  Email address"></asp:RequiredFieldValidator>

                     </td>
                 </tr>
                  <tr>
                       
                           <td>
<asp:Image ID="Image2" runat="server" ImageUrl="~/img/appbar.lock.png"></asp:Image>
                           </td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server" ForeColor="#333333"  TextMode="Password"></asp:TextBox>
                           </td>
                      <td class="auto-style1">

                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" CssClass="label-danger" ErrorMessage="Please Enter a  Password"></asp:RequiredFieldValidator>

                      </td>
                  </tr>
                  <tr>
                       <td colspan="3" align="center">
                        <asp:Button ID="Loginbtn" runat="server" Text="Login" CssClass="btn-primary" BorderStyle="None" CommandName="cmd" OnClick="Loginbtn_Click" ></asp:Button>
                           <br />
                           <br />
                       </td>
                  </tr>
                   <tr>
                       <td colspan="3" align="left">

                           <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="Invalid username or password!!!"></asp:Label>

                       </td>
                   </tr>
                   <tr>
                       <td colspan="3" align="left">

                           <asp:Label ID="Label2" runat="server" Text="Forgot passord"></asp:Label>
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderStyle="None" CssClass="btn-primary" ForeColor="White" Height="16px" OnClick="Button1_Click" Text="?" Width="45px" />

                       </td>
                   </tr>
                   
               </table>
                    </center>
            </div>
               
        </div>
             </center>
    </section>
    <!-- Signup Section -->
    </form>
    
    
    <!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact US</h2>
                <p>Feel free to email us to provide some feedback , or to just say hello!</p>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <div id="map"></div>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright © FPick 2015</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>

   
</body>

</html>

