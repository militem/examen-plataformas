<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inicio</title>
<link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
          <a class="nav-link active" aria-current="page" href="#"><i class="fa-solid fa-house me-2"></i>Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="historia/"><i class="fa-solid fa-timeline me-2"></i>Historia</a>
        </li>
        <li class="nav-item">
        	<a class="nav-link" href="negocios/"><i class="fa-solid fa-shop me-2"></i>Negocios</a>
        </li>
        <li class="nav-item">
          <a href="sobre-mi/" class="nav-link"><i class="fa-solid fa-circle-info me-2"></i>Sobre mi</a>
        </li>
      </ul>
      <form class="d-flex input-group w-auto" action="busqueda/index.jsp" method="GET">
        <input class="form-control me-2" name="busqueda" type="search" placeholder="Buscar" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="fa-solid fa-magnifying-glass me-2"></i>Buscar</button>
      </form>
    </div>
  </div>
</nav>
<div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner imagenes-mov">
    <div class="carousel-item active">
      <img src="assets/images/image1.jpg" class="d-block w-100" style="max-height: 35rem;" alt="...">
      <div class="carousel-caption d-none d-md-block bg-dark">
        <h5>Obrero Independiente</h5>
        <p>Es un barrio con más de 50 años de existencia, se ubica bajo la Loma de Puengasí 
            con dirección al valle de los Chillos.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="assets/images/image2.jpg" class="d-block w-100" style="max-height: 35rem;" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <!-- 
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>-->
      </div>
    </div>
    <div class="carousel-item">
      <img src="assets/images/image5.jpg" class="d-block w-100" style="max-height: 35rem;" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <!-- 
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>-->
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container mt-2 mb-5">
	<%
		Datos dt = new Datos();
       	out.print(dt.infoInicio());
	%>
	<div class="row mt-md-5">
		<div class="col-sm-12 col-md-4">
			<div class="fs-2 texto-mov">
				<i class="fa-solid fa-map-location-dot me-2"></i>¿Cómo llegar?
			</div>
		</div>
		<div class="col-sm-12 col-md-8 imagen-mov">
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d6582.028138076478!2d-78.4890984050992!3d-0.24387365679854298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sec!4v1652308372517!5m2!1ses-419!2sec" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
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
            <a href="#" class="text-reset"><i class="fa-solid fa-house me-2"></i>Inicio</a>
          </p>
          <p>
            <a href="historia/" class="text-reset"><i class="fa-solid fa-timeline me-2"></i>Historia</a>
          </p>
          <p>
            <a href="negocios/" class="text-reset"><i class="fa-solid fa-shop me-2"></i>Negocios</a>
          </p>
          <p>
            <a href="sobre-mi/" class="text-reset"><i class="fa-solid fa-circle-info me-2"></i>Sobre mi</a>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollTrigger.min.js"></script>
<script>
	gsap.registerPlugin(ScrollTrigger);
	const tl = gsap.timeline ({
		scrollTrigger: {
			trigger: '.container',
			start: 'top 300px',
			end: '100%'
		}
	});
	tl.from(".texto-mov", {
		opacity: 0, 
		x: 100, 
		duration: 1
	});
	tl.from(".imagen-mov", {
		opacity: 0, 
		x: -100, 
		duration: 2
	});
	const tl2 = gsap.timeline ({
		scrollTrigger: {
			trigger: '.container',
			start: 'top 300px',
			end: '100%'
		}
	});
	
	gsap.from(".texto-mov-p", {
		opacity: 0, 
		x: -100, 
		duration: 1
	});
	gsap.from(".imagen-mov-p", {
		opacity: 0, 
		x: 100, 
		duration: 2
	});
	gsap.from(".imagenes-mov", {
		opacity: 0, 
		y: -1000,
		duration: 1,
		scale: 0.8
	});
</script>
</body>
</html>