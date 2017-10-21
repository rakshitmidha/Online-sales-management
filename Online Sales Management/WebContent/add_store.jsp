<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Online Sales Management System | Add Store</title>
<script type="text/javascript"> 
function validateform(){  
	var a = document.store_form.store_name.value;
	if(!isNaN(a))
	{
	alert("Please Enter Only Characters");
	document.store_form.store_name.select();
	return false;
	}
	
}
</script>
</head>

<body>
<div id="container">
		<div id="header">
        	<h1>Sales<span class="off">Management</span></h1>
            <h2>Actions Starts Here</h2>
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
        
        <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Services</h3>
                        
                <ul>
                    <li><a href="add_product.jsp">Add Product</a></li>
                    <li><a href="product_report.jsp">Product Report</a></li>
                    <li><a href="add_employee.jsp">Add Employee</a></li>
                    <li><a href="view_employee.jsp">View Employee</a></li>
		    <li><a href="add_store.jsp">Add Store</a></li>
		    <li><a href="view_store.jsp">View Store</a></li>
                </ul>
</div>
                
                
              <div id="leftmenu_bottom"></div>
        </div>
        
	<div id="content">
        
       <div id="content_top"></div>
        <div id="content_main">
			<h2>Add Store</h2>
        	<form action="SaleController" method="get" name="store_form" onsubmit="return validateform()"><input type ="hidden" name="source" value="add_store">
		<table width="367" height="350" border="3" align="center">
		<tr><td>Store Name</td><td><input type="text" name = "store_name" id = "store_name" required></td></tr>
		<tr><td>Region</td><td><select name = "region"><option value="North">North</option><option value="South">South</option></select></td></tr>
		<tr><td>Status</td><td><input type="radio" name = "status" value="active" checked> &nbsp;&nbsp;Active&nbsp;&nbsp;&nbsp;<input type="radio" name = "status" value="Inactive"> &nbsp;&nbsp;Inactive</td></tr>
		<tr>
            <td class="style3">&nbsp;</td>
            <td><div align="center">
              <label><input type="submit" name="add" value="Add"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </label>
              <label>
              <input name="Submit2" type="reset" class="style4" value="Reset" />
              </label>
            </div></td>
          </tr>
        </table>        
		</form><br>
		<font color="green"><h3 style="padding-left:160px;">
		<% Integer i = (Integer)request.getAttribute("i");
			if(i!=null){%>
				<img src="images/greentick.png" style="padding-left:137px;"><br/>
				<%out.print("Store succesfully Added with Store ID = "+i);}
			%>	
		</h3></font>
		
		
</div>
        <div id="content_bottom"></div>
            
      </div>
     <div id="footer"><p style="color:#FFFFFF; position: fixed;
    bottom: 10px;
    width: 100%">&copy; TJA311_GroupD</p> </div>
   </div>
   </div>
</body>
</html>
