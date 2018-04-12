<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notif.aspx.cs" Inherits="notif" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title></title>
    <%-- chat--%>
    <!-- chatjs requirements -->
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="ChatJs/js/jquery.autosize.js"></script>
 <%--  facbook--%>
    <script>
        // Load the SDK Asynchronously
        (function (d) {
            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement('script'); js.id = id; js.async = true;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            ref.parentNode.insertBefore(js, ref);
        }(document));
      </script>
    <script src=https://connect.facebook.net/en_US/all.js type="text/javascript"></script>
    <script src="scripts/all.js" type="text/javascript"></script>
    <script src="scripts/jquery-1.8.0.min.js" type="text/javascript"></script> 
    <script src="scripts/all.js"type="text/javascript"></script> 
    <script type="text/javascript">
         $("document").ready(function () {
            // Initialize the SDK upon load
            FB.init({
                appId: 'YOUR_APP_ID', // App ID
                channelUrl: '//' + window.location.hostname + '/channel', // Path to your Channel File
                scope: 'id,name,gender,user_birthday,email', // This to get the user details back from Facebook
                status: true, // check login status
                cookie: true, // enable cookies to allow the server to access the session
                xfbml: true  // parse XFBML
            });
            // listen for and handle auth.statusChange events
            FB.Event.subscribe('auth.statusChange', OnLogin);
        });
    // This method will be called after the user login into facebook.
        function OnLogin(response) {
            if (response.authResponse) {
                FB.api('/me?fields=id,name,gender,email,birthday', LoadValues);                    
            }
        }

        //This method will load the values to the labels
        function LoadValues (me) {
            if (me.name) {
                document.getElementById('displayname').innerHTML = me.name;
                document.getElementById('FBId').innerHTML = me.id;
                document.getElementById('DisplayEmail').innerHTML = me.email;
                document.getElementById('Gender').innerHTML = me.gender;
                document.getElementById('DOB').innerHTML = me.birthday;
                document.getElementById('auth-loggedin').style.display = 'block';
                            }
        }
        </script>
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
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '901430759906998',
                xfbml: true,
                version: 'v2.2'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
</script>
    <form id="form1" runat="server">
    <div class="container">
    <div class="brand-heading" style="background-color: #336699; height: 80px;">
        <asp:Label ID="Label3" runat="server" CssClass="label" Font-Bold="True" Font-Size="30pt" ForeColor="White" Text="FriendPick"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="label" Font-Size="Small" ForeColor="White" Text="Pick Your Best Friend!"></asp:Label>

       
        <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Home" PostBackUrl="~/home.aspx" />
        <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Profile" PostBackUrl="~/pfl.aspx" />
        <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Friends" PostBackUrl="~/fnds.aspx" />
        <asp:Button ID="Button4" runat="server" BorderStyle="None" CssClass="btn-primary active" Text="Notifications" PostBackUrl="~/notif.aspx" />
        <asp:Button ID="Button5" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Messages" PostBackUrl="~/message.aspx" />
        <asp:Button ID="Button7" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Settings" PostBackUrl="~/settings.aspx" />
        <asp:Button ID="Button6" runat="server" BorderStyle="None" CssClass="btn-primary" Text="Logout" PostBackUrl="~/Default.aspx" />
    </div>
    
        </div>
     <div class="container">  
   <div class="col-md-3 left">
         <asp:Image ID="Image1" runat="server" Height="199px" Width="214px" />
         <br />
         <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
       </div>
     <center>
         <div class="col-md-6">
&nbsp;<br />
           
<div id="fb-root"></div> <!-- This initializes the FB controls-->   
    <div class="fb-login-button" autologoutlink="true" scope="user_birthday,email" >
      Login with Facebook
     </div> <!-- FB Login Button -->   
    <!-- Details --> 
    <div id="auth-status">    
    <div id="auth-loggedin" style="display: none">
        Hi, <span id="displayname"></span><br/>
        Your Facebook ID : <span id="FBId"></span><br/>
        Your Email : <span id="DisplayEmail"></span><br/>
        Your Sex:, <span id="Gender"></span><br/>
        Your Date of Birth :, <span id="DOB"></span><br/> 
        <div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>       
    </div>
    </div>
             </div>
             </center>
   </div>   
    </form>
</body>
</html>
