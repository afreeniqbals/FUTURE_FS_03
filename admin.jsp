
<%

if(session.getAttribute(
"admin"
)==null){

response.sendRedirect(
"login.jsp"
);

}

%>





<%

Connection con=
DBConnection.getConnection();

Statement st=
con.createStatement();



Statement st2=
con.createStatement();

ResultSet total=

st2.executeQuery(
"select count(*) from appointments"
);

total.next();

int totalBookings=
total.getInt(1);



ResultSet approved=

st2.executeQuery(
"select count(*) from appointments where status='Approved'"
);

approved.next();

int approvedCount=
approved.getInt(1);

%>







<%@page import="java.sql.*"%>
<%@page import="com.glowbeauty.DBConnection"%>

<!DOCTYPE html>
<html>
<head>

<title>Admin Dashboard</title>

<link rel="stylesheet"
href="style.css">

</head>

<body>

<nav class="navbar">

<div class="logo">
GlowBeauty Salon
</div>

<ul class="nav-links">

<li><a href="index.jsp">Home</a></li>

<li><a href="services.jsp">Services</a></li>

<li><a href="#">Gallery</a></li>

<li><a href="#">Contact</a></li>

<li>

<a href="logout.jsp">

Logout

</a>

</li>

</ul>

</nav>

<h1 class="admin-title">

Admin Dashboard

</h1>


<div class="dashboard-cards">

<div class="dash-card">

<h2>

<%=totalBookings%>

</h2>

<p>

Total Bookings

</p>

</div>

<div class="dash-card">

<h2>

<%=approvedCount%>

</h2>

<p>

Approved Bookings

</p>

</div>

</div>


<form method="get"
style="text-align:center;
margin:30px;">

<input

type="text"

name="search"

placeholder=
"Search name or service"

class="search-box">

<button
class="search-btn">

Search

</button>

</form>

<table class="admin-table">

<tr>

<th>ID</th>

<th>Name</th>

<th>Email</th>

<th>Phone</th>

<th>Service</th>

<th>Date</th>

<th>Request</th>

<th>Status</th>

<th>Action</th>

<th>Approve</th>

</tr>

<%

String search=

request.getParameter(
"search"
);

ResultSet rs;

if(search!=null &&
!search.trim().equals("")){

PreparedStatement ps=

con.prepareStatement(

"select * from appointments where name LIKE ? OR hairstyle LIKE ?"

);

ps.setString(
1,
"%"+search+"%"
);

ps.setString(
2,
"%"+search+"%"
);

rs=ps.executeQuery();

}

else{

rs=

st.executeQuery(

"select * from appointments"

);

}
while(rs.next()){

%>

<tr>

<td><%=rs.getInt("id")%></td>

<td><%=rs.getString("name")%></td>

<td><%=rs.getString("email")%></td>

<td><%=rs.getString("phone")%></td>

<td><%=rs.getString("hairstyle")%></td>

<td><%=rs.getString("booking_date")%></td>
<td>

<%=rs.getString("request")%>

</td>


<td>

<%=rs.getString("status")%>

</td>


<td>

<a href=
"delete.jsp?id=<%=rs.getInt("id")%>">

<button class="delete-btn">

Delete

</button>

</a>

</td>


<td>

<a href=
"status.jsp?id=<%=rs.getInt("id")%>">

<button class="status-btn">

Approve

</button>

</a>

</td>
</tr>

<%

}

%>

</table>

</body>
</html>