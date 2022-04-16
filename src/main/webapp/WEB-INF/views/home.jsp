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
</head>
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
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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
		<div style="height: 90vh; background-image: url('${pageContext.request.contextPath}/img/hotel3.jpg');background-size: cover; background-position: center; ">
		<!-- image-search -->
		<div class="image-accueil-backgound" style="position: relative; top: 130px;">
			<div class="s131">
				<form>
					<h1>Trouvez votre prochain destination</h1>
					<h3>Recherchez des offres sur des défferent catégories</h3>
					<div class="inner-form">
						<div class="input-field first-wrap">
							<input id="search" type="text"
								placeholder="What are you looking for?" />
						</div>
						<div class="input-field second-wrap">
							<div class="input-select">
								<select data-trigger="" name="choices-single-defaul">
									<option placeholder="Catégorie">Catégorie</option>
									<option>Hotels</option>
									<option>Restaurants</option>
									<option>Activité</option>
								</select>
							</div>
						</div>
						<div class="input-field third-wrap">
							<button class="btn-search" type="button">Chercher</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		</div>
		<!-- card-categories -->
		<div class="card-categories">
			<h1>Des expériences à  vivre pendant votre voyage</h1>
			<div class="container">
				<!-- Card deck -->
				<div class="card-deck row">
					<div class="col-xs-12 col-sm-6 col-md-4">
						<!-- Card -->
						<div class="card">
							<!--Card image-->
							<div class="view overlay">
								<img class="card-img-top" src="${pageContext.request.contextPath}/img/imgaccueilhotel.jpg"
									alt="Card image cap"> <a href="#!">
									<div class="mask rgba-white-slight"></div>
								</a>
							</div>

							<!--Card content-->
							<div class="card-body">
								<!--Title-->
								<h4 class="card-title">Des Hotels Traditionnel</h4>
								<!--Text-->
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
								<button type="button" class="btn btn-light-blue btn-md" style="background-color: #9e3026">Plus d'infos</button>
							</div>

						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-4">
						<!-- Card -->
						<div class="card mb-4">

							<!--Card image-->
							<div class="view overlay">
								<img class="card-img-top" src="${pageContext.request.contextPath}/img/hotelLux.jpg" alt="Card image cap">
								<a href="#!">
									<div class="mask rgba-white-slight"></div>
								</a>
							</div>

							<!--Card content-->
							<div class="card-body">

								<!--Title-->
								<h4 class="card-title">Des Hotels De Luxe</h4>
								<!--Text-->
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
								<button type="button" class="btn btn-light-blue btn-md" style="background-color: #9e3026">Plus d'infos</button>

							</div>

						</div>
						<!-- Card -->
					</div>

					<div class="col-xs-12 col-sm-6 col-md-4">
						<!-- Card -->
						<div class="card mb-4">

							<!--Card image-->
							<div class="view overlay">
								<img class="card-img-top" src="${pageContext.request.contextPath}/img/auberge.jpg" alt="Card image cap">
								<a href="#!">
									<div class="mask rgba-white-slight"></div>
								</a>
							</div>

							<!--Card content-->
							<div class="card-body">

								<!--Title-->
								<h4 class="card-title">Des Auberges Calme</h4>
								<!--Text-->
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
								<button type="button" class="btn btn-light-blue btn-md" style="background-color: #9e3026">Plus d'infos</button>

							</div>

						</div>
						<!-- Card -->
					</div>

					<!--propos TravelZen-->
					<div class="container mt-3">
						<div class="card img-fluid" style="width: 1300px">
							<img class="card-img-top" src="${pageContext.request.contextPath}/img/travelZeen.jpg" alt="Card image"
								style="width: 100%">
							<div class="card-img-overlay">
								<h1 id="titre-travelZen" style="color: white;">
									Des questions sur <br>les services de <br>TravelZen ?
									</h1>
									<a href="#" class="btn" id="button-voir-detail">Voir
										details</a>
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
					  <!-- Site footer -->
    <footer class="site-footer"style="position: relative; top: 900px;" >
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