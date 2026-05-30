package com.glowbeauty;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookServlet")

public class BookServlet extends HttpServlet {

protected void doPost(
HttpServletRequest request,
HttpServletResponse response)

throws ServletException, IOException {

String name=request.getParameter("name");

String email=request.getParameter("email");

String phone=request.getParameter("phone");

String hairstyle=request.getParameter("hairstyle");

String date=request.getParameter("date");

String req=request.getParameter("request");

try{

Connection con=DBConnection.getConnection();

PreparedStatement ps=
con.prepareStatement(

"insert into appointments(name,email,phone,hairstyle,booking_date,request) values(?,?,?,?,?,?)"

);

ps.setString(1,name);

ps.setString(2,email);

ps.setString(3,phone);

ps.setString(4,hairstyle);

ps.setString(5,date);

ps.setString(6,req);

ps.executeUpdate();

response.sendRedirect("success.jsp");

}
catch(Exception e){

e.printStackTrace();

response.getWriter().println(e);

}

}

}