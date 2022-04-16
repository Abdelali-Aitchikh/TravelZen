
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="styledashboard.css">
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
  <section class="home-section">
      <div class="container">
        <img src="${pageContext.request.contextPath}/img/logoMot.png" alt="Nature" class="resp" width="500" height="200">
    <div class="title">   
            Changer votre mot de passe
    </div>
    <div class="content">
          <form action="AjouterHotelServlet" method="POST">
        <div class="user-details">
          <div class="input-boxxx">
            <span class="details">Anciene mot de passe</span>
            <input type="text" name="nom_hotel" placeholder="Entrez Anciene mot de passe"  required>
          </div>
          <div class="input-boxxx">
            <span class="details">Nouveau Mot de Passe</span>
            <input type="text"name="ville_hotel" placeholder="Entrez Nouveau Mot de Passe" required>
          </div>
          <div class="input-boxxx">
            <span class="details">Confirmer Mot de passe</span>
            <input type="text"name="ville_hotel" placeholder="Entrez Nouveau Mot de Passe" required>
          </div>
        </div>
          <div class="button">
          <input type="submit" value="Changer Mot de Passe">
        </div>
     
    </form>
    </div>
   	  </div>
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
