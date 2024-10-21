package com.hwayoung.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {
	
	// 보안적으로 위험한 데이터를 파라미터로 전달 받을때
	// url 로 표현하기 힘든 큰데이터나 파일을 파라미터로 전달 받을때(ex. 비밀번호, url)
	// => post
	// 일반적인 경우는 => get
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름과 생년월일을 전달 받고, 
		// 이름과 니이를 html로 구성
		// request -  전달
		// response - 전달받음
		// filter => servlet
		
		// filter가 encoding 방식을 지정함
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
