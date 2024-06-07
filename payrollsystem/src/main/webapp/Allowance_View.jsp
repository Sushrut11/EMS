<%@page import="com.payrollsystem.dto.AllowanceDTO"%>
<%@page import="com.payrolsystem.dao.AllowanceDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Allowance View</title>
<!-- Tailwind CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<%! 
AllowanceDAO adao = new AllowanceDAO();
AllowanceDTO adto = new AllowanceDTO();
%>
</head>
<body class="bg-gray-50">
<% 
try 
     {  
		int uid = Integer.parseInt(request.getParameter("allowanceId"));
		adto.setAllowanceId(uid);
		
		adto = (AllowanceDTO) adao.getDTO(adto);
	
     } catch(Exception e)
		{
    	   e.printStackTrace();
    	   response.sendRedirect("ErrorPage.jsp");
		} 
%>

<div class="flex justify-center items-center min-h-screen">
    <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg">
        <h2 class="text-3xl font-extrabold mb-8 text-center text-indigo-600">Allowance Details</h2>
        <table class="border border-gray-200 w-full">
            <tr>
                <td class="p-3 font-semibold">Allowance Id</td> 
                <td class="p-3"><%= adto.getAllowanceId() %></td> 
            </tr>
            <tr>
                <td class="p-3 font-semibold">Allowance Name</td> 
                <td class="p-3"><%= adto.getAllowanceName() %></td> 
            </tr>
            <tr>
                <td class="p-3 font-semibold">Allowance Description</td> 
                <td class="p-3"><%= adto.getAllowanceDescription() %></td> 
            </tr>
            <tr>
                <td class="p-3 font-semibold">Allowance Amount</td> 
                <td class="p-3"><%= adto.getAllowanceAmt() %></td> 
            </tr>
        </table>
        <div class="mt-8 flex justify-center">
            <a href="http://localhost:8080/payrollsystem/Allowance_Main.jsp" class="inline-flex items-center px-6 py-3 border border-transparent text-sm font-medium rounded-md text-gray-700 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">Back</a>
        </div>
    </div>
</div>

</body>
</html>
