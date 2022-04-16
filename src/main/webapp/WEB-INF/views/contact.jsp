<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>TravelZen</title>
<link rel="stylesheet" href="/style.css">
<style><%@ include file="style.css"%></style>
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
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="util.css">
	<style><%@ include file="util.css"%></style>
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<style>
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

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title" style="color: #9e3026;">
					Envoie-nous un message
				</span>

				<label class="label-input100" for="first-name">Nom Complet *</label>
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
					<input id="first-name" class="input100" type="text" name="first-name" placeholder="Prénom">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
					<input class="input100" type="text" name="last-name" placeholder="Nom">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="email">Adresse Email *</label>
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com">
					<span class="focus-input100"></span>
				</div>


				<label class="label-input100" for="message">Message *</label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<textarea id="message" class="input100" name="message" placeholder="écrivez-nous un message"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" style="background-color: #9e3026;">
						Envoyer le Message
					</button>
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('${pageContext.request.contextPath}/img/contact.jpg');">
				<div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
						  <!-- Site footer -->
    <footer class="site-footer" >
      <div class="container" >
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify" style="color: #fff;">Travelzen.com ..........................</p>
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
            <p class="copyright-text" style="color: #fff;">Copyright &copy; 2022 Tous droits reservés par 
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