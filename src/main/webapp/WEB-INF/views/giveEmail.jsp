<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/register.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
</head>
<body style="height: 100vh">
	<section class="h-100 h-custom" style="background-color: #8fc4b7;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-8 col-xl-6">
					<div class="card rounded-3">
						<img
							src="${pageContext.request.contextPath}/assets/image/img3.png"
							class="w-100"
							style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
							alt="Sample photo">
						<div class="card-body p-4 p-md-5">
							<h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Forgot
								Password</h3>
							<form class="px-md-2" action="ForgotPassword" method="POST">
								<div class="form-outline mb-4">
									<span style="color: red">${ErrorEmail}</span> <input
										type="email" id="form3Example1q" class="form-control" href="ForgotPassword"
										name="email" required /> <label class="form-label"
										for="form3Example1q"> Donnez Votre Email </label>
								</div>
								<div class="d-flex justify-content-center"
									style="margin-bottom: 20px; margin-top: -50px">
									<button type="submit" name="entreEmailBtn"
										class="btn btn-primary btn-block btn-lg gradient-custom-4 text-body">
										Valide</button>
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