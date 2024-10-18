package com.hwayoung.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 이름과 생년월일을 입력받고
		// 이름과 나이를 html로 작성한다.
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String year = birthday.substring(0,4);
		
		int age = 2024 - Integer.parseInt(year);
		
		out.println("<html><head><title>정보</title></head>"
				+ "<body>"
				+ "<h3>정보</h3>"
				+ "<hr>"
				+ "<h3>이름 : " + name+ "</h3>"
				+ "<h3>나이 : " + age + "</h3>"
				+ "</body></html>");
	}
}
