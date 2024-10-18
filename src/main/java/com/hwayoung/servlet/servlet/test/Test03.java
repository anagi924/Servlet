package com.hwayoung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest requeset, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>"
				+ "<head><title>기사</title></head>"
				+ "<body>"
				+ "	<h1>[단독] 고양이가 야옹해</h1>"
				+ "	<p>기사 입력시간: 2021/03/27 06:07:23</p>"
				+ "<hr>"
				+ "<p>끝</p>"
				+ "</body>"
				+ "</html>");
		
	}
}
