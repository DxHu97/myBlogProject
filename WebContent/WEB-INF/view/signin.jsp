   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous" defer></script>
<title>Login</title>
		  <script src="C:\Users\david\eclipse-workspace\myBlog\js\signin.js" defer></script>
</head>
<body id = "bg" >
<!-- <section class="vh-100">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
 <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign in</p>
<form id="form_id" method="post" name="myform" action = 'validateUser' modelAttribute = "user" class="mx-1 mx-md-4">
<label>User Id :</label>
<input type="number" name="id" id="id" path = "id"/>
<br></br>
<div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="username" class="form-control" name="username" path = "username"  />
                      <label class="form-label" for="form3Example1c">Username</label>
                    </div>
                  </div>
<br></br>
<div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="password" class="form-control" path = "password" name="password" />
                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>
<br></br>
						
<button class="d-flex justify-content-center mx-4 mb-3 mb-lg-4 btn btn-primary btn-lg" id = "login"> Log in </button>

</form>
<br></br>
  </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </section> -->
<section class="vh-100">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign in</p>

                <form id="form_id" method="post" name="myform" action = 'validateUser' modelAttribute = "user" class="mx-1 mx-md-4">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="username" class="form-control" name="username" path = "username"  />
                      <label class="form-label" for="form3Example1c">Username</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="password" class="form-control" path = "password" name="password" />
                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>


                    <button class="d-flex justify-content-center mx-4 mb-3 mb-lg-4 btn btn-primary btn-lg" id = "login"> Log in </button>
       

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://thumbs.dreamstime.com/b/pomeranian-dog-puppy-standing-table-puppy-doll-holds-welcome-sign-panel-mouth-pomeranian-dog-puppy-standing-92857634.jpg"
                  class="img-fluid" alt="Welcome">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<br></br>
<a
            href="http://localhost:8083/users/list"
            >Are you an admin?</a>
</body>
<link href="../styles/signin.css" rel="stylesheet"><link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/signin.css" />
</html>