<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Front_End.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">   <link href="css/login_register.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- partial:index.partial.html -->
	<div class="box-form">
		<div class="left" style="background-image: url('img/GTI.jpg');">
			<div class="overlay">
			<h1>Drive Dynamics</h1>
			<p class="move">Where Performance Meets Convenience</p>
			</div>
		</div>
			<div class="right">
			<h5>Register</h5>
			<p>Already have an account? <a href="./Login.aspx">Login</a> to experience automotive heaven</p>
			<div class="inputs">

				<asp:TextBox ID="txtUsername" runat="server" TextMode="SingleLine" placeholder="Username"></asp:TextBox>
				<br>
				<asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
				<br>
				<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
			</div>	
				<br>
				<asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="bg-primary"/>
				<asp:Label ID="RegOutcome" runat="server" Text=" "></asp:Label>
				<%--<button>Register</button>--%>
		</div>
	</div>
<!-- partial -->
        </div>
    </form>
</body>
</html>
