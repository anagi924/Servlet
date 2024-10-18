package com.hwayoung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		

		if(address.substring(0,3).equals("서울시")) {
			out.println("배달 불가 지역입니다");
		}
		else if(card.equals("신한카드")) {
			out.println("결제 불가 카드입니다.");
		}
		else {
			out.println("<h3>" + address + "</h3><hr>" + address + " 배달 준비중" + "<hr>" + "결제금액: " + price + "원");
			
		}
		
		
	}

}
