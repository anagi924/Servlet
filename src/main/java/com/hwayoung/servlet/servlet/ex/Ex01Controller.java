package com.hwayoung.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 결과물에 대한 정보 설정
//		ResponseHeader
//		character set: utf-8
		response.setCharacterEncoding("utf-8");
		
//		데이터 타입
//		mime
//		text/plain : 그냥 문자열
		
		response.setContentType("text/plain");
		
		
//		결과물
//		Response Body
		PrintWriter out = response.getWriter();
		
		out.println("URL MAPPING");
		
//		현재 날짜 시간 정보 얻어오기
		Date now = new Date();
		
		out.println(now);
		
//		원하는 형태의 문자열로 날짜 시간 포함하기
//		2024년 10월 15일 17시 44분
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 mm월 dd일 HH시 mm분 ss초");
		
		String dateTimeString = formatter.format(now);
		out.println(dateTimeString);
		
		
		
		
		
	}
}
