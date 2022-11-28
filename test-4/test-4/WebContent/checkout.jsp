<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./style.css">

</head>
</body>


<form class="form_class" method="post" action="ack">
<h1>TOTAL AMOUNT TO BE PAID : $<%out.println(request.getParameter("sum")); %></h1>
<label for="owner">Owner</label>
<input type="text" id="owner"><br><br><br>



<label for="cardNumber">Card Number</label>
<input type="text" id="cardNumber"><br><br><br>


<label>Expiration Date</label>
<select>
<option value="01">January</option>
<option value="02">February </option>
<option value="03">March</option>
<option value="04">April</option>
<option value="05">May</option>
<option value="06">June</option>
<option value="07">July</option>
<option value="08">August</option>
<option value="09">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select>
<select>
<option value="16"> 2016</option>
<option value="17"> 2017</option>
<option value="18"> 2018</option>
<option value="19"> 2019</option>
<option value="20"> 2020</option>
<option value="21"> 2021</option>
</select>

<label for="cvv">CVV</label>
<input type="text" id="cvv"><br><br><br>

<button type="submit" >PAY NOW</button>

</form>
</body>
</html>