<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./style.css">
<title>Insert title here</title>
</head>
<body>


<div class="form_data">
<img alt="img not found" src="images/successful.png">
<p id="four" >YOUR PAYMENT IS SUCCESSFULL</p>
<p id="two">YOUR TRANSACTION NUMBER is:
<jsp:useBean id="obj" class="com.javabean.random_number_bean"/> 
<jsp:useBean id="obj1" class="com.javabean.Tax_calculator"/>  
  
<%  
int m=obj.random();  
int tax = (int)obj1.calculateTax(100);
out.println(tax);
out.print(m);  
%>  </p>
<p id="one">CONGRATULATIONS!! YOUR ORDER IS PLACED.</p>
<p id="three"></p>
</div>

</body>
</html>