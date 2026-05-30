

<%

String selected=
request.getParameter("service");

%>


<!DOCTYPE html>
<html>
<head>

<title>Book Appointment</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<div class="appointment-container">

<div class="appointment-left">

<h1>Book Your Appointment</h1>

<p>
GlowBeauty luxury salon experience awaits you.
Choose your hairstyle and reserve your slot.
</p>

<img src="images/purplemodel.png">

</div>


<div class="appointment-right">

<form action="BookServlet" method="post">

<input type="text"

name="name"

placeholder="Your Name"

required>

<input type="email"

name="email"

placeholder="Email Address"

required>


<input type="tel"

name="phone"

placeholder="Phone Number"

required>

<select name="hairstyle" required>

<optgroup label="Hair Styling">

<option>Long Layers</option>
<option>Side Bangs</option>
<option>Soft Waves</option>

</optgroup>


<optgroup label="Makeup">

<option>Traditional Bridal</option>
<option>HD Bridal</option>
<option>Airbrush Bridal</option>
<option>Soft Glam</option>

</optgroup>


<optgroup label="Facial & Skincare">

<option>Gold Facial</option>
<option>Diamond Facial</option>
<option>Acne Control</option>
<option>Collagen Boost</option>

</optgroup>


<optgroup label="Spa & Massage">

<option>Aroma Massage</option>
<option>Deep Tissue Massage</option>
<option>Royal Spa Ritual</option>
<option>Couple Spa</option>

</optgroup>

</select>

<input type="date"

name="date"

required>

<textarea

name="request"

placeholder="Special Request">

</textarea>

<button>

Confirm Booking

</button>

</form>

</div>

</div>

</body>


</html>