<%@page import="com.payrollsystem.dto.SalaryDTO"%>
<%@page import="com.payrolsystem.dao.SalaryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salary Update</title>
<!-- Tailwind CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<%!SalaryDAO adao = new SalaryDAO();
    SalaryDTO adto = new SalaryDTO(); %>
</head>
<body class="bg-gray-50">
<%
try {
    int salaryId = Integer.parseInt(request.getParameter("salaryId"));
    adto.setSalaryId(salaryId);

    adto = (SalaryDTO) adao.getDTO(adto);

} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("ErrorPage.jsp");
}
%>

<div class="flex justify-center items-center min-h-screen">
    <form name="frmEditSalary" action="http://localhost:8080/payrollsystem/UpdateSalaryServlet" method="get" class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg">
        <h2 class="text-3xl font-extrabold mb-8 text-center text-indigo-600">Salary Details</h2>
        <table class="border border-gray-200 w-full">
            <tr>
                <td class="p-3 font-semibold">Salary Id</td>
                <td class="p-3"><input type="text" name="txtSalaryId" id="txtSalaryId" value="<%=adto.getSalaryId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Employee Id</td>
                <td class="p-3"><input type="text" name="txtEmpId" id="txtEmpId" value="<%=adto.getEmpId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Date</td>
                <td class="p-3"><input type="text" name="txtDate" id="txtDate" value="<%=adto.getDate()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Allowance Id</td>
                <td class="p-3"><input type="text" name="txtAllowanceId" id="txtAllowanceId" value="<%=adto.getAllowanceId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Deduction Id</td>
                <td class="p-3"><input type="text" name="txtDeductionId" id="txtDeductionId" value="<%=adto.getDeductionId()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
            <tr>
                <td class="p-3 font-semibold">Salary Amount</td>
                <td class="p-3"><input type="text" name="txtSalary" id="txtSalary" value="<%=adto.getSalary()%>" class="border border-gray-300 rounded-md px-3 py-2 w-full"></td>
            </tr>
        </table>
        <div class="mt-8 flex justify-center">
            <input type="submit" name="btnEdit" id="btnEdit" value="Edit" class="inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            <input type="reset" name="btnReset" id="btnReset" value="Reset" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
            <a href="http://localhost:8080/payrollsystem/Salary_Main.jsp" class="ml-4 inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Back</a>
        </div>
    </form>
</div>

</body>
</html>
