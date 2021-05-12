package com.Servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ResearcherDAOImpl;
import com.models.Researcher;

/**
 * Servlet implementation class ResearcherAPI
 */
@WebServlet("/ResearcherAPI")
public class ResearcherAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Researcher resObj;
	private static ResearcherDAOImpl resDaoObj;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResearcherAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		resDaoObj = new ResearcherDAOImpl();
		resObj = new Researcher();
		
		resObj.setResearcherID(request.getParameter("resID"));
		resObj.setFirstName(request.getParameter("firstName"));
		resObj.setLastName(request.getParameter("lastName"));
		resObj.setEmail(request.getParameter("email"));
		resObj.setDepartment(request.getParameter("dept"));
		
		String result = resDaoObj.createReseracher(resObj);
		
		response.getWriter().write(result);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		resDaoObj = new ResearcherDAOImpl();
		resObj = new Researcher();
		
		Map values = getParasMap(request); 
		
		//resObj.setId(Integer.parseInt(values.get("id").toString()));
		resObj.setResearcherID(values.get("resID").toString());
		resObj.setFirstName(values.get("firstName").toString());
		resObj.setLastName(values.get("lastName").toString());
		resObj.setEmail(values.get("email").toString());
		resObj.setDepartment(values.get("dept").toString());
		
		String result = resDaoObj.updateResearcher(resObj);
		
		response.getWriter().write(result); 
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		resDaoObj = new ResearcherDAOImpl();
		
		Map values = getParasMap(request); 
		String result = resDaoObj.deleteResearcher(Integer.parseInt(values.get("id").toString())); 
		response.getWriter().write(result); 
		
	}
	
	
	private static Map getParasMap(HttpServletRequest request) 
	{ 
	 Map<String, String> map = new HashMap<String, String>(); 
	try
	 { 
	 Scanner scanner = new Scanner(request.getInputStream(), "UTF-8"); 
	 String queryString = scanner.hasNext() ? 
	 scanner.useDelimiter("\\A").next() : ""; 
	 scanner.close(); 
	 String[] params = queryString.split("&"); 
	 for (String param : params) 
	 { 
	String[] p = param.split("=");
	 map.put(p[0], p[1]); 
	 } 
	 } 
	catch (Exception e) 
	 { 
	 } 
	return map; 
	}
	

}
