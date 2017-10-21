<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Online Sales Management System | Add Employee</title>
<script type="text/javascript"> 
function validateform(){  
	var a = document.employee_form.name.value;
	if(!isNaN(a))
	{
	alert("Please Enter Only Characters");
	document.employee_form.name.select();
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
			<center><h2>Add Employee</h2></center><br/>
      <form action="SaleController" method="get" name="employee_form" onsubmit="return validateform()">
      <input type="hidden" name="source" value="add_employee">
		<table width="367" height="210" border="1" align="center">
          <tr>
            <td width="123" class="style3"><div align="center">Name*</div></td>
            <td width="228"><label>
              <div align="center">
                <input type="text" name="name" required />
                </div>
            </label></td>
          </tr>
          <tr>
            <td class="style3"><div align="center" class="style3">Age*</div></td>
            <td><label>
              <div align="center">
                <select name="age">
                  <option value="23">23</option>
                  <option value="24">24</option>
                  <option value="25">25</option>
                  <option value="26">26</option>
                  <option value="27">27</option>
                  <option value="28">28</option>
                  <option value="29">29</option>
                  <option value="30">30</option>
                  <option value="31">31</option>
                  <option value="32">32</option>
                  <option value="33">33</option>
                  <option value="34">34</option>
                  <option value="35">35</option>
                  <option value="36">36</option>
                  <option value="37">37</option>
                  <option value="38">38</option>
                  <option value="39">39</option>
                  <option value="40">40</option>
                  <option value="41">41</option>
                  <option value="42">42</option>
                  <option value="43">43</option>
                  <option value="44">44</option>
                  <option value="45">45</option>
                </select>
                </div>
            </label></td>
          </tr>
          <tr>
            <td class="style3"><div align="center">Role*</div></td>
            <td><div align="center">
              <select name="role">
                <option value="Senior Manager">Senior Manager</option>
                <option value="Sales Manager">Sales Manager</option>
                <option value="Regional Manager">Regional Manager</option>
                <option value="Sales Representative">Sales Representative</option>
              </select>
            </div></td>
          </tr>
          <tr>
            <td class="style3"><div align="center">Phone No* </div></td>
            <td><div align="center">
              <input type="number" name="phone"  required placeholder = "Enter 10 digit valid phone no."">
            </div></td>
          </tr>
          <tr>
            <td class="style3"><div align="center">Gender*</div></td>
            <td><label>
              <div align="center">
                <input name="gender" type="radio" value="male" checked/>
                Male 
                <input name="gender" type="radio" value="female" />
                Female</div>
            </label></td>
          </tr>
          <tr>
            <td class="style3"><div align="center">Address*</div></td>
            <td><label>
              <div align="center">
                <textarea name="address"  required></textarea>
                </div>
            </label></td>
          </tr>
          <tr>
            <td class="style3">&nbsp;</td>
            <td><div align="center">
              <label>
              <input name="Submit" type="submit" class="style4" value="Add" />
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </label>
              <label>
              <input name="Submit2" type="reset" class="style4" value="Reset" />
              </label>
            </div></td>
          </tr>
        </table>        
        </form>
        <p align="center" class="style2"><a href="Next"></a></p>
        <br>
		<font color="green"><h3 style="padding-left:160px;">
		<% Integer i = (Integer)request.getAttribute("i");
			if(i!=null){%>
				<img src="images/greentick.png" style="padding-left:137px;"><br/>
				<%out.print("Employee succesfully Added with Employee ID = "+i);}
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
