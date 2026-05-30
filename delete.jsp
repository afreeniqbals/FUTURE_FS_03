<%@page import="java.sql.*"%>
<%@page import="com.glowbeauty.DBConnection"%>

<%

int id=

Integer.parseInt(
request.getParameter("id")
);

Connection con=

DBConnection.getConnection();

PreparedStatement ps=

con.prepareStatement(

"delete from appointments where id=?"

);

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect(
"admin.jsp"
);

%>