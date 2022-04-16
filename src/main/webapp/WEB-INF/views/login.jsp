<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/assets/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <section class="vh-100">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 text-black">
      
              <div class="px-5 ms-xl-4">
                <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                <img src="${pageContext.request.contextPath}/img/logoMot.png" style="width: 300px; height: 200px; position: relative; left: 50px;">
              </div>
      
              <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-1 pt-5 pt-xl-0 mt-xl-n5">
      
                <form style="width: 23rem;" action="login" method="post">
      
                  <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Se connecter</h3>
      
                  <div class="form-outline mb-1">
                    <label class="form-label" for="form2Example18">Adresse Email</label>
                    <input type="email" id="form2Example18" class="form-control form-control-lg" name="email" />
                    <span style="color: red">${errorEmail}</span>
                  </div>
      
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example28">Mot de passe</label>
                    <input type="password" id="form2Example28" class="form-control form-control-lg" name="password"/>
                    <span style="color: red">${errorPassword}</span>
                  </div>
      
                  <div class="pt-1 mb-4">
                    <button class="btn btn-info btn-lg btn-block" style="background-color: #9e3026; color: #fff; "  type="submit">Connexion</button>
                  </div>
      
                  <p class="small mb-5 pb-lg-2"><a class="text-muted" href="/TravelZenProject/ForgotPassword">Mot de passe oublie?</a></p>
                  <p>Don't have an account? <a href="/TravelZenProject/register" class="link-info" style=" color: #9e3026; ">Inscrivez-vous</a></p>
      
                </form>
      
              </div>
      
            </div>
            <div class="col-sm-6 px-0 d-none d-sm-block">
              <img src="${pageContext.request.contextPath}/img/hotel1.jpg"  alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
            </div>
          </div>
        </div>
      </section>
</body>
</html>