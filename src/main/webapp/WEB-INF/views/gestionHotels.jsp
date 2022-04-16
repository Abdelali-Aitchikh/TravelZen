<%@page import="java.io.OutputStream"%>
<%@page import="com.iset.entities.Hotel"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Hotels </title>
    <style><%@ include file="styledashboard.css"%></style>
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <img src="${pageContext.request.contextPath}/img/logo.png">
        <i class='bx bx-menu' id="btn" ></i>
    </div>
    <ul class="nav-list">
      <li>
          <i class='bx bx-search' ></i>
         <input class="input-searsh" type="text" placeholder="Chercher...">
         <span class="tooltip">Chercher</span>
      </li>
      <li>
        <a href="<%=request.getContextPath()%>/DashboardAccueilServlet">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
         <span class="tooltip">Dashboard</span>
      </li>
      <li>
       <a href="<%=request.getContextPath()%>/GestionHotelServlet">
         <i class='bx bx-hotel' ></i>
         <span class="links_name">Hôtels</span>
       </a>
       <span class="tooltip">Hôtels</span>
     </li>
     <li>
       <a href="<%=request.getContextPath()%>/AjouterHotelServlet">
         <i class='bx bx-plus-circle' ></i>
         <span class="links_name">Ajouter Hôtel</span>
       </a>
       <span class="tooltip">Ajouter Hôtel</span>
     </li>
     <li>
       <a href="<%=request.getContextPath()%>/AjouterPartenaireServlet">
         <i class='bx bxs-user-check'></i>
         <span class="links_name">Ajouter Partenaire</span>
       </a>
       <span class="tooltip">Ajouter Partenaire</span>
     </li>
           <li>
       <a href="<%=request.getContextPath()%>/ChangerMotDePasse">
         <i class='bx bx-repost'></i>
         <span class="links_name">Mot De Passe</span>
       </a>
       <span class="tooltip">Mot De Passe</span>
     </li>
     <li>
       <a href="<%=request.getContextPath()%>/AfficherReservationServlet">
         <i class='bx bx-paper-plane' ></i>
         <span class="links_name">Réservations</span>
       </a>
       <span class="tooltip">Réservations</span>
     </li>
     
     <li class="profile">
         <div class="profile-details">
           <!--<img src="profile.jpg" alt="profileImg">-->
           <div class="name_job">
             <div class="name">Mehdi El-Bakkali</div>
             <div class="job">Propriétaire de l'hôtel</div>
           </div>
         </div>
         <a href="<%=request.getContextPath()%>/Home"><i class='bx bx-log-out' id="log_out" ></i></a> 
     </li>
    </ul>
  </div>


  <section class="home-section-dashboard-accueil">
  <c:forEach var="hotel" items="${listHotel}">
        <div class="container-dashboard-hotel">
        <c:if test="${hotel.id eq 0}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel6.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
        <c:if test="${hotel.id eq 1}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel5.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
        <c:if test="${hotel.id eq 2}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel6.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
        <c:if test="${hotel.id eq 3}">
            <div class="img" style="background-image: url('${pageContext.request.contextPath}/img/hotel7.jpg'); width: 35%; height: 490px; background-size: cover; background-position: center;"> </div>
        </c:if>
            <div class="details-objet">
              <div class="title-etoile">
                <div class="title"> <h2><c:out value="${hotel.nom_hotel}" /></h2> </div>
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
                <div><img src="${pageContext.request.contextPath}/img/v.png" style='width: 20px;'></div>
              </div>
              <div class="edit-delete">
                <div class="edit"><a href="EditHotelServlet?email=<c:out value='${hotel.email_hotel}'/>">Modifier</a></div>
                <div class="delete"><a href="DeleteHotelServlet?email=<c:out value='${hotel.email_hotel}'/>">Supprimer</a></div>
               
              </div>
            </div>
          </div>
          </c:forEach>
  </section>
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
</body>
</html>
