<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>As-Salam Management System</title>
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="css/swiper-bundle.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
  <script src="js/jquery.js"></script> 
</head>
<body>

  <header>
        <div class="container">
            <input type="checkbox" name="" id="check">
            
            <div class="logo-container">
                <img src="images/logo.png" class="logo" width="30" height="30"></img>
            </div>

            <div class="nav-btn">
                <div class="nav-links">
                    <ul>
                        <li class="nav-link" style="--i: .6s">
                            <a href="#">Home</a>
                        </li>
                        <li class="nav-link" style="--i: .85s">
                            <a href="#">Donation<i class="fas fa-caret-down"></i></a>
                            <div class="dropdown">
                                <ul>                      
                                    <li class="dropdown-link">
                                        <a href="#view1">View</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-link" style="--i: 1.1s">
                            <a href="#">Events<i class="fas fa-caret-down"></i></a>
                            <div class="dropdown">
                                <ul>
                                    
                                    <li class="dropdown-link">
                                        <a href="#view2">View</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-link" style="--i: 1.35s">
                            <a href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>

                <div class="log-sign" style="--i: 1.8s">
                	<div style="color:white">Admin?&nbsp;&nbsp;</div>
                    <a href="user.jsp" class="btn transparent">Log in</a>
                </div>
            </div>

            <div class="hamburger-menu-container">
                <div class="hamburger-menu">
                    <div></div>
                </div>
            </div>
        </div>
    </header>

  <section class="home">
    <div class="media-icons">
      <a href="#"><i class="uil uil-facebook-f"></i></a>
      <a href="#"><i class="uil uil-instagram"></i></a>
      <a href="#"><i class="uil uil-twitter"></i></a>
    </div>

    <div class="swiper bg-slider">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="images/bg.jpg" alt="">
          <div class="text-content">
            <h2 class="title">Welcome <span>Ramadan Kareem!</span></h2>
            <p>„« Ì’Ì» «·„”·„ „‰ ‰’» Ê·« Ê’» Ê·« Â„¯ Ê·« Õ“‰ Ê·« √–Ï Ê·« €„¯ - Õ Ï «·‘Êﬂ… Ì‘«ﬂÂ« - ≈·« ﬂ›¯— «··Â »Â« „ˆ‰ Œÿ«Ì«Â
