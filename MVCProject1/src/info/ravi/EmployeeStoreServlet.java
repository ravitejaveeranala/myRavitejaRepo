package info.ravi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeStoreServlet
 */
@SuppressWarnings("serial")
@WebServlet("/EmployeeStoreServlet")
public class EmployeeStoreServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hibernate", "hibernate");
		String eno = request.getParameter("eno");
		String name = request.getParameter("name");
		String salary = request.getParameter("salary");

		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();
		out.println("Employee Details Stored Successfully");
		out.println(eno);
		out.println(name);
		out.println(salary);
		String sql ="insert into emp_tbl values(?,?,?)";
		
		PreparedStatement prepareStatement = connection.prepareStatement(sql);
		
		prepareStatement.setString(1, eno);
		prepareStatement.setString(2, name);
		prepareStatement.setString(3, salary);
		prepareStatement.executeUpdate();
		
		
		
		connection.close();
	} catch (Exception e) {
		
		e.printStackTrace();
	}

}}
