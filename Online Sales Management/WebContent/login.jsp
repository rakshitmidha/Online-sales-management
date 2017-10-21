<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  	<link rel="stylesheet" type="text/css" href="style.css" />	
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <body>
  
		<div id="header">
        	<h1>Sales<span class="off">Management</span></h1>
            <h2>Action Starts Here</h2></div>
        
	<div class="login">
	
		<div class="login-screen">
			<div class="app-title">
				<h1 style="margin-bottom:20px;">Login</h1>
			</div>
			<form action="SaleController" method="get">
			<input type="hidden" name="source" value="login">
			<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="username" id="login-name" name="user" required>
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="password" id="login-pass" name="pass" required>
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>
				<br/>
				<input type="submit" class="btn btn-primary btn-large btn-block" value="login"><br/>${message}
				
				
			</div>
			</form>
			
			
		</div>
	</div>
	<div id="footer"><p style="color:#FFFFFF; position: fixed;
    bottom: 10px;
    width: 100%">&copy; TJA311_GroupD</p> </div>
</body>
  
  
</body>
</html>
