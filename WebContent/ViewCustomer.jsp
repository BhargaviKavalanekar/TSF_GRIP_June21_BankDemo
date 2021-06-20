<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="pojo.Bank" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Customers</title>
</head>
<body background="WebContent/images/header-image-bg.jpg">
<form>
<center>
<%
	List<Bank> clist =(List<Bank>)session.getAttribute("blist");
	Bank b=(Bank)session.getAttribute("bank");
%>
<%
	String status=(String)request.getAttribute("status");
		if(status!=null)
		{
			out.print("<b style='color:red'>"+status+"</b>");
		}
%>
		<fieldset>
			<jsp:include page="Header.jsp"></jsp:include>
			<legend  style="color: white; font-size: 15px; font-weight: bold">Profile</legend>
			<br><br>
			<table border="1" cellspacing="1" style="color:white; width: 90%"; id="menu">
					<tr>
						<th>Customer Id </th>
						<th>Account Number</th>
						<th>Name </th>
						<th>Account Balance</th>
						<th>City </th>
					</tr>
					<%for(Bank b1:clist){ %>
					<tr>
						<td><%=b1.getCustId() %></td>
						<td><%=b1.getCustAccNo() %></td>
						<td><%=b1.getCustName() %></td>
						<td><%=b1.getCustAccBal() %></td>
						<td><%=b1.getCustCity() %></td>
						<td><a href="CustomerServlet?action=select&id=<%= b1.getCustId() %>">Select & view </a></td>
						<td><a href="CustomerServlet?action=transfer&id=<%=b1.getCustId() %>">Transfer</a></td>
					</tr>
					<%} %>	
			</table>
		
		</fieldset>

</form>
</center>
</body>
</html>