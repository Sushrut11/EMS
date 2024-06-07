package com.payrollsystem.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.payrollsystem.dto.AllowanceDTO;
import com.payrolsystem.dao.AllowanceDAO;

/**
 * Servlet implementation class UpdateAllowanceServlet
 */
@WebServlet("/UpdateAllowanceServlet")
public class UpdateAllowanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAllowanceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {  
			int allowanceId = Integer.parseInt(request.getParameter("txtAllowanceId"));
			String allowanceName = request.getParameter("txtAllowanceName");
			String allowanceDescription = request.getParameter("txtAllowanceDescription");
			String allowanceAmt = request.getParameter("txtAllowanceAmt");
			
			AllowanceDTO adto = new AllowanceDTO();
			adto.setAllowanceId(allowanceId);
			adto.setAllowanceName(allowanceName);
			adto.setAllowanceDescription(allowanceDescription);
			adto.setAllowanceAmt(allowanceAmt);
			
			AllowanceDAO adao = new AllowanceDAO();
			int result = adao.updateDTO(adto);
			if(result == 1 )
			{
				response.sendRedirect("http://localhost:8080/payrollsystem/Allowance_Main.jsp");
			} else {
				 response.sendRedirect("http://localhost:8080/payrollsystem/ErrorPage.jsp");
			}
		
		} catch(Exception e)
		{
			 e.printStackTrace();
			 response.sendRedirect("http://localhost:8080/payrollsystem/ErrorPage.jsp");
		}	
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
