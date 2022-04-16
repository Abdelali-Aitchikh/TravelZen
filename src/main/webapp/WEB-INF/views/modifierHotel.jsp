<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <style><%@ include file="styledashboard.css"%></style>
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
       <a href="${pageContext.request.contextPath}/GestionHotelServlet">
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
       <a href="<%=request.getContextPath()%>/#">
         <i class='bx bx-repost'></i>
         <span class="links_name">Mot De Passe</span>
       </a>
       <span class="tooltip">Mot De Passe</span>
     </li>
     <li>
       <a href="#">
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
         <i class='bx bx-log-out' id="log_out" ></i>
     </li>
    </ul>
  </div>
  <section class="home-section">
      <div class="container">
    <div class="title">		
            Modifier Hotel
    </div>
    <div class="content">
		<form action="ModifierHotelServlet" method="POST" enctype="multipart/form-data" >
        <div class="user-details">
          <div class="input-box">
            <span class="details">Nom d'hotel</span>
            <input type="text" name="nom_hotel" value="<c:out value='${hotel.nom_hotel}' />"  placeholder="Entrez votre Hotel"  required>
            
        
          </div>
          <div class="input-box">
            <span class="details">Ville</span>
            <input type="text"name="ville_hotel" value="<c:out value='${hotel.ville_hotel}' />" placeholder="Entrez votre Ville" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text"name="email_hotel"value="<c:out value='${hotel.email_hotel}' />" placeholder="Entrez votre Email" required>
          </div>
          <div class="input-box">
            <span class="details">Téléphone</span>
            <input type="text" name="telephone_hotel" value="<c:out value='${hotel.telephone_hotel}' />" placeholder="Entrez votre Numéro" required>
          </div>
          <div class="input-box">
            <span class="details">Plage à proximité</span>
            <input type="text" name="plage_proximite_hotel"value="<c:out value='${hotel.plage_proximite_hotel}' />" placeholder="Entrez la plage à proximité" required>
          </div>
          <div class="input-box">
            <span class="details">Distance en Km</span>
            <input type="number"name="distance_hotel"value="<c:out value='${hotel.plage_distance_hotel}' />" placeholder="Entrez la Distance en Km" required>
          </div>
          <div class="input-box">
            <span class="details">Chambre Double</span>
            <input type="number"name="chambre_double_hotel"value="<c:out value='${hotel.chambre_double_hotel}' />" placeholder="Entrez le nombre de chambres double" required>
          </div>
          <div class="input-box">
            <span class="details">Chambre Solo</span>
            <input type="number"name="chambre_solo_hotel"value="<c:out value='${hotel.chambre_solo_hotel}' />" placeholder="Entrez le nombre de chambres solo" required>
          </div>
        </div>
        <div class="radio-details">
        <div class="input-radio-box">
        <div class="etoile-details">
        <c:if test="${hotel.etoile_hotel eq 2}">
          <input type="radio" checked name="etoile" value="2" id="dot-1">
        </c:if>
        <c:if test="${hotel.etoile_hotel ne 2}">
        	<input type="radio" name="etoile" value="2" id="dot-1">
        </c:if>

        <c:if test="${hotel.etoile_hotel eq 3}">
          <input type="radio" checked name="etoile" value="3" id="dot-2">
        </c:if>
        <c:if test="${hotel.etoile_hotel ne 3}">
        	<input type="radio" name="etoile" value="3" id="dot-2">
        </c:if>
        
       <c:if test="${hotel.etoile_hotel eq 4}">
          <input type="radio" checked name="etoile" value="4" id="dot-3">
        </c:if>
        <c:if test="${hotel.etoile_hotel ne 4}">
        	<input type="radio" name="etoile" value="4" id="dot-3">
        </c:if>
        
        <c:if test="${hotel.etoile_hotel eq 5}">
          <input type="radio" checked name="etoile" value="5" id="dot-4">
        </c:if>
        <c:if test="${hotel.etoile_hotel ne 5}">
        	<input type="radio" name="etoile" value="5" id="dot-4">
        </c:if>

          <span class="etoile-title">Nombre d'étoile</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="etoile">2</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="etoile">3</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="etoile">4</span>
            </label>
           <label for="dot-4">
            <span class="dot fore"></span>
            <span class="etoile">5</span>
          </label>
          </div>
        </div></div>
        <div class="annulation-details">
        
        <c:if test="${hotel.annulation_hotel == 'Gratuite'}">
          <input type="radio" name="annulation" checked value="Gratuite" id="dot-1-annulation">
        </c:if>
        <c:if test="${hotel.annulation_hotel != 'Gratuite'}">
          <input type="radio" name="annulation"  value="Gratuite" id="dot-1-annulation">
        </c:if>
        
        <c:if test="${hotel.annulation_hotel == '-20%'}">
          <input type="radio" checked name="annulation" value="-20%" id="dot-2-annulation">
        </c:if>
        <c:if test="${hotel.annulation_hotel != '-20%'}">
        	<input type="radio"  name="annulation" value="-20%" id="dot-2-annulation">
        </c:if>
        
        <c:if test="${hotel.annulation_hotel == 'Payante'}">
          <input type="radio" checked name="annulation" value="Payante" id="dot-3-annulation">
         </c:if>
        <c:if test="${hotel.annulation_hotel != 'Payante'}">
        	<input type="radio" name="annulation" value="Payante" id="dot-3-annulation">
        </c:if>
          <span class="annulation-title">Annulation</span>
          <div class="category-annulation">
            <label for="dot-1-annulation">
            <span class="dot-annulation one"></span>
            <span class="annulation">Gratuite</span>
          </label>
          <label for="dot-2-annulation">
            <span class="dot-annulation two"></span>
            <span class="annulation">-20%</span>
          </label>
           <label for="dot-3-annulation">
            <span class="dot-annulation three"></span>
            <span class="annulation">Payante</span>
          </label>
          </div>
        </div>
        </div>
        <div class="prix-details">
          <div class="input-box">
            <span class="details">Prix le plus bas</span>
            <input type="text" name="prix_bas_hotel"value="<c:out value='${hotel.prix_bas_hotel}' />" placeholder="A partir de (Dh)" required>
          </div>
          <div class="input-box">
            <span class="details">Prix le plus élevé</span>
            <input type="text" name="prix_eleve_hotel"value="<c:out value='${hotel.prix_eleve_hotel}' />" placeholder="Jusqu'a (Dh) " required>
          </div>
        </div>
        <div class="input-box">
      <span class="details">Equipement</span>
      <div class="grp-check">
          <div class="space-chek">
             <c:if test="${hotel != null}">
            	  <c:if test="${hotel.parking_prive eq 1}">
            			<input type="checkbox" checked value="1" id="horns" name="parking_prive_hotel">
        		  </c:if>
				  <c:if test="${hotel.parking_prive ne  1}">
            			<input type="checkbox" value="1" id="horns" name="parking_prive_hotel">
        		  </c:if>
        	 </c:if>
			<c:if test="${hotel == null}">
            	<input type="checkbox" value="1" id="horns" name="parking_prive_hotel">
        	</c:if>
          <label for="horns">Parking privé</label></div>
          
          <div class="space-chek">
           <c:if test="${hotel != null}">
            	  <c:if test="${hotel.service_etage eq 1}">
          <input type="checkbox" value="1" checked id="scales" name="service_etage_hotel">
          </c:if>
				  <c:if test="${hotel.service_etage ne  1}">
				  <input type="checkbox" value="1"  id="scales" name="service_etage_hotel">
				  </c:if>
			 </c:if>
			<c:if test="${hotel == null}">
            	<input type="checkbox" value="1" id="horns" name="service_etage">
        	</c:if>
        <label for="scales">Service d'étage</label></div>
        
          <div class="space-chek">
            <c:if test="${hotel != null}">
            	  <c:if test="${hotel.chambre_non_fumeurs eq 1}">
          				<input type="checkbox" value="1" checked id="scales" name="chambre_non_fumeurs_hotel">
          			</c:if>
				  <c:if test="${hotel.chambre_non_fumeurs ne 1 }">
				  <input type="checkbox" value="1"  id="scales" name="chambre_non_fumeurs_hotel">
				  </c:if>
			 </c:if>
			<c:if test="${hotel == null}">
            	<input type="checkbox" value="1" id="horns" name="chambre_non_fumeurs_hotel">
        	</c:if>
          <label for="scales">Chambre non-fumeurs</label></div>
          
        <div class="space-chek">
           <c:if test="${hotel != null}">
            	  <c:if test="${hotel.animeaux_admis eq 1}">
          				<input type="checkbox" checked value="1" id="scales" name="animeaux_admis_hotel" >
          		  </c:if>
				  <c:if test="${hotel.animeaux_admis ne  1}">
				  <input type="checkbox" value="1"  id="scales" name="animeaux_admis_hotel">
				  </c:if>
			 </c:if>
			<c:if test="${hotel == null}">
            	<input type="checkbox" value="1" id="horns" name="animeaux_admis_hotel">
        	</c:if>
          <label for="scales">Animeaux domestique admis</label></div>
          
          <div class="space-chek">
              <c:if test="${hotel != null}">
            	  <c:if test="${hotel.connexion_gratuit eq 1}">
          				<input type="checkbox" checked value="1" id="horns" name="connexion_hotel">
          			</c:if>
				  <c:if test="${hotel.connexion_gratuit ne  1}">
				  <input type="checkbox" value="1"  id="scales" name="connexion_hotel">
				  </c:if>
			 </c:if>
			<c:if test="${hotel == null}">
            	<input type="checkbox" value="1" id="horns" name="connexion_hotel">
        	</c:if>
          <label for="horns">Connexion WI-FI gratuit</label></div>
        </div>
        <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <span class="details" style="margin-top: 10px;">Image</span>

    <input  type='file'  name="imageUpdate" />

        <div class="button">
          <input type="submit" value="Modifier Hotel">
        </div>
      </form>
    </div>
  </div>
<script type="text/javascript" src="ajouter_image.js"></script>
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