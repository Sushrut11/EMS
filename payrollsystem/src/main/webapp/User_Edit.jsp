
<%@page import="com.payrollsystem.dto.UserDTO"%>
<%@page import="com.payrolsystem.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User View</title>

<%!UserDAO udao = new UserDAO();
	UserDTO udto = new UserDTO();%>
</head>
<body>
	<%
	try {
		int uid = Integer.parseInt(request.getParameter("userId"));
		udto.setUserId(uid);

		udto = (UserDTO) udao.getDTO(udto);

	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("ErrorPage.jsp");
	}
	%>

	<form name="frmEditUser"
		action="http://localhost:8080/payrollsystem/EditUserServlet"
		method="get">
		<center>
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<h2>User Details</h2>
					</td>
				</tr>
			</table>
			<br>
			<table border="1" cellspacing="2" cellpadding="4">
				<tr>
					<td>User Id</td>
					<td><input type="text" name="txtUserId" id="txtUserId"
						value="<%=udto.getUserId()%>"></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="txtUserName" id="txtUserName"
						value="<%=udto.getUserName()%>"></td>
				</tr>
				<tr>
					<td>User Password</td>
					<td><input type="password" name="txtUserPwd" id="txtUserPwd"
						value="<%=udto.getUserPwd()%>"></td>
				</tr>
				<tr>
					<td>User Address</td>
					<td><input type="text" name="txtUserAddress" id="txtUserAddress"
						value="<%=udto.getUserAddress()%>"></td>
				</tr>
				<tr>
					<td>User Mobile</td>
					<td><input type="text" name="txtUserMobile" id="txtUserMobile"
						value="<%=udto.getUserMobile()%>"></td>
				</tr>
				<tr>
					<td>User Email</td>
					<td><input type="text" name="txtUserEmail" id="txtUserEmail"
						value="<%=udto.getUserEmail()%>"></td>
				</tr>
				<tr>
					<td>User Status</td>
					<td><input type="text" name="txtUserStatus" id="txtUserStatus"
						value="<%=udto.getUserStatus()%>"></td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><input type="submit" name="btnEdit" id="btnEdit" value="Edit"></td>
					<td><input type="reset" name="btnReset" id="btnReset"
						value="Reset"></td>
					<td><a
						href="http://localhost:8080/payrollsystem/User_main.jsp"> Back
					</a></td>

				</tr>
			</table>
		</center>
	</form>

</body>
</html>
