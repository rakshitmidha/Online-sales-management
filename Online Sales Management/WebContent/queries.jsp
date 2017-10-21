<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Online Sales Management System | About Us</title>
<script type="text/javascript"> 
function validateform() {
    var x = document.query.email.value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        document.query.email.select();
        return false;
    }
}
</script>
</head>

<body>
<div id="container">
		<div id="header">
        	<h1>Sales<span class="off">Management</span></h1>
            <h2>Action Starts Here</h2>
        </div>   
        
        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="index.html">Home</a></li>
                <li class="menuitem"><a href="about.html">About</a></li>
                <li class="menuitem"><a href="contact.html">Contact Us</a></li>
              <li class="menuitem"><a href="queries.jsp">Any Queries</a></li>
            <li class="menuitem"><a style="padding-left:370px;">Welcome Admin</a></li>
            </ul>
        </div>
        
        
        
		<div id="content" style="width:900px;">
        <div id="content_top"></div>
        <div id="content_main" style="font-size:12pt;">
        <div style="padding-left:250px;">	<h2>Any Queries</h2><br/>
    <form method="get" action="SaleController" name="query" onsubmit="return validateform()"><input type="hidden" name="source" value="queries"/>
	<div class="row">
		<label for="name">Your name:</label><br />
		<input id="name" class="input" name="name" type="text" value="" size="30" required /><br />
	</div>
	<div class="row">
		<label for="email">Your email:</label><br />
		<input id="email" class="input" name="email" type="text" value="" size="30" required/><br />
	</div>
	<div class="row">
		<label for="message">Your message:</label><br />
		<textarea id="message" class="input" name="message" rows="7" cols="30" required></textarea><br />
	</div><br></br>
	<input id="submit_button" type="submit" value="Send email" />
</form>	
</div>	</div>
        <div id="content_bottom"></div>
            
      </div>
      <div id="footer"><p style="color:#FFFFFF; position: fixed;
    bottom: 10px;
    width: 100%">&copy; TJA311_GroupD</p> </div>
   </div>
</body>
</html>