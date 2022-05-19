<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Negocios</title>
<link rel="icon" type="image/x-icon" href="../assets/images/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Obrero Independiente</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="../"><i class="fa-solid fa-house me-2"></i>Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../historia/"><i class="fa-solid fa-timeline me-2"></i>Historia</a>
        </li>
        <li class="nav-item">
        	<a class="nav-link active" href="#"><i class="fa-solid fa-shop me-2"></i>Negocios</a>
        </li>
        <li class="nav-item">
          <a href="../sobre-mi/" class="nav-link"><i class="fa-solid fa-circle-info me-2"></i>Sobre mi</a>
        </li>
      </ul>
      <form class="d-flex input-group w-auto" action="../busqueda/index.jsp" method="GET">
        <input class="form-control me-2" name="busqueda" type="search" placeholder="Buscar" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="fa-solid fa-magnifying-glass me-2"></i>Buscar</button>
      </form>
    </div>
  </div>
</nav>
<div class="container mt-3 mb-5">
	<div class="row">
		<%
			Datos dt = new Datos();
			out.print(dt.getNegocios());
		%>
	</div>
</div>
<footer class="text-center text-lg-start bg-light text-muted">
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
    <div class="me-5 d-none d-lg-block">
      <span>Redes sociales del desarrollador:</span>
    </div>
    <div>
      <a href="https://twitter.com/Xalexx25" class="text-reset me-4" target="_blank"><i class="fa-brands fa-twitter"></i></a>
      <a href="https://github.com/militem" class="text-reset me-4" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
      <a href="https://www.linkedin.com/in/alex-terreros-827342120/" class="text-reset me-4" target="_blank"><i class="fa-brands fa-github"></i></a>
    </div>
  </section>
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <div class="row mt-3">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fa-solid fa-street-view me-2"></i>Obrero Independiente
          </h6>
          <p>
            Es un barrio con más de 50 años de existencia, se ubica bajo la Loma de Puengasí 
            con dirección al valle de los Chillos.
          </p>
        </div>
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fa-solid fa-shop me-2"></i>Negocios
          </h6>
          <%
          	out.print(dt.footerNegocios());
          %>
        </div>
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fa-solid fa-bars me-2"></i>Navegación
          </h6>
          <p>
            <a href="../" class="text-reset"><i class="fa-solid fa-house me-2"></i>Inicio</a>
          </p>
          <p>
            <a href="../historia/" class="text-reset"><i class="fa-solid fa-timeline me-2"></i>Historia</a>
          </p>
          <p>
            <a href="#" class="text-reset"><i class="fa-solid fa-shop me-2"></i>Negocios</a>
          </p>
          <p>
            <a href="../sobre-mi/" class="text-reset"><i class="fa-solid fa-circle-info me-2"></i>Sobre mi</a>
          </p>
        </div>
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fa-solid fa-circle-info me-2"></i>Sobre mi
          </h6>
          <p><i class="fas fa-home me-2"></i>Quito, Pichincha</p>
          <p>
            <i class="fas fa-envelope me-2"></i>
            aterrerosf@est.ups.edu.ec
          </p>
          <p><i class="fas fa-phone me-2"></i>+593 963 201 396</p>
        </div>
      </div>
    </div>
  </section>
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    © 2022 Copyright: Alex Terreros
  </div>
</footer>
<style>
	.texto-justificado{
		text-align: justify;
	}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollTrigger.min.js"></script>
<script>
	gsap.from(".card-mov", {
		opacity: 0, 
		y: 300, 
		duration: 1
	});
</script>
</body>
</html>