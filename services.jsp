<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Services | GlowBeauty Salon</title>

<link rel="stylesheet" href="style.css">

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

</ul>

</nav>

<section class="services-page-hero">

<h1>Luxury Beauty Services</h1>

<p>
Premium salon experiences crafted for elegance,
confidence and beauty.
</p>

<button class="services-btn"

onclick="location.href='#services'">

Explore Services

</button>

</section>




<section class="services-list" id="services">

<h2>Our Premium Services</h2>

<div class="services-grid">




<div class="service-box">

<img src="images/hairservice.jpg" class="service-img">

<h3>✂ Hair Styling</h3>

<p>
Luxury haircut, coloring,
smoothening and bridal styling.
</p>

<span class="service-price">

Starting ₹999

</span>

<button onclick="window.location.href='hair.jsp'">

View Details

</button>

</div>






<div class="service-box">

<img src="images/makeupervice.jpg" class="service-img">

<h3> 💄 Makeup</h3>
<p>Professional bridal, party and glamour makeup services.</p>

<span class="service-price">

Starting ₹1000

</span>

<button

onclick="window.location.href='makeup.jsp'">

View Details

</button>
</div>








<div class="service-box">

<img src="images/facialservice.jpg" class="service-img">

<h3>✨ Facial & Skincare</h3>
<p>Glow facials, skin treatments and premium skincare.</p>

<span class="service-price">

Starting ₹500

</span>

<button

onclick="window.location.href='facial.jsp'">

View Details

</button>
</div>






<div class="service-box">

<img src="images/spaservice.jpg" class="service-img">

<h3>Spa & Massage</h3>
<p>Relaxing massage, spa rituals and wellness therapies.</p>

<span class="service-price">

Starting ₹1200

</span>

<button

onclick="window.location.href='spa.jsp'">

View Details

</button>
</div>

</div>

</section>





<section class="pricing">

<h2>Our Pricing</h2>

<div class="pricing-grid">

<div class="price-card">

<h3>Hair Styling</h3>

<h1>₹999</h1>

<p>Haircut + Styling + Wash</p>

<button>Book Now</button>

</div>


<div class="price-card">

<h3>Makeup</h3>

<h1>₹2499</h1>

<p>Party / Bridal Makeup</p>

<button>Book Now</button>

</div>


<div class="price-card">

<h3>Facial</h3>

<h1>₹1499</h1>

<p>Premium Glow Treatment</p>

<button>Book Now</button>

</div>

</div>

</section>






</body>
</html>