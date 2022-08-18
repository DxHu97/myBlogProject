<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="David Hu">
    <style>p {color:white; opacity:1 !important} 
    h1 {color:pink; text-shadow: 2px 2px black; opacity:1 !important;}
    h2 {color:pink; text-shadow: 2px 2px black; opacity:1 !important;}
    h3 {color:white; text-shadow: 2px 2px black; opacity:1 !important;}
    table {color:white; text-shadow: 2px 2px black}
    </style>
    <title>My Blog</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous" defer></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&display=swap" rel="stylesheet">
<link href="../styles/blog.css" rel="stylesheet"><link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/blog.css" />
  </head>
  <body id = "bg" >
    <script>
      function validateForm(input){
        if (input){
          return success
        }
      }
    </script>
<div class="container" >
  <header class="blog-header lh-1 py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 text-left">
        <h1 class="blog-header-logo">Coding Blog</h1>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
                <c:url var="signin" value="/signin">
					</c:url>	
					<input type = "button" value = "Sign up" onclick = "window.location.href = 'showFormForAdd'; return false;" class = "btn btn-outline-light"
			/>	
        <a class="btn btn-outline-light" href="${signin}">Sign in</a>
      </div>
    </div>
  </header>

  <div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-start">
    <c:url var="home" value="/home"></c:url>
      <a class="btn btn-outline-light" href="${home}">Home</a>
    </nav>
  </div>
</div>

<main class="container">

  <div class="row g-5">
    <div class="col-md-8">
      <h1 class="pb-4 mb-4 fst-italic border-bottom" >
        Hibernate
      </h1>

      <article class="blog-post" style = "text-shadow: 2px 2px black">
        <h2 class = "text-decoration-underline">All about hibernate!</h2>
        <p class="blog-post-meta" style = "color:lightcyan; text-shadow: 2px 2px black">July 22, 2022 by <a style = "color:lightblue; text-shadow: 2px 2px black;" href="https://www.linkedin.com/in/dxhu97/" target="_blank" rel="noopener noreferrer">David</a></p>

        <p>Hibernate is the Object-Relational Mapping (ORM) framework in Java created by Gavin King in 2001. It simplifies the interaction of a database and the Java application being developed. It is an ORM tool that is powerful and lightweight. Another important thing is that this is an open-source high-performance tool. Hibernate implements Java Persistence API specifications and is a very powerful object-relational persistence and query service for applications developed in Java.
        </p>
        <hr>
        <p>Java objects and database server interacts with each other via Hibernate. Hibernate will work so as to persist the Java objects depending upon the correct O/R patterns and recognition mechanisms. The architecture of Hibernate is layered such that the user does not really need to know the underlying APIs in order to operate. It is with the help of the database and configuration data that the Hibernate is able to provide persistence services and objects to the application. The architecture of Hibernate consists of objects like a session factory, transaction factory, persistent object, etc.

          Hibernate framework uses many objects such as session factory, session, transaction, etc. along with existing Java API such as JDBC (Java Database Connectivity), JTA (Java Transaction API) and JNDI (Java Naming Directory Interface).
          
          <h3>Hibernate architecture</h3>
        <p>There are four layers:</p>
        <ol style = "color: white">
          <li>Java application layer</li>
          <li>Hibernate framework layer</li>
          <li>Backend API layer</li>
          <li>Database layer</li>
        </ol>
          <br></br>
        <h2 class = "text-decoration-underline">Why do we need hibernate?</h2>
          <p style = "text-shadow: 2px 2px black">In order to retrieve data from the database writing repeatedly the same lines of code in your application again and again can be tiring and irritating. Also, switching from one database to another, implementing oops with JDBC, creating associations between database tables require lots of effort and rework if done without using the Hibernate framework. As already told, Java Hibernate is an ORM tool that helps ease all these issues faced while using JDBC for database connectivity.

            When compared to JDBC, Hibernate will connect itself with the database. In order to execute the queries, Hibernate uses Hibernate Query Language or HQL. Once the queries have been executed Hibernate will then perform the mapping of the results to their respective application layer. This mapping results in objects totally based on the properties mentioned in the configuration XML file of Hibernate. A session does not only help an application in creating a connection with the database but also works toward saving and fetching the persistent object in Hibernate. Using Session factory (which is an interface) one can create an instance of a session and use this instance just that there should only be one session factory for every database. For example, if an application is using two databases namely- MySQL and Oracle, one session factory should be maintained for MySQL and one session factory should be maintained for Oracle. No two session factory can be maintained for Oracle or MySQL alone.</p>
            <img src = "https://miro.medium.com/max/1400/1*D6uY2BbPHrWbqJbATQ75pg.png" alt = "hibernate">
            <br></br>
        <table class="table" style = "color:white; text-shadow: 2px 2px black">
          <thead>
            <tr>
              <th>Elements</th>
              <th>Description</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Session Factory</td>
              <td>The SessionFactory is a factory of session and client of ConnectionProvider. It holds second level cache (optional) of data. The org.hibernate.SessionFactory interface provides factory method to get the object of Session.
              </td>
            </tr>
            <tr>
              <td>Session
              </td>
              <td>The session object provides an interface between the application and data stored in the database. It is a short-lived object and wraps the JDBC connection. It is factory of Transaction, Query and Criteria. It holds a first-level cache (mandatory) of data. The org.hibernate.Session interface provides methods to insert, update and delete the object. It also provides factory methods for Transaction, Query and Criteria.
              </td>
            </tr>
            <tr>
              <td>Transaction</td>
              <td>The transaction object specifies the atomic unit of work. 
              </td>
            </tr>
          </tbody>
        </table>
      </article>

