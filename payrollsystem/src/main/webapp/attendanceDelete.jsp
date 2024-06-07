<%@page import="com.payrollsystem.dto.AttendanceDTO"%>
<%@page import="com.payrolsystem.dao.AttendanceDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!AttendanceDAO adao = new AttendanceDAO();
	AttendanceDTO adto = new AttendanceDTO();%>
</head>
<body>
	<%
	try {
		int uid = Integer.parseInt(request.getParameter("AttendanceId"));
		adto.setAttendanceId(uid);

		int result = adao.deleteDTO(adto);
		if(result == 1 )
		{
			response.sendRedirect("http://localhost:8080/payrollsystem/attendanceMain.jsp");
		} else {
			 response.sendRedirect("http://localhost:8080/payrollsystem/ErrorPage.jsp");
		}

	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("ErrorPage.jsp");
	}
	%>

</body>
</html>