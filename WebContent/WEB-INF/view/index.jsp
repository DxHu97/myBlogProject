<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="David Hu" />
    <meta name="generator" content="Hugo 0.101.0" />
    <title>My Blog</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      p {
        color: white;
      }
      h1 {
        color: pink;
        text-shadow: 2px 2px black;
      }
      h2 {
        color: pink;
        text-shadow: 2px 2px black;
      }
      h3 {
        color: white;
        text-shadow: 2px 2px black;
      }
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&display=swap"
      rel="stylesheet"
    />
    <link href="../styles/blog.css" rel="stylesheet" />
    <link
      type="text/css"
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/blog.css"
    />
  </head>
  <body id="bg">
    <div class="container">
      <header class="blog-header lh-1 py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 text-left">
            <h1 class="blog-header-logo">Coding Blog</h1>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <c:url var="signin" value="/signin"> </c:url>
            <input
              type="button"
              value="Sign up"
              onclick="window.location.href = 'showFormForAdd'; return false;"
              class="btn btn-outline-light"
            />
            <a class="btn btn-outline-light" href="${signin}">Sign in</a>
          </div>
        </div>
      </header>

      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-start">
          <c:url var="home" value="/home"> </c:url>
          <a class="btn btn-outline-light" href="${home}">Return Home</a>
          <a
            class="btn btn-outline-light"
            href="http://localhost:8082/api/userData"
            >b2b</a>
        </nav>
      </div>
    </div>

    <main class="container">
      <h2>Hello! Welcome to my coding blog.</h2>
      <h2>Here are some topics that I will cover:</h2>

      <div class="p-4 p-md-5 mb-4 rounded text-bg-info">
        <div class="col-md-6 px-0">
          <h4><strong>Hibernate</strong></h4>
          <c:url var="hibernate" value="/hibernate"> </c:url>
          <p class="lead my-3">
            <strong
              >Java Hibernate is an object-relational mapping tool (ORM)
              allowing the mapping of object-oriented models to relational
              databases for web applications by providing a framework. Mapping
              of entities in a Java class to tables created in a database and
              mapping from Java data types to SQL data types is one of the
              primary functions of Hibernate.</strong
            >
          </p>
          <p class="lead mb-0">
            <a href="${hibernate}" class="text-white fw-bold"
              >Continue reading...</a
            >
          </p>
        </div>
      </div>
    </main>
  </body>
</html>