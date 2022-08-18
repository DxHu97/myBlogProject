<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous" defer></script>
	<title>Add a comment</title>
	

<link href="../styles/signin.css" rel="stylesheet"><link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/signin.css" />

</head>

<body id = "bg">
	
	<section class="vh-100">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
	<form:form action = "saveComment" modelAttribute = "comment" method = "POST">
	<form:hidden path="comment_id"/>
  <!-- Email input -->
  			<h2>Add Comment</h2>
  				<br></br>
  <div class="form-outline mb-4">
    <form:input type="text" id="username" class="form-control" path = "username" />
    <label class="form-label" for="form1Example1">Username</label>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
       <form:input type="email" id="email" class="form-control" path = "email" />
    <label class="form-label" for="form1Example2">Email</label>
  </div>
  
   <div class="form-outline mb-4">
       <form:input type="textbox" id="body" class="form-control" path = "body" />
    <label class="form-label" for="form1Example2">Comment</label>
  </div>
  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block">Add</button>
</form:form>
<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/hibernate">Go back</a>
		</p>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</section>

</body>

</html>