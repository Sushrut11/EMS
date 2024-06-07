<%@page import="com.payrollsystem.dto.AttendanceDTO"%>
<%@page import="com.payrolsystem.dao.AttendanceDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance View</title>
<!-- Tailwind CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<%! AttendanceDAO adao = new AttendanceDAO();
    AttendanceDTO adto = new AttendanceDTO(); %>
</head>
<body class="bg-gray-50">
<%
try {
    int attendanceId = Integer.parseInt(request.getParameter("AttendanceId"));
    adto.setAttendanceId(attendanceId);

    adto = (AttendanceDTO) adao.getDTO(adto);

} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("ErrorPage.jsp");
}
%>

<div class="flex justify-center items-center min-h-screen">
    <form name="frmEditAttendance" action="http://localhost:8080/payrollsystem/AttendanceUpdateServlet" method="get" class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg">
        <h2 class="text-3xl font-extrabold mb-8 text-center text-indigo-600">Attendance Details</h2>
        <table class="border border-gray-200 w-full">
            <tr>
                <td class="p-3 font-semibold">Attendance Id</td>
                <td class="p-3"><input type="text" name="txtAttendanceId" id="txtAttendanceId" value="<%=adto.getAttendanceId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Attendance Name</td>
                <td class="p-3"><input type="text" name="txtAttendanceName" id="txtAttendanceName" value="<%=adto.getAttendanceName()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Attendance Status</td>
                <td class="p-3"><input type="text" name="txtAttendanceStatus" id="txtAttendanceStatus" value="<%=adto.getAttendanceStatus()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Attendance Percentage</td>
                <td class="p-3"><input type="text" name="txtAttendancePercentage" id="txtAttendancePercentage" value="<%=adto.getAttendancePercentage()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
        </table>
        <div class="mt-8 flex justify-center">
            <input type="submit" name="btnEdit" id="btnEdit" value="Edit" class="inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            <input type="reset" name="btnReset" id="btnReset" value="Reset" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
            <a href="http://localhost:8080/payrollsystem/attendanceMain.jsp" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Back</a>
        </div>
    </form>
</div>

</body>
</html>
