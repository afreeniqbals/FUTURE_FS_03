<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Facial & Skincare Collection | GlowBeauty Salon</title>

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

<h1>Facial & Skincare Collection </h1>

<p>
Discover radiant skin,
deep nourishment and luxury treatments.
</p>

<button onclick="location.href='#styles'">

Explore Styles →

</button>

</div>


<div class="hero-right">

<img src="images/facialmodel.png">

</div>

</section>






<section class="face-shapes" id="styles">

<div class="face-card">

<img src="images/glowfacial.jpg"
class="face-img">

<h2>Glow Facial ✨</h2>

<div class="style-item">

<img src="images/goldfacial.jpg">

<p>

Gold Facial — ₹1499

</p>

<button class="style-btn">

View Details

</button>

</div>


<div class="style-item">

<img src="images/diamondfacial.jpg">

<p>

Diamond Facial — ₹1999

</p>

<button class="style-btn">

View Details

</button>

</div>




<div class="style-item">

<img src="images/bridalglow.jpg">

<p>

Bridal Glow Facial — ₹2499

</p>

<button class="style-btn">

View Details

</button>

</div>




</div>





<div class="face-card">

<img src="images/acnecare.jpg" class="face-img">

<h2>Acne Care Facial 🌿</h2>

<div class="style-item">

<img src="images/acnecontrol.jpg">

<p>Acne Control — ₹1799</p>


<button class="style-btn">
View Details
</button>
</div>



<div class="style-item">

<img src="images/deepclean.jpg">

<p>Deep Clean Facial — ₹1599</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/oilbalance.jpg">

<p>Oil Balance Treatment — ₹1899</p>


<button class="style-btn">
View Details
</button>
</div>

</div>


<div class="face-card">

<img src="images/antiaging.jpg" class="face-img">

<h2>Anti-Aging Facial 💎</h2>

<div class="style-item">

<img src="images/collagenboost.jpg">

<p>Collagen Boost — ₹2999</p>



<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/skintightening.jpg">

<p>Skin Tightening — ₹3499</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/vitaminc.jpg">

<p>Vitamin C Facial — ₹2299</p>


<button class="style-btn">
View Details
</button>
</div>


</div>



<div class="face-card">

<img src="images/luxuryspa.jpg" class="face-img">

<h2>Luxury Spa Facial 🌸</h2>


<div class="style-item">

<img src="images/aromatherapy.jpg">

<p>Aroma Therapy Facial — ₹2799</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/pearlfacial.jpg">

<p>Pearl Facial — ₹2499</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/royalglow.jpg">

<p>Royal Glow Therapy — ₹3999</p>


<button class="style-btn">
View Details
</button>
</div>

</div>



</section>


<div class="popup-box" id="stylePopup">

<div class="popup-content">

<span class="close-btn">&times;</span>

<img id="detail-img">

<h2 id="detail-title"></h2>

<p id="detail-price"></p>

<button id="bookBtn">

Book Appointment

</button>

</div>

</div>


<div id="popup" class="popup">

<img id="popup-img">

</div>


<script>

// IMAGE POPUP

const images=document.querySelectorAll('.style-item img');

const popup=document.getElementById('popup');

const popupImg=document.getElementById('popup-img');

images.forEach(img=>{

img.onclick=function(){

popup.style.display="flex";

popupImg.src=this.src;

}

});

popup.onclick=function(){

popup.style.display="none";

}



// VIEW DETAILS POPUP

const styleBtns=document.querySelectorAll('.style-btn');

const stylePopup=document.getElementById('stylePopup');

const closeBtn=document.querySelector('.close-btn');

const detailImg=document.getElementById('detail-img');

const detailTitle=document.getElementById('detail-title');

const detailPrice=document.getElementById('detail-price');


styleBtns.forEach(btn=>{

btn.onclick=function(){

const styleItem=this.parentElement;

const img=styleItem.querySelector('img').src;

const title=styleItem.querySelector('p').innerText;

detailImg.src=img;

detailTitle.innerText=title;

detailPrice.innerText=title;

document.getElementById(
		'bookBtn'
		).onclick=function(){

		window.location.href=
		'appointment.jsp?service='+

		encodeURIComponent(title);

		}

stylePopup.style.display="flex";

}

});


closeBtn.onclick=function(){

stylePopup.style.display="none";

}

</script>

</body>
</html>