<h2 class = "text-decoration-underline"> Comments </h2>
<div class="row d-flex">
  <div class="col-md-15 col-lg-15">
    <div class="card shadow-0 border" style="background-color: #f0f2f5;">
      <div class="card-body p-4">
        <div class="form-outline mb-4">
        </div>
        <c:forEach var = "tempComment" items = "${comment}">
        <div class="card mb-4">
          <div class="card-body">
            <div class="d-flex justify-content-between">
              <div class="d-flex flex-column align-items-center">
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/showFormForUpdateComment">
						<c:param name="comment_id" value="${tempComment.comment_id}" />
					</c:url>			
							
					<c:url var="deleteLink" value="/deleteComment">
						<c:param name="comment_id" value="${tempComment.comment_id}" />
					</c:url>
					
					
					

						<p style = "color: blue" class = "d-flex justify-content-center mx-3"> ${tempComment.username} </p>
						<p style = "color: black" class = "d-flex justify-content-center"> ${tempComment.body} </p>
						              <div class="d-flex flex-row align-items-center">
							<a class="d-flex  mx-1 mb-3 mb-lg-4 btn btn-primary btn-sm"  href="${updateLink}">Update </a>
							
							<a class="d-flex  mx-1 mb-3 mb-lg-4 btn btn-primary btn-sm"  href="${deleteLink}"
							   onclick="if (!(confirm('Are you sure you want to delete this comment?'))) return false">Delete</a>
						</div>
				
              </div>
              </div>
            </div>
          </div>
          				</c:forEach>
          				<input type = "button" value = "Add a comment" onclick = "window.location.href = 'showFormForAddComment'; return false;" class = "d-flex  mx-1 mb-3 mb-lg-4 btn btn-primary btn-lg align-items-center"
			/>	
        </div>
      </div>
    </div>
  </div>
      <br></br>
      	
    </div>
    <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">
        <div class="p-4 mb-3">
          <h1 class="fst-italic">About Me</h1>
          <p class="mb-0">I am an aspiring software developer. I am currently learning Java, jdbc, and hibernate at TEK.</p>
        </div>
        <div class="p-4">
          <h1 class="fst-italic">Contact</h1>
          <ol class="list-unstyled">
            <li><a class="btn btn-sm btn-outline-info" href="https://github.com/DxHu97" target="_blank" rel="noopener noreferrer">GitHub</a></li>
            <li><a class="btn btn-sm btn-outline-info" href="https://www.linkedin.com/in/dxhu97/" target="_blank" rel="noopener noreferrer">LinkedIn</a></li>
            <li><a class="btn btn-sm btn-outline-info" href="https://dev.to/dxhu97" target="_blank" rel="noopener noreferrer">Dev.to</a></li>
            <li><a class="btn btn-sm btn-outline-info" href="https://david-hu-portfolio.netlify.app/" target="_blank" rel="noopener noreferrer">Portfolio</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>

</main>

<footer class="blog-footer">
  <p>
    <a  class="btn btn-outline-primary rounded-pill" href="#">Back to top</a>
  </p>
</footer>


    
  </body>
</html>