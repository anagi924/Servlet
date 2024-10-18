package com.hwayoung.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
//		response.setContentType("text/html");
		
		// 이름과 생년월일을 전달받고 
		// 이름과 나이를 정리한 html을 구성한다.
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		
		String birthday = request.getParameter("birthday"); //20241016
		

		String year = birthday.substring(0,4);
		
		int age = 2024 - Integer.parseInt(year);
		
//		out.println("<html>"
//				+ "<head><title>정보</title></head>"
//				+ "<body>"
//				+ "<h3>이름 :" + name + "</h3>"
//				+ "<h3>나이 : " + age + "</h3>"
//				+ "</body>"
//				+ "</html>");
		
		
		// 데이터를 포함하는 문자열
		// 데이터를 표현하는 규격(json)
		// 이름, 나이
		// 오화영, 23
		
		// String name = ['오화영', '유재석']
		
		// {"name":"오화영", "age":23}
		
		System.out.println("{\"name\":\"" + name + "\",\"age\":" + age + "}");		
		
		
	}

}
