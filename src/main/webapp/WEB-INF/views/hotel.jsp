<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Hote</title>
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
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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

<body style="background-color: #E4E9F7">

	<!-- Header -->
  <div class="wrapper">
    <nav>
      <input type="checkbox" id="show-search">
      <input type="checkbox" id="show-menu">
      <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
      <div class="content">
        <div class="logo"><img src="${pageContext.request.contextPath}/img/logoOff.png"></div>
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
    <!-- image-search -->
		
		<div class="image-accueil-backgound" style="background-color: #9e3026">
			<div class="s131">
				<form method="get">
					<div class="inner-form">
						<div class="input-field first-wrap">
							<input id="search" type="text" placeholder="Nom d'hotel" name ="name_hotel" />
						</div>
						<div class="input-field second-wrap">
							<input id="search" type="text" placeholder="Ville d'hotel" name ="ville_hotel" />
						</div>
						<div class="input-field third-wrap">
							<button class="btn-search" type="submit">Chercher</button>
					    </div>
					</div>
				</form>
			</div>		
		</div>
		
		<div class="div-pub" >
		
			<section class="home-section-dashboard-accueil">
				<c:forEach var="hotel" items="${listHotel}">
				        <div class="container-dashboard-hotel">
<c:if test="${hotel.id eq 0}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel6.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
        <c:if test="${hotel.id eq 1}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel5.jpg'); width: 35%; height: 425px; background-size: cover; background-position: center;"> </div>
        </c:if>
        <c:if test="${hotel.id eq 2}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel6.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
        <c:if test="${hotel.id eq 3}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel7.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
				            <div class="details-objet">
				              <div class="title-etoile">
				                <div class="title"> <h3><c:out value="${hotel.nom_hotel}" /></h3></div>
				              </div>
				              <div class="ville-hotel"><p>Ville de <c:out value="${hotel.ville_hotel}" /></p><p>&nbsp; - &nbsp; </p>
				                <div class="etoile">
				                   <p><c:out value="${hotel.etoile_hotel}" /></p> 
				                  <i class='bx bxs-star' style='color:#ffe436; width: 50px;'></i> 
				                </div>
				              </div>
				              <hr class="line">
				              <div class="info-plage-chambre">
				                <div><p>Plage de <c:out value="${hotel.plage_proximite_hotel}" /> - &nbsp;</p></div>
				                <div><p><c:out value="${hotel.plage_distance_hotel}" /> Km - &nbsp;</p></div>
				                <div><p><c:out value="${hotel.chambre_double_hotel}" /> Chambre Double - &nbsp;</p></div>
				                <div><p><c:out value="${hotel.chambre_solo_hotel}" /> Chambre Solo.</p></div>
				              </div>
				              <div class="email-telephone">
				                <div><i class='bx bxs-envelope' style='color:#9e3026'  ></i></div>&nbsp;<div> <p>: <c:out value="${hotel.email_hotel}" /></p></div>&nbsp;&nbsp;&nbsp;
				                <div><i class='bx bxs-phone-call' style='color:#9e3026' ></i></div>&nbsp;<div> <p>:<c:out value="${hotel.telephone_hotel}" /></p></div>
				              </div>
				              <div class="info-hotel">
				                <div class="parking"><div><i class='bx bxs-parking' style='color:#9e3026' ></i></div>&nbsp;<div> <p>: Parking prive</p></div></div>
				                <div class="service"><div><i class='bx bx-brush-alt' style='color:#9e3026'></i></div>&nbsp;<div> <p>: Service d'etage</p></div></div>
				                <div class="nonfumeurs"><div><i class='bx bxs-bed'style='color:#9e3026' ></i></div>&nbsp;<div> <p>: Chambre non fumeurs</p></div></div>
				                <div class="annimeaux"><div><img src="${pageContext.request.contextPath}/img/cat.png" style="width:20px;"></div><div> <p>: Animeaux admis</p></div></div>
				                <div class="connexion"><div><i class='bx bx-wifi' style='color:#9e3026'></i></div>&nbsp;<div> <p>: Connexion gratuit</p></div></div>
				              </div>
				              <div class="prix-hotel">
				                <div><h3><c:out value="${hotel.prix_bas_hotel}" /> Dh -</h3></div>&nbsp;
				                <div><h3><c:out value="${hotel.prix_eleve_hotel}" /> DH</h3></div>&nbsp;
				                <div><h3>/ Nuit</h3></div>
				              </div>
				              
				              <div class="annulation-hotel">
				                <div><p>Annulation <c:out value="${hotel.annulation_hotel}" /></p></div>&nbsp;
				                <div><img src="${pageContext.request.contextPath}/img/v.png" style="width: 20px; position: relative; bottom: 5px;" ></div>
				              </div>
				              <div class="edit-delete">
				                <div class="edit"><a href="ReservationServlet?email=<c:out value='${hotel.email_hotel}'/>">Réserver Maintenant</a></div>
				              </div>
				            </div>
				          </div>
				          
				          </c:forEach>
				          </section> 
         
		<div class="pub" style="background-image: url('${pageContext.request.contextPath}/img/pub.jpg'); background-size: cover; background-position: center;">
          
          
          </div>
		 
	</div>
	  <!-- Site footer -->
    <footer class="site-footer">
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