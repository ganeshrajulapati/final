<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart UI</title>
	<link rel="stylesheet" type="text/css" href="./style.css">
<title>Insert title here</title>
</head>
<body>
<%@page 
import="java.util.ArrayList"
import="java.util.List"
import="java.util.Map"
import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");

String sql = "select * from shopping_table;";
PreparedStatement ps1 = conn.prepareStatement(sql);
ResultSet res = ps1.executeQuery();
String pass = null;
List<String[]> glo= new ArrayList<>();
while(res.next())
{
String[] details = new String[7];
details[0] = res.getString(1);
details[1] = res.getString(2);
details[2] = res.getString(3);
details[3] = res.getString(4);
details[4] = res.getString(5);
details[5] = res.getString(6);
details[6] = res.getString(7);
glo.add(details);
}
res.close();
String[] fields = {"Number","ImageName","Manufacturer","delivery within","Manufactured","Attend","Not Attend"};

%>
<div class="CartContainer">
<div class="Header">
   	   	<h3 class="Heading">Shopping Cart</h3>
   	   </div>
<div class="cart">
<table border = 0 CELLSPACING = 0 cellpadding = 30>
   	   
<form action="process.jsp" method="POST">
<%for(String[] st :glo){ %>

<tr>
<td>
   	   	  	<img src=<%=st[1] %> style={{ height="120px" }} />
</td>
<td><%=st[2] %></td>
<td><%=st[3] %></td>
<td><%=st[4] %></td>
<td><%=st[5] %></td>
<td>$<%=st[6] %></td>
<td> <input type="checkbox" name=<%=st[2] %> value=<%=st[2] %>/></td>
</tr>
</div>
<%} %>
   	   </table>
   	   </div>
<hr>
<input id = "button" type="submit" value="ADD TO CART">
<input id = "button" type="submit" value="GO TO CART">
</form>
</div>


</body>
</html>