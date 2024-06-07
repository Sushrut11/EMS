<%@page import="com.payrollsystem.dto.DepartmentDTO"%>
<%@page import="com.payrolsystem.dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department Update</title>
<!-- Tailwind CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<%! DepartmentDAO ddao = new DepartmentDAO();
    DepartmentDTO ddto = new DepartmentDTO(); %>
</head>
<body class="bg-gray-50">
<%
try {
    int uid = Integer.parseInt(request.getParameter("deptId"));
    ddto.setDeptId(uid);

    ddto = (DepartmentDTO) ddao.getDTO(ddto);

} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("ErrorPage.jsp");
}
%>

<div class="flex justify-center items-center min-h-screen">
    <form name="frmEditDepartment" action="http://localhost:8080/payrollsystem/UpdateDepartmentServlet" method="get" class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg">
        <h2 class="text-3xl font-extrabold mb-8 text-center text-indigo-600">Department Details</h2>
        <table class="border border-gray-200 w-full">
            <tr>
                <td class="p-3 font-semibold">Department Id</td>
                <td class="p-3"><input type="text" name="txtDepartmentId" id="txtDepartmentId" value="<%=ddto.getDeptId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Department Name</td>
                <td class="p-3"><input type="text" name="txtDepartmentName" id="txtDepartmentName" value="<%=ddto.getDeptName()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Department Description</td>
                <td class="p-3"><input type="text" name="txtDepartmentDesc" id="txtDepartmentDesc" value="<%=ddto.getDeptDesc()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
        </table>
        <div class="mt-8 flex justify-center">
            <input type="submit" name="btnEdit" id="btnEdit" value="Edit" class="inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            <input type="reset" name="btnReset" id="btnReset" value="Reset" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
            <a href="http://localhost:8080/payrollsystem/Department_Main.jsp" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Back</a>
        </div>
    </form>
</div>

</body>
</html>
