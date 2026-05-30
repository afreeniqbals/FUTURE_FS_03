<!DOCTYPE html>
<html>
<head>

<title>Admin Login</title>

<link rel="stylesheet"
href="style.css">

</head>

<body>

<div class="login-container">






<div class="login-left">

<div class="login-logo">

GlowBeauty Salon

</div>


<h1>Admin Login</h1>

<p>

GlowBeauty Salon Dashboard Access

</p>

<form
action="LoginServlet"
method="post">

<input
type="text"
name="username"
placeholder="Username"
required>

<input
type="password"
name="password"
placeholder="Password"
required>

<button>

Login

</button>

</form>

</div>



<div class="login-right">

<img src="images/loginmodel.jpg">

</div>

</div>

</body>
</html>