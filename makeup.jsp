<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Makeup Collection | GlowBeauty Salon</title>

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

<h1>Makeup Collection </h1>

<p>
Discover luxury bridal, glam and party makeup looks.
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

<img src="images/bridalmakeup.jpg"
class="face-img">

<h2>Bridal Makeup</h2>

<div class="style-item">

<img src="images/traditionalbridal.jpg">

<p>

Traditional Bridal — ₹4999

</p>

<button class="style-btn">

View Details

</button>

</div>


<div class="style-item">

<img src="images/hdbridal.jpg">

<p>

HD Bridal — ₹6999

</p>

<button class="style-btn">

View Details

</button>

</div>




<div class="style-item">

<img src="images/airbrush.jpg">

<p>

airbrush Bridal — ₹6999

</p>

<button class="style-btn">

View Details

</button>

</div>




</div>





<div class="face-card">

<img src="images/partymakeup.jpg" class="face-img">

<h2>Party Makeup</h2>

<div class="style-item">

<img src="images/softglam.jpg">

<p>soft-glam — ₹899</p>


<button class="style-btn">
View Details
</button>
</div>



<div class="style-item">

<img src="images/smokeyeyes.jpg">

<p>Smokey-eyes — ₹1199</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/nudemakeup.jpg">

<p>Nude-Makeup — ₹1799</p>


<button class="style-btn">
View Details
</button>
</div>

</div>


<div class="face-card">

<img src="images/glammakeup.jpg" class="face-img">

<h2>Glam Makeup</h2>

<div class="style-item">

<img src="images/redcarpet.jpg">

<p>Red-Carpet— ₹1099</p>



<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/shimmerglow.jpg">

<p>Shimmer-glow — ₹899</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/celebrityglam.jpg">

<p>celebrity-glam — ₹1599</p>


<button class="style-btn">
View Details
</button>
</div>


</div>



<div class="face-card">

<img src="images/festivemakeup.jpg" class="face-img">

<h2>Festive-Makeup</h2>


<div class="style-item">

<img src="images/eidmakeup.jpg">

<p>Eid-Makeup — ₹999</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/weddingguest.jpg">

<p>wedding guest — ₹1399</p>


<button class="style-btn">
View Details
</button>
</div>

<div class="style-item">

<img src="images/receptionlook.jpg">

<p>Reception — ₹1699</p>


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