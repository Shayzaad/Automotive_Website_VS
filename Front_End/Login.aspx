<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Front_End.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">
  <link href="css/login_register.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- partial:index.partial.html -->
	<div class="box-form">
		<div class="left" style="background-image: url('img/NSX\(1\).jpg');">
			<div class="overlay">
			<h1>Drive Dynamics</h1>
			<p class="move">Where Performance Meets Convenience</p>
			</div>
		</div>
			<div class="right">
					<h5>Login</h5>
					<p>Don't have an account? <a href="./Register.aspx">Create Your Account</a> it takes less than a minute</p>
					<div class="inputs">
						<asp:TextBox ID="txtEmail" runat="server" TextMode="SingleLine" placeholder="Email"></asp:TextBox>
						<br>
						<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
					</div>	
					<br>
						<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnSignUp_Click" CssClass="login100-form-btn"/>
						<asp:Label ID="LoginOutcome" runat="server" Text=" "></asp:Label>
			</div>
	</div>
<!-- partial -->
        </div>
    </form>
</body>
</html>
