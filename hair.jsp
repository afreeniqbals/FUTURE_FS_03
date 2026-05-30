<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Hair Styling | GlowBeauty Salon</title>

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

<li><a href="hair.jsp">Hair Styling</a></li>

</ul>

</nav>





<section class="hair-hero">

<div class="hero-left">

<span>✨ Welcome to GlowBeauty Salon</span>

<h1>Hair Styling Guide</h1>

<p>
Find hairstyles that perfectly suit your face shape.
</p>

<button onclick="location.href='#styles'">

Explore Styles →

</button>

</div>


<div class="hero-right">

<img src="images/purplemodel.png">

</div>

</section>






<section class="face-shapes" id="styles">

<div class="face-card">

<img src="images/roundface.jpg" class="face-img">

<h2>Round Face</h2>

<div class="style-item">

<img src="images/longlayers.jpg">

<p>Long Layers — ₹999</p>

<button class="style-btn">
View Details
</button>

</div>

<div class="style-item">

<img src="images/sidebangs.jpg">

<p>Side Bangs — ₹799</p>

<button class="style-btn">
View Details
</button>


</div>

<div class="style-item">

<img src="images/softwaves.jpg">

<p>Soft Waves — ₹1499</p>

<button class="style-btn">
View Details
</button>


</div>


</div>

<div class="face-card">

<img src="images/ovalface.jpg" class="face-img">

<h2>Oval Face</h2>

<div class="style-item">

<img src="images/bobcut.jpg">

<p>Bob Cut — ₹899</p>


<button class="style-btn">
View Details
</button>
</div>



<div class="style-item">

<img src="images/curtainbangs.jpg">

<p>Curtain Bangs — ₹1199</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/beachwaves.jpg">

<p>Beach Waves — ₹1799</p>


<button class="style-btn">
View Details
</button>
</div>

</div>


<div class="face-card">

<img src="images/squareface.png" class="face-img">

<h2>Square Face</h2>

<div class="style-item">

<img src="images/layeredbob.jpg">

<p>Layered Bob — ₹1099</p>



<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/wispybangs.jpg">

<p>Wispy Bangs — ₹899</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/loosecurls.jpg">

<p>Loose Curls — ₹1599</p>


<button class="style-btn">
View Details
</button>
</div>


</div>



<div class="face-card">

<img src="images/heartface.png" class="face-img">

<h2>Heart Face</h2>


<div class="style-item">

<img src="images/sidesweptbangs.jpg">

<p>Side Swept Bangs — ₹999</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/longwaves.jpg">

<p>Long Waves — ₹1399</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/texturedlob.jpg">

<p>Textured Lob — ₹1699</p>


<button class="style-btn">
View Details
</button>
</div>

</div>



</section>


<div class="popup-box" id="stylePopup">

<div class="popup-content">

<span class="close-btn">&times;</span>

<img src="images/longlayers.jpg">

<h2>Long Layers</h2>

<p><b>Price:</b> ₹999</p>

<p><b>Best For:</b> Round Face</p>

<p>
Soft layered haircut adding movement,
volume and elegant styling.
</p>

<button onclick="window.location.href='appointment.jsp'">

Book Appointment

</button>

</div>

</div>


<div id="popup" class="popup">

<img id="popup-img">

</div>



<script>

const styleBtns=document.querySelectorAll('.style-btn');

const stylePopup=document.getElementById('stylePopup');

const closeBtn=document.querySelector('.close-btn');

styleBtns.forEach(btn=>{

btn.onclick=function(){

stylePopup.style.display="flex";

}

});

closeBtn.onclick=function(){

stylePopup.style.display="none";

}

</script>



</body>
</html>