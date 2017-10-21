<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Online Sales Management System | View Store</title>
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
			<h2>View Store</h2>
      <%@page import="java.sql.*"%>
<%@page import="com.util.DbConnection" %>
<%
Connection con=DbConnection.getConnection();
PreparedStatement pst=null;
ResultSet rs=null;
String query="select * from OSM_STORE";
pst=con.prepareStatement(query);
rs=pst.executeQuery();
%>
<table border="1">
	<tr>	<th>ID</th>
			<th>Store Name</th>
			<th>Region</th>
			<th>Status</th>
	</tr>
	<%

while(rs.next()){
	
	%>
	<tr>	
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td></tr>
	
	
	<%
}
%>
	</table>
	<br></br>	
	<table>
	<tr><td colspan="2"><a href="update_store.jsp"><input type="button" name="update" value="Update Store"></a></td>
	<td colspan="2"><a href="delete_store.jsp"><input type="button" name="delete" value="Delete Store"></a></td></tr>
	</table>
	<br>
	
		
</div>
        <div id="content_bottom"></div>
            
      </div>
      <div id="footer"><p style="color:#FFFFFF; position: fixed;
    bottom: 10px;
    width: 100%">&copy; TJA311_GroupD</p> </div>
   </div>
</body>
</html>
