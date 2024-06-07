package com.payrollsystem.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.payrollsystem.dto.QualificationDTO;
import com.payrolsystem.dao.QualificationDAO;

/**
 * Servlet implementation class UpdateQualificationServlet
 */
@WebServlet("/UpdateQualificationServlet")
public class UpdateQualificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateQualificationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {  
			int uid = Integer.parseInt(request.getParameter("txtQualificationId"));
			String uname = request.getParameter("txtQualificationName");
			String udesc = request.getParameter("txtQualificationDesc");
			
			QualificationDTO qdto = new QualificationDTO();
			qdto.setQualificationId(uid);
			qdto.setQualificationName(uname);
			qdto.setQualificationDesc(udesc);
			
			QualificationDAO qdao = new QualificationDAO();
			int result = qdao.updateDTO(qdto);
			if(result == 1 )
			{
				response.sendRedirect("http://localhost:8080/payrollsystem/Qualification_Main.jsp");
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
