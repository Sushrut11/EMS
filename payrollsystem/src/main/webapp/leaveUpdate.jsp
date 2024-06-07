<%@page import="com.payrollsystem.dto.LeaveDTO"%>
<%@page import="com.payrolsystem.dao.LeaveDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave Update</title>
<!-- Tailwind CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<%! LeaveDAO ldao = new LeaveDAO();
    LeaveDTO ldto = new LeaveDTO(); %>
</head>
<body class="bg-gray-50">
<%
try {
    int leaveId = Integer.parseInt(request.getParameter("leaveId"));
    ldto.setLeaveId(leaveId);

    ldto = (LeaveDTO) ldao.getDTO(ldto);

} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("ErrorPage.jsp");
}
%>

<div class="flex justify-center items-center min-h-screen">
    <form name="frmEditLeave" action="http://localhost:8080/payrollsystem/LeaveUpdateServlet" method="get" class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg">
        <h2 class="text-3xl font-extrabold mb-8 text-center text-indigo-600">Leave Details</h2>
        <table class="border border-gray-200 w-full">
            <tr>
                <td class="p-3 font-semibold">Leave Id</td>
                <td class="p-3"><input type="text" name="txtLeaveId" id="txtLeaveId" value="<%=ldto.getLeaveId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Leave Name</td>
                <td class="p-3"><input type="text" name="txtLeaveName" id="txtLeaveName" value="<%=ldto.getLeaveName()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Leave Date</td>
                <td class="p-3"><input type="text" name="txtLeaveDate" id="txtLeaveDate" value="<%=ldto.getLeaveDate()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Leave Reason</td>
                <td class="p-3"><input type="text" name="txtLeaveReason" id="txtLeaveReason" value="<%=ldto.getLeaveReason()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Leave Status</td>
                <td class="p-3"><input type="text" name="txtLeaveStatus" id="txtLeaveStatus" value="<%=ldto.getLeaveStatus()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
        </table>
        <div class="mt-8 flex justify-center">
            <input type="submit" name="btnUpdate" id="btnUpdate" value="Update" class="inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            <input type="reset" name="btnReset" id="btnReset" value="Reset" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
            <a href="http://localhost:8080/payrollsystem/leaveMain.jsp" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Back</a>
        </div>
    </form>
</div>

</body>
</html>
