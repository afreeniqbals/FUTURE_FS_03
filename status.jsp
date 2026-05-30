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

"UPDATE appointments SET status=? WHERE id=?"

);

ps.setString(
1,
"Approved"
);

ps.setInt(
2,
id
);

ps.executeUpdate();

response.sendRedirect(
"admin.jsp"
);

%>