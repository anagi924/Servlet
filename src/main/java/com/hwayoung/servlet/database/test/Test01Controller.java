package com.hwayoung.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwayoung.servlet.database.ex.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = new MysqlService();
		
		
		mysqlService.connect();
		
		List<Map<String, Object>> realEstateList = mysqlService.select("Select * from `real_estate` group by `id` limit 0,10;");
		
		for(Map<String, Object> realEstate:realEstateList) {
			String address = (String)realEstate.get("address");
			int area = (Integer)realEstate.get("area");
			out.println("매물 주소 : " + address + ", 면적: " + area);
			
			
		}
		
		mysqlService.disconnect();
//		String query = "insert into `real_estate`\r\n"
//				+ "(`realtor`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
//				+ "values\r\n"
//				+ "(\"3\", \"헤라펠리스 101동 5305호\", 350, \"매매\", 1500000, NULL);\r\n"
//				+ "";
//		int count = mysqlService.update(query);
//		
//		out.println("실행 결과 :" + count);
	}

}
