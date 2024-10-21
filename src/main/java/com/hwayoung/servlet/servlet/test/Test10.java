package com.hwayoung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10 extends HttpServlet {
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
	
		
		if(userMap.get("id").equals(id)) {
			// id와 password가 일치하는 경우
			if(userMap.get("password").equals(password)) {
				out.println("<h3>" + userMap.get("name") + "님 환영 합니다." +"</h3>");

			}
			// id 만 일치
			else {
				out.println("<h3>" + "password가 일치하지 않습니다." + "</h3>");
				
			}
		}
		else {
			// password만 일치
			if(userMap.get("password").equals(password)) {
				out.println("<h3>" + "id가 일치하지 않습니다." + "</h3>");
				
			}
			// id와 password 모두 일치하지 않음
			else {
				out.println("<h3>" + "id와 password가 일치하지 않습니다." + "</h3>");
				
			}
		} 
			
	}
	 
	// doPost 메소드 바깥쪽에 위치
	
}
