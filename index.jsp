<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>GlowBeauty Salon</title>
    <link rel="stylesheet" href="style.css">
   
</head>
<body>

			<nav class="navbar">

    <div class="logo">
        GlowBeauty Salon
    </div>

    <ul class="nav-links">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="services.jsp">services</a></li>
        <li><a href="gallery.jsp">Gallery</a></li>
        <li><a href="appointment.jsp">Appointment</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="login.jsp">Login</a></li>
        
      
        
    </ul>

</nav>






<section class="hero">

<div class="hero-text">

<span class="small-title">
GLOWBEAUTY SALON
</span>

<h1>
Reveal Your <br>
<span>Signature</span> Beauty
</h1>

<p>
Luxury salon experiences, expert styling,
skincare, makeup and beauty crafted
to elevate your confidence.
</p>

<button class="hero-btn">
Book Luxury Experience →
</button>

<div class="stats">

<div class="stat-card">
<h3>10K+</h3>
<p>Happy Clients</p>
</div>

<div class="stat-card">
<h3>15+</h3>
<p>Years Experience</p>
</div>

<div class="stat-card">
<h3>50+</h3>
<p>Expert Stylists</p>
</div>

</div>

</div>



</section>





<section class="features">

<div class="feature-card">

<h3>Premium Products</h3>

<p>
We use only luxury quality beauty products.
</p>

</div>

<div class="feature-card">

<h3>Expert Stylists</h3>

<p>
Certified professionals with creative styling.
</p>

</div>

<div class="feature-card">

<h3>Luxury Experience</h3>

<p>
Relax and enjoy a premium salon atmosphere.
</p>

</div>

<div class="feature-card">

<h3>Beauty Redefined</h3>

<p>
Enhancing your natural beauty effortlessly.
</p>

</div>

</section>














<section class="services">

    <h2>Our Services</h2>

    <div class="service-container">

       <div class="service-card">

<div class="service-icon">
✂️
</div>

<h3>Hair Styling</h3>

<p>
Professional haircut, coloring and styling.
</p>

</div>
       
       
        <div class="service-card">
        
        <div class="service-icon">
💄
</div>
            <h3>Makeup</h3>
            <p>Luxury bridal, party and professional makeup.</p>
        </div>

        <div class="service-card">
        
        <div class="service-icon">
✨
</div>

            <h3>Facial & Skincare</h3>
            <p>Glow treatments and premium skincare care.</p>
        </div>

        <div class="service-card">
        
        <div class="service-icon">
🌸
</div>

            <h3>Spa & Massage</h3>
            <p>Relaxing body spa and wellness therapies.</p>
        </div>

    </div>

</section>




<section class="appointment">

<h2>Book Your Appointment</h2>

<div class="appointment-box">

<input type="text" placeholder="Your Name">

<input type="email" placeholder="Email Address">

<input type="tel" placeholder="Phone Number">

<select>
<option>Select Service</option>
<option>Hair Styling</option>
<option>Makeup</option>
<option>Facial & Skincare</option>
<option>Spa & Massage</option>
</select>

<input type="date">

<textarea placeholder="Special Request"></textarea>

<button>Book Appointment</button>

</div>

</section>







<section class="testimonials">

<h2>Client Reviews</h2>

<div class="testimonial-container">

<div class="testimonial-card">
<img src="images/client1.jpg">
<h3>Sarah Khan</h3>
<p>
“Absolutely amazing experience! My hair and makeup looked perfect.”
</p>
<span>★★★★★</span>
</div>

<div class="testimonial-card">
<img src="images/client2.jpg">
<h3>Emily Rose</h3>
<p>
“Luxury atmosphere, professional staff and beautiful results.”
</p>
<span>★★★★★</span>
</div>

<div class="testimonial-card">
<img src="images/client3.jpg">
<h3>Aisha Patel</h3>
<p>
“Best spa and facial service I’ve ever experienced.”
</p>
<span>★★★★★</span>
</div>

</div>

</section>





<section class="gallery-section">

<h2>Beauty Gallery</h2>

<div class="gallery">

<img src="images/g1.jpg">
<img src="images/g2.jpg">
<img src="images/g3.jpg">
<img src="images/g4.jpg">

</div>

</section>




<section class="cta">

<h2>Ready For Your Luxury Makeover?</h2>

<p>
Book your appointment today and enjoy premium beauty services.
</p>

<button
onclick="document.querySelector('.appointment')
.scrollIntoView({behavior:'smooth'})">

Book Appointment

</button>

</section>

		
		
		<footer class="footer">

<div class="footer-container">

<div class="footer-box">

<h3>GlowBeauty Salon</h3>

<p>
Luxury beauty, skincare, makeup and styling
crafted for your confidence.
</p>

</div>

<div class="footer-box">

<h3>Quick Links</h3>

<a href="#">Home</a>
<a href="#">Services</a>
<a href="#">Gallery</a>
<a href="#">Appointment</a>

</div>






<div class="footer-box">

<h3>Contact</h3>

<p>📍 Pune, India</p>

<p>📞 +91 9876543210</p>

<p>✉️ glowbeauty@gmail.com</p>

</div>

<div class="footer-box">

<h3>Follow Us</h3>

<div class="socials">

<a href="#">📷</a>

<a href="#">📘</a>

<a href="#">🐦</a>

<a href="#">▶️</a>

</div>

</div>

</div>

<hr>

<p class="copyright">
© 2026 GlowBeauty Salon | All Rights Reserved
</p>

</footer>



</body>
</html>