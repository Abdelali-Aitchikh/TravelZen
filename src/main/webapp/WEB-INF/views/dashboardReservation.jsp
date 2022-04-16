<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="styleReservation.css">
    <style><%@ include file="styleReservation.css"%></style>
    
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
    <c:forEach var="reservation" items="${listReservation}">
    <div class="container-dashboard-hotel">
      <div class="tit" style="margin-left: auto; margin-right: auto;"><h1 style="color: #9e3026;">Reservation de L'Hotel Royal Atlass</h1></div><br>
      <div class="tato"><h3>Nom Complet :&nbsp;</h3> <p><c:out value="${reservation.nomComplet}" /></p></div>
      <div class="tato"><h3>Ville:&nbsp;</h3> <p><c:out value="${reservation.ville}" /></p></div>
      <div class="tato"><h3>Email:&nbsp;</h3> <p><c:out value="${reservation.email}" /></p></div>
      <div class="tato"><h3>Telephone:&nbsp;</h3> <p><c:out value="${reservation.telephone}" /></p></div>
      <div class="tato"><h3>CIN:&nbsp;</h3> <p><c:out value="${reservation.cin}" /></p></div>
      <div class="tato"><h3>Nombre de Personne:&nbsp;</h3> <p><c:out value="${reservation.nombrePersonne}" /></p></div>
      <div class="tato"><h3>Nombre de jours :&nbsp;</h3> <p><c:out value="${reservation.nombreJours}" /></p></div>
      <div class="tato"><h3>Nombre de chambre Double :&nbsp;</h3> <p><c:out value="${reservation.nombreChambreDouble}" /></p></div>
      <div class="tato"><h3>Nombre de chambres Solo:&nbsp;</h3> <p><c:out value="${reservation.nombreChambreSolo}" /></p></div>
      <div class="tato"><h3>Date de Réservation :&nbsp;</h3> <p><c:out value="${reservation.dateReservation}" /></p></div>
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
