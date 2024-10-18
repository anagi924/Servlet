package com.hwayoung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String numberString = request.getParameter("number");
		
		int number = Integer.parseInt(numberString);
		
		out.println("<html>"
				+ "<body>"
				+ "<ul>\n");

				for(var i = 1; i < 10; i++) {
					
					out.println(number + 'X' + i + '=' + number * i);
				}
				

		out.println("</ul></body></html>");
		
	}
}
