package com.hwayoung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		out.println("<html>"
//				+ "<head><title>i번째 리스트</title></head>"
//				+ "<body><ul style='disc'>"
//				+ "<li>1번째 문자열"
//				+ "<li>2번째 문자열"
//				+ "<li>3번째 문자열"
//				+ "<li>4번째 문자열"
//				+ "<li>5번째 문자열"
//				+ "<li>6번째 문자열"
//				+ "<li>7번째 문자열"
//				+ "<li>8번째 문자열"
//				+ "<li>9번째 문자열"
//				+ "<li>10번째 문자열"
//				+ "</ul></body>"
//				+ "</html>");
		

		out.println("<html>"
				+ "<head><title>i번째 리스트</title></head>"
				+ "<body><ul style='disc'>"
				+ "<script>"
				+ "for(var i = 1; i <= 30; i++) {"
				+ "document.write('<li>' + i + '번째 리스트')"
				+ "}"
				+ "</script>"
				+ "</ul></body>"
				+ "</html>");
		
	}
}
