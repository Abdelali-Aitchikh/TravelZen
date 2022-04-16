<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/register.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<section class="h-100 h-custom" style="background-image: url('${pageContext.request.contextPath}/img/hotel1.jpg');   background-size: cover;
  background-position: center center;">
		<div class="container py-1 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-8 col-xl-6">
					<div class="card rounded-3">
						
						<div class="card-body p-1 p-md-5 ">
							<h3 class="mb-2 pb-2 pb-md-0 mb-5 md-5 px-md-2 ">Registration
								Info</h3>

							<form class="px-md-2" action="register" method="post">

								<div class="form-outline mb-4">
								<label class="form-label" for="form3Example1q">
										Nom Complet </label>
									<input type="text" id="form3Example1q" class="form-control"
										name="nom" required/> 
								</div>

								<div class="form-outline mb-4">
									<span style="color: red">${ErrorEmail}</span>
									<label
										class="form-label" for="form3Example1q">Adresse Email </label>
									 <input
										type="email" id="form3Example3cg"
										class="form-control form-control-lg" name="email" required/> 
								</div>

								<div class="form-outline mb-4">
								<label
										class="form-label" for="form3Example4cg"> Numéro Téléphone </label>
									<input type="text" id="form3Example4cg"
										class="form-control form-control-lg" name="telephone" required/> 
								</div>

								<div class="form-outline mb-4">
									<span style="color: red">${ErrorPassword}</span>
									<label class="form-label" for="form3Example4cg"> Mot de Passe </label> 
									<input type="password" id="form3Example4cg"
										class="form-control form-control-lg" name="password" required/>
									
								</div>

								<div class="form-outline mb-4">
								<label class="form-label" for="form3Example4cdg">
										Confirmer Mot de Passe </label>
									<input type="password" id="form3Example4cdg"
										class="form-control form-control-lg" name="repertPassword" required/>
								</div>
						</div>

						<div class="d-flex justify-content-center"
							style="margin-bottom: 20px; margin-top: -50px">
							<button type="submit"
								class="btn btn-info btn-lg btn-block" style="background-color: #9e3026; color: #fff; ">
								Inscrire</button>
						</div>

						</form>

					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
</body>
</html>