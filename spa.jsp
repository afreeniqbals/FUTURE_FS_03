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

<h1>Spa & Massage Collection </h1>

<p>
Relax, refresh and rejuvenate
with our luxury wellness experiences.
</p>

<button onclick="location.href='#styles'">

Explore Styles →

</button>

</div>


<div class="hero-right">

<img src="images/spamodel.png">

</div>

</section>






<section class="face-shapes" id="styles">

<div class="face-card">

<img src="images/relaxationspa.jpg"
class="face-img">

<h2> Relaxation Spa 🌸</h2>

<div class="style-item">

<img src="images/aromamassage.jpg">

<p>

Aroma Massage — ₹2499

</p>

<button class="style-btn">

View Details

</button>

</div>


<div class="style-item">

<img src="images/lavendertherapy.jpg">

<p>

Lavender Therapy — ₹2999

</p>

<button class="style-btn">

View Details

</button>

</div>




<div class="style-item">

<img src="images/hotstone.jpg">

<p>

Hot Stone Relax — ₹3499

</p>

<button class="style-btn">

View Details

</button>

</div>




</div>





<div class="face-card">

<img src="images/bodywellness.jpg" class="face-img">

<h2>Body Wellness 💆‍♀️</h2>

<div class="style-item">

<img src="images/deeptissue.jpg">

<p>Deep Tissue Massage — ₹3999</p>


<button class="style-btn">
View Details
</button>
</div>



<div class="style-item">

<img src="images/swedishmassage.jpg">

<p>Swedish Massage — ₹2999</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/detoxtherapy.jpg">

<p>Detox Therapy — ₹3499</p>


<button class="style-btn">
View Details
</button>
</div>

</div>








<div class="face-card">

<img src="images/luxuryspaa.jpg" class="face-img">

<h2>Luxury Spa Ritual ✨</h2>

<div class="style-item">

<img src="images/royalspa.jpg">

<p>Royal Spa Ritual — ₹4999</p>



<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/candletherapy.jpg">

<p>Candle Therapy — ₹4299</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/goldbodyspa.jpg
">

<p>Gold Body Spa — ₹5999</p>


<button class="style-btn">
View Details
</button>
</div>


</div>



<div class="face-card">

<img src="images/couplesspa.jpg" class="face-img">

<h2>Couples Spa ❤️</h2>


<div class="style-item">

<img src="images/romanticspa.jpg">

<p>Romantic Spa — ₹6999</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/honeymoonspa.jpg">

<p>Honeymoon Relaxation — ₹7999</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/premiumcouple.jpg">

<p>Premium Couple Therapy — ₹8999</p>


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