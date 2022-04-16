<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>TravelZen</title>
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;

  overflow-x: hidden; /* Hide horizontal scrollbar */
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  margin-bottom: 16px;
  padding: 0 8px;
  height: 20vh;
      
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #9e3026;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.wrapper nav{
  position: relative;
  display: flex;
  max-width: calc(100% - 200px);
  margin: 0 auto;
  height: 70px;
  align-items: center;
  justify-content: space-between;
  

}
nav .content{
  display: flex;
  align-items: center;
}
nav .content .links{
  margin-left: 190px;
  display: flex;
  
}
.content .logo img{
  width: 130px;
  height: 80px;
}
.content .links li{
  list-style: none;
  line-height: 70px;
  
}
.content .links li a,
.content .links li label{
  color: #9e3026;
  font-size: 18px;
  font-weight: 500;
  padding: 9px 17px;
  border-radius: 5px;
  transition: all 0.3s ease;
  font-family: Gill Sans, sans-serif;
  position: relative;
  top: 10px;
  text-decoration: none;

}
.content .links li label{
  display: none;
  
}
.content .links li a:hover,
.content .links li label:hover{
  background: #9e3026;
  color: #fff;
}
.wrapper .search-icon,
.wrapper .menu-icon{
  color: #9e3026;
  font-size: 18px;
  cursor: pointer;
  line-height: 70px;
  width: 70px;
  text-align: center;
}
.wrapper .menu-icon{
  display: none;
}
.wrapper #show-search:checked ~ .search-icon i::before{
  content: "\f00d";
}
.wrapper .search-box{
  position: absolute;
  height: 100%;
  max-width: calc(100% - 50px);
  width: 100%;
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s ease;
}
.wrapper #show-search:checked ~ .search-box{
  opacity: 1;
  pointer-events: auto;
}
.search-box input{
  width: 100%;
  height: 100%;
  border: none;
  outline: none;
  font-size: 17px;
  color: #fff;
  background: #171c24;
  padding: 0 100px 0 15px;
}
.search-box input::placeholder{
  color: #f2f2f2;
}
.search-box .go-icon{
  position: absolute;
  right: 10px;
  top: 50%;
  transform: translateY(-50%);
  line-height: 60px;
  width: 70px;
  background: #171c24;
  border: none;
  outline: none;
  color: #fff;
  font-size: 20px;
  cursor: pointer;
}
.wrapper input[type="checkbox"]{
  display: none;
}
/* Dropdown Menu code start */
.content .links ul{
  position: absolute;
  background: #171c24;
  top: 80px;
  z-index: -1;
  opacity: 0;
  visibility: hidden;
}
.content .links li:hover > ul{
  top: 70px;
  opacity: 1;
  visibility: visible;
  transition: all 0.3s ease;
}
.content .links ul li a{
  display: block;
  width: 100%;
  line-height: 30px;
  border-radius: 0px!important;
}
.content .links ul ul{
  position: absolute;
  top: 0;
  right: calc(-100% + 8px);
}
.content .links ul li{
  position: relative;
}
.content .links ul li:hover ul{
  top: 0;
}
/* Responsive code start */
@media screen and (max-width: 1250px){
  .wrapper nav{
    max-width: 100%;
    padding: 0 20px;
  }
  nav .content .links{
    margin-left: 30px;
  }
  .content .links li a{
    padding: 8px 13px;
  }
  .wrapper .search-box{
    max-width: calc(100% - 100px);
  }
  .wrapper .search-box input{
    padding: 0 100px 0 15px;
  }
}
@media screen and (max-width: 900px){
  .wrapper .menu-icon{
    display: block;
  }
  .wrapper #show-menu:checked ~ .menu-icon i::before{
    content: "\f00d";
  }
  nav .content .links{
    display: block;
    position: fixed;
    background: #fff;
    height: 100%;
    width: 100%;
    top: 70px;
    left: -100%;
    margin-left: 0;
    max-width: 220px;
    overflow-y: auto;
    padding-bottom: 100px;
    transition: all 0.3s ease;
  }
  nav #show-menu:checked ~ .content .links{
    left: 0%;
  }
  .content .links li{
    margin: 15px 20px;
  }
  .content .links li a,
  .content .links li label{
    line-height: 40px;
    font-size: 20px;
    display: block;
    padding: 8px 18px;
    cursor: pointer;
  }
  .content .links li a.desktop-link{
    display: none;
  }
  /* dropdown responsive code start */
  .content .links ul,
  .content .links ul ul{
    position: static;
    opacity: 1;
    visibility: visible;
    background: none;
    max-height: 0px;
    overflow: hidden;
  }
  .content .links #show-features:checked ~ ul,
  .content .links #show-services:checked ~ ul,
  .content .links #show-items:checked ~ ul{
    max-height: 100vh;
  }
  .content .links ul li{
    margin: 7px 20px;
  }
  .content .links ul li a{
    font-size: 18px;
    line-height: 30px;
    border-radius: 5px!important;
  }
}
@media screen and (max-width: 400px){
  .wrapper nav{
    padding: 0 10px;
  }
  .content .logo a{
    font-size: 27px;
  }
  .wrapper .search-box{
    max-width: calc(100% - 70px);
  }
  .wrapper .search-box .go-icon{
    width: 30px;
    right: 0;
  }
  .wrapper .search-box input{
    padding-right: 30px;
  }
}
.dummy-text{
  position: absolute;
  top: 50%;
  left: 50%;
  width: 100%;
  z-index: -1;
  padding: 0 20px;
  text-align: center;
  transform: translate(-50%, -50%);
}
.dummy-text h2{
  font-size: 45px;
  margin: 5px 0;
}
.button-header{
	width: 210px;
	height: 45px;
	background-color: #9e3026;
  border: none;
  color: #fff;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius: 5px;
}
.site-footer
{
  background-color:#9e3026;
  padding:45px 0 20px;
  font-size:15px;
  line-height:24px;
  color:#fff;
}
.site-footer hr
{
  border-top-color:#bbb;
  opacity:0.5
}
.site-footer hr.small
{
  margin:20px 0
}
.site-footer h6
{
  color:#fff;
  font-size:16px;
  text-transform:uppercase;
  margin-top:5px;
  letter-spacing:2px
}
.site-footer a
{
  color: #fff;;
}
.site-footer a:hover
{
  color:#fff;
  font-weight: bold;
}
.footer-links
{
  padding-left:0;
  list-style:none
}
.footer-links li
{
  display:block
}
.footer-links a
{
  color:#fff;
}
.footer-links a:active,.footer-links a:focus,.footer-links a:hover
{
  color:#fff;
  font-weight: bold;
}
.footer-links.inline li
{
  display:inline-block
}
.site-footer .social-icons
{
  text-align:right
}
.site-footer .social-icons a
{
  width:40px;
  height:40px;
  line-height:40px;
  margin-left:6px;
  margin-right:0;
  border-radius:100%;
  background-color:#fff
}
.copyright-text
{
  margin:0
}
@media (max-width:991px)
{
  .site-footer [class^=col-]
  {
    margin-bottom:30px
  }
}
@media (max-width:767px)
{
  .site-footer
  {
    padding-bottom:0
  }
  .site-footer .copyright-text,.site-footer .social-icons
  {
    text-align:center
  }
}
.social-icons
{
  padding-left:0;
  margin-bottom:0;
  list-style:none
}
.social-icons li
{
  display:inline-block;
  margin-bottom:4px
}
.social-icons li.title
{
  margin-right:15px;
  text-transform:uppercase;
  color:#96a2b2;
  font-weight:700;
  font-size:13px
}
.social-icons a{
  background-color:#eceeef;
  color:#818a91;
  font-size:16px;
  display:inline-block;
  line-height:44px;
  width:44px;
  height:44px;
  text-align:center;
  margin-right:8px;
  border-radius:100%;
  -webkit-transition:all .2s linear;
  -o-transition:all .2s linear;
  transition:all .2s linear
}
.social-icons a:active,.social-icons a:focus,.social-icons a:hover
{
  color:#fff;
  background-color:#29aafe
}
.social-icons.size-sm a
{
  line-height:34px;
  height:34px;
  width:34px;
  font-size:14px
}
.social-icons a.facebook:hover
{
  background-color:#3b5998
}
.social-icons a.twitter:hover
{
  background-color:#00aced
}
.social-icons a.linkedin:hover
{
  background-color:#007bb6
}
.social-icons a.dribbble:hover
{
  background-color:#ea4c89
}
@media (max-width:767px)
{
  .social-icons li.title
  {
    display:block;
    margin-right:0;
    font-weight:600
  }
}
</style>

<link href="http://fonts.cdnfonts.com/css/gill-sans" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="colorlib.com">
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet" />
</head>
<body>
	 
	<!-- Header -->
	<div class="wrapper">
		<nav>
			<input type="checkbox" id="show-search"> <input
				type="checkbox" id="show-menu"> <label for="show-menu"
				class="menu-icon"><i class="fas fa-bars"></i></label>
			<div class="content">
				<div class="logo">
					<img src="${pageContext.request.contextPath}/img/logoOff.png">
				</div>
				<ul class="links">
					<li><a href="<%=request.getContextPath()%>/Home">Accueil</a></li>
					<li><a href="<%=request.getContextPath()%>/hotelList">Hotels</a></li>
					<li><a href="<%=request.getContextPath()%>/Service">Services</a></li>
					<li><a href="<%=request.getContextPath()%>/ContactServlet">Contact</a></li>
					<li><a href="<%=request.getContextPath()%>/NousServlet">Nous</a></li>
					
				</ul>
			</div>

				<form action="login">
				<button type="submit" class="button-header" >Espace propriétaires </button>
			</form>

		</nav>
		</div>
		
	<div class="about-section">
		  <h1>à propos de nous</h1>
		  <img  src="${pageContext.request.contextPath}/img/logo.png" style="width: 60%; height= auto;">
		  <p>Some text about who we are and what we do.</p>
		  <p>Resize the browser window to see that this page is responsive by the way.</p>
	</div>
	<div class="asa" style="width: 100%; height: auto;">
	<h2 style="text-align:center; padding-top: 20px; padding-bottom: 20px; ">Notre Groupe</h2>
		<div class="row" style="display: flex;     justify-content: center; text-align: center;">
		  <div class="column" style="width: 33%; height: 20vh;">
			    <div class="card">
				      <img src="${pageContext.request.contextPath}/img/moi.jpg" alt="Jane" style="width:100%; height: 60vh">
				      <div class="container">
				        <h2>Mehdi El-Bakkali</h2>
				        <p class="title">Etudiant à la faculé de Taroudant</p>
				        <p>mehdielbakkali7@gmail.com</p>
				        <p><button class="button" style="background-color: #9e3026">Contact</button></p>
				      </div>
			    </div>
	  	  </div>
	
	  	  <div class="column" style="width: 33%;height: 20vh;">
		    <div class="card">
		      <img src="${pageContext.request.contextPath}/img/abd.jpg"  alt="Mike" style="width:100 %; height: 60vh">
		      <div class="container">
		        <h2>Abdelali Ait Chikh</h2>
		        <p class="title">Etudiant à la faculé de Taroudant</p>
		        <p>abdelaliaitchikh00@gmail.com</p>
		        <p><button class="button" style="background-color: #9e3026">Contact</button></p>
		      </div>
		    </div>
	  	  </div> 
	</div>
	</div>


	  <!-- Site footer -->
    <footer class="site-footer" style="position: relative; top: 500px;">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Travelzen.com ..........................</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Ville</h6>
            <ul class="footer-links">
              <li><a href="">Dakhla</a></li>
              <li><a href="">Agadir</a></li>
              <li><a href="">Marrakech</a></li>
              <li><a href="">Casablanca</a></li>
              <li><a href="">Rabat</a></li>
              <li><a href="">Tanger</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Lien Rapide</h6>
            <ul class="footer-links">
              <li><a href="#">Nous</a></li>
              <li><a href="#">Contact</a></li>
              <li><a href="#">Service</a></li>
              <li><a href="#">Politique de confidentialité</a></li>
              <li><a href="#">Localisation</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2022 Tous droits reservés par 
         <a href="#">Mehdi El-Bakkali et Abdelali Ait Chikh</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class='bx bxl-google' style='color:#9e3026' ></i></a></li>
              <li><a class="twitter" href="#"><i class='bx bxl-instagram-alt' style='color:#9e3026' ></i></a></li>
              <li><a class="dribbble" href="#"><i class='bx bxl-facebook-circle' style='color:#9e3026' ></i></a></li>
              <li><a class="linkedin" href="#"><i class='bx bxl-linkedin' style='color:#9e3026'  ></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>	

</body>
</html>