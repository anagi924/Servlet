package com.hwayoung.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwayoung.servlet.database.ex.MysqlService;

@WebServlet("/db/favorite/create")
public class FavoriteInsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String site = request.getParameter("site");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		String query = "insert into `favorite`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "value\r\n"
				+ "('" + site + "', '" + url +  "');";
		
		mysqlService.update(query);
		
		response.sendRedirect("/db/favorite/list.jsp");
		
		
	}
}
