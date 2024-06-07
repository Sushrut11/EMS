<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Tailwind CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-50">

<form name="frmSalaryAdd" action="http://localhost:8080/payrollsystem/AddSalaryServlet" method="get">
    <div class="flex justify-center items-center min-h-screen">
        <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg">
            <h2 class="text-3xl font-extrabold mb-8 text-center text-indigo-600">Add Salary Details</h2>
            <div class="space-y-6">
                <div>
                    <label for="txtSalaryId" class="block text-sm font-medium text-gray-700">Salary Id</label>
                    <input type="text" name="txtSalaryId" id="txtSalaryId" class="mt-1 block w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div>
                    <label for="txtEmpId" class="block text-sm font-medium text-gray-700">Employee Id</label>
                    <input type="text" name="txtEmpId" id="txtEmpId" class="mt-1 block w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div>
                    <label for="txtDate" class="block text-sm font-medium text-gray-700">Date</label>
                    <input type="text" name="txtDate" id="txtDate" class="mt-1 block w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div>
                    <label for="txtAllowanceId" class="block text-sm font-medium text-gray-700">Allowance Id</label>
                    <input type="text" name="txtAllowanceId" id="txtAllowanceId" class="mt-1 block w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div>
                    <label for="txtDeductionId" class="block text-sm font-medium text-gray-700">Deduction Id</label>
                    <input type="text" name="txtDeductionId" id="txtDeductionId" class="mt-1 block w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
                <div>
                    <label for="txtSalary" class="block text-sm font-medium text-gray-700">Salary Amount</label>
                    <input type="text" name="txtSalary" id="txtSalary" class="mt-1 block w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                </div>
            </div>
            <div class="mt-8 flex justify-between items-center">
                <button type="submit" name="btnAdd" id="btnAdd" class="bg-indigo-500 text-white px-6 py-3 rounded-md shadow-lg hover:bg-indigo-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Add</button>
                <button type="reset" name="btnReset" id="btnReset" class="bg-gray-500 text-white px-6 py-3 rounded-md shadow-lg hover:bg-gray-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Reset</button>
                <a href="http://localhost:8080/payrollsystem/Salary_Main.jsp" class="inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Back</a>
            </div>
        </div>
    </div>
</form>

</body>
</html>