<br>No fatigue, disease, sorrow, sadness, hurt or distress befalls a Muslim - not even the prick he receives from a thorn - except that Allah expiates some of his sins because of it.<br><br>(Sahih al-Bukhari, Book 70, #545)</p>
            <button class="read-btn" onclick="location.href='#view2'">Read More <i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
        <div class="swiper-slide dark-layer">
          <img src="images/bg1.jpg" alt="">
          <div class="text-content">
            <h2 class="title">Welcome <span>Sending wishes for a peaceful Ramadan</span></h2>
            <p>Whoever treads a path seeking knowledge, Allah will make easy for him the path to Paradise.

<br><br>(reported by Ibn Majah and others, fulfilling the conditions of Imam al Bukhari and Imam Muslim)</p>
            <button class="read-btn" onclick="location.href='#view2'">Read More <i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
        <div class="swiper-slide dark-layer">
          <img src="images/event1.jpg" alt="">
          <div class="text-content">
            <h2 class="title">Welcome <span>May Ramadan bring you prosperity and joy</span></h2>
            <p>A charity is due for every joint in each person on every day the sun comes up: to act justly between two people is a charity; to help a man with his mount, lifting him onto it or hoisting up his belongings onto it, is a charity; a good word is a charity; and removing a harmful thing from the road is a charity. <br><br>(Al-Bukhari, Muslim)</p>
            <button class="read-btn" onclick="location.href='#view2'">Read More <i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
        <div class="swiper-slide">
          <img src="images/bg3.jpg" alt="">
          <div class="text-content">
            <h2 class="title">Welcome <span>Wishing you a healthy and holy fast</span></h2>
            <p>„« Ì’Ì» «·„”·„ „‰ ‰’» Ê·« Ê’» Ê·« Â„¯ Ê·« Õ“‰ Ê·« √–Ï Ê·« €„¯ - Õ Ï «·‘Êﬂ… Ì‘«ﬂÂ« - ≈·« ﬂ›¯— «··Â »Â« „ˆ‰ Œÿ«Ì«Â
<br>No fatigue, disease, sorrow, sadness, hurt or distress befalls a Muslim - not even the prick he receives from a thorn - except that Allah expiates some of his sins because of it.<br><br>(Sahih al-Bukhari, Book 70, #545)</p>
            <button class="read-btn" onclick="location.href='#view2'">Read More <i class="uil uil-arrow-right"></i></button>
          </div>
        </div>
      </div>
    </div>
    
    <div class="bg-slider-thumbs">
      <div class="swiper-wrapper thumbs-container">
        <img src="images/bg.jpg" class="swiper-slide" alt="">
        <img src="images/bg1.jpg" class="swiper-slide" alt="">
        <img src="images/event1.jpg" class="swiper-slide" alt="">
        <img src="images/bg3.jpg" class="swiper-slide" alt="">
      </div>
    </div>
  </section>

  
  <section class="donation" id="view1">
    <h2>Donation</h2>
    <hr class="rounded">
    <!-- Donation Section -->
    <p class="w3-opacity"><i>ìSedekah dapat menghapus dosa sebagaimana air memadamkan api.î <br>(Riwayat al-Tirmizi)</i></p>
    
    <div class="container-button">
  				<div class="center-button">
    				<button onclick="location.href='ListDonationServletUser'">&nbsp;View Donation&nbsp;</button>
  				</div>
			</div>
    
<div class="cardsmain">

 <!--cards -->

<div class="card">

<div class="image">
   <img src="images/derma1.png">
</div>
<div class="title">
 <h1>
Derma Anak Yatim</h1>
</div>
<div class="des">
 <p>Rumah Anak Yatim Kg. Baru</p>
<button onclick="location.href='ListDonationServletUser'">Read More</button>
</div>
</div>
<!--cards -->


<div class="card">

<div class="image">
   <img src="images/derma2.png">
</div>
<div class="title">
 <h1>
Tabung Bencana</h1>
</div>
<div class="des">
 <p>Mangsa Banjir Kg. Baru</p>
<button onclick="location.href='ListDonationServletUser'">Read More</button>
</div>
</div>
<!--cards -->


<div class="card">

<div class="image">
   <img src="images/derma3.jpg">
</div>
<div class="title">
 <h1>
Tabung Palestin</h1>
</div>
<div class="des">
 <p>Aman Palestin</p>
<button onclick="location.href='ListDonationServletUser'">Read More</button>
</div>
</div>
<!--cards -->

<div class="card">

<div class="image">
   <img src="images/iftar.jpg">
</div>
<div class="title">
 <h1>
Tabung Iftar</h1>
</div>
<div class="des">
 <p>Iftar di Masjid</p>
<button onclick="location.href='ListDonationServletUser'">Read More</button>
</div>
</div>
</div>

  </section>
  
  <section class="events" id="view2">
    <h2>Events</h2>
    <hr class="rounded2">
    <!-- Events Section -->
      <p class="w3-opacity w3-center"><i>ìSesiapa yang ingin dipermudahkan rezekinya dan ditangguhkan ajalnya (dipanjangkan umurnya) maka hendaklah dia menyambungkan tali silaturahim.î <br>(Hadis riwayat Bukhari dan Muslim)</i></p>
      
      <div class="container-button">
  				<div class="center-button">
  					<button onclick="location.href='ListEventServletUser'">&nbsp;View Events&nbsp;</button>
  				</div>
			</div>

<div class="cardsmain">

 <!--cards -->

<div class="card">

<div class="image">
   <img src="images/event2.jpg">
</div>
<div class="title">
 <h1>
Ceramah</h1>
</div>
<div class="des">
 <p>24 August 2022</p>
<button onclick="location.href='ListEventServletUser'">Read More</button>
</div>
</div>
<!--cards -->


<div class="card">

<div class="image">
   <img src="images/event3.jpg">
</div>
<div class="title">
 <h1>
Ceramah</h1>
</div>
<div class="des">
 <p>26 August 2022</p>
<button onclick="location.href='ListEventServletUser'">Read More</button>
</div>
</div>
<!--cards -->


<div class="card">

<div class="image">
   <img src="images/event4.jpg">
</div>
<div class="title">
 <h1>
Bacaan Yasin</h1>
</div>
<div class="des">
 <p>27 August 2022</p>
<button onclick="location.href='ListEventServletUser'">Read More</button>
</div>
</div>
<!--cards -->

<div class="card">

<div class="image">
   <img src="images/event5.jpg">
</div>
<div class="title">
 <h1>
Iftar bersama YB</h1>
</div>
<div class="des">
 <p>28 Ausgust 2022</p>
<button onclick="location.href='ListEventServletUser'">Read More</button>
</div>
</div>
</div>

    </section>
    
    <div class="body" id="contact">
    <!--contact section start-->
    <div class="contact-section">
      <div class="contact-info">
        <div><i class="fas fa-map-marker-alt"></i>Shah Alam, Selangor D.E.</div>
        <div><i class="fas fa-envelope"></i>salam@email.com</div>
        <div><i class="fas fa-phone"></i>+03 2468 123 456</div>
        <div><i class="fas fa-clock"></i>Mon - Fri 8:00 AM to 5:00 PM</div>
      </div>
      <div class="contact-form">
        <h2>Contact Us</h2>
        <form class="contact" action="" method="post">
          <input type="text" class="text-box" placeholder="Your Name" required>
          <input type="text" class="text-box" placeholder="Your Email" required>
          <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
          <input type="submit" name="submit" class="send-btn" value="Send">
        </form>
      </div>
    </div>
    <!--contact section end-->
    </div>
  
 
  <script src="js/swiper-bundle.min.js"></script>
  <script src="js/main.js"></script>

</body>
</html>