<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

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
            height: 68px;
        }
        .auto-style2 {
            height: 48px;
        }
    </style>

    </head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

   
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
                        <a class="page-scroll" href="default.aspx">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#signup">Signup</a>
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
    
    <form runat="server">
    <!-- Login Section -->
    <section id="signup" class="container content-section text-center">
        <center>
        <div class="row">
            
            <div class="col-lg-8">
               
                <center>
               <table runat="server" height="243px" >
                 <tr>
                      <td colspan="2" class="auto-style1">
                          
 <h2>Signup </h2>
                    </td>
                     
                 </tr>
                  <tr >
                      
                          <td><asp:Image ID="Image1" runat="server" ImageUrl="~/img/appbar.user.png"></asp:Image></td>
                          <td><asp:TextBox ID="TextBox1" runat="server" CssClass="text-info" ></asp:TextBox></td>
                     <td>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="label-danger" ErrorMessage="Please Provide a User Name"></asp:RequiredFieldValidator>
                         <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="label-danger" ErrorMessage="User Name Is Invalid" ValidationExpression="\w*"></asp:RegularExpressionValidator>

                     </td>
                 </tr>
                  <tr>
                       
                           <td>
<asp:Image ID="Image2" runat="server" ImageUrl="~/img/appbar.lock.png"></asp:Image>
                           </td>
                           <td>
<asp:TextBox ID="TextBox2" runat="server" CssClass="text-info" TextMode="Password"></asp:TextBox>
                           </td>
                       <td>

                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="label-danger" ErrorMessage="Please Provide a Password"></asp:RequiredFieldValidator>

                       </td>
                  </tr>
                  <tr>
                       
                           <td>
<asp:Image ID="Image3" runat="server" ImageUrl="~/img/appbar.email.minimal.png"></asp:Image>
                           </td>
                           <td>
<asp:TextBox ID="TextBox3" runat="server" CssClass="text-info" TextMode="Email"></asp:TextBox>
                           </td>
                       <td>

                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" CssClass="label-danger" ErrorMessage="Email is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="label-danger" ErrorMessage="Please Provide a Valid Email "></asp:RequiredFieldValidator>

                       </td>
                  </tr>
                  <tr>
                       
                           <td>
<asp:Image ID="Image4" runat="server" ImageUrl="~/img/appbar.gender.both.png"></asp:Image>
                           </td>
                           <td>
<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="sex"></asp:RadioButton>
           <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="sex"></asp:RadioButton>             

                           </td>
                     <td>

                     </td>
                  </tr>
                  <tr>
                       
                           <td>
<asp:Image ID="Image5" runat="server" ImageUrl="~/img/appbar.calendar.day.png"></asp:Image>
                           </td>
                           <td>
<asp:TextBox ID="TextBox5" runat="server" CssClass="text-info" TextMode="Date"></asp:TextBox>
                           </td>
                      <td>

                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="label-danger" ErrorMessage="Please Provide Your D.O.B"></asp:RequiredFieldValidator>
                          <br />

                      </td>
                  </tr>
                  <tr>
                       <td colspan="2">
                  
                      <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>           
                       </td>
                  </tr>
                   <tr>
                       <td colspan="3">

                           <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#3333FF" Height="27px" Width="250px" />

                       </td>
                   </tr>
                  <tr>
                       <td colspan="2" align="center" class="auto-style2">
                          <asp:Button ID="Signupbtn" runat="server" Text="Signup" CssClass="btn-primary" BorderStyle="None" OnClick="Signupbtn_Click"></asp:Button>
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
                <h2>Contact us</h2>
                <p>Feel free to email us to provide some feedback on our service, give us suggestions for new service, or to just say hello!</p>
                <p>&nbsp;</p>
                <ul class="list-inline banner-social-buttons">
                </ul>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <div id="map"></div>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Your Website 2014</p>
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

