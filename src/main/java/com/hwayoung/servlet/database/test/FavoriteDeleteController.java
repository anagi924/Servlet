package com.hwayoung.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwayoung.servlet.database.ex.MysqlService;

@WebServlet("/db/favorite/delete")
public class FavoriteDeleteController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String id = request.getParameter("id");
		String query = "delete from `favorite` where `id`=" + id + ";";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/favorite/list.jsp");
		
	}
}
