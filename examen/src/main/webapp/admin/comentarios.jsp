<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Panel Administración</title>
<link rel="icon" type="image/x-icon" href="../assets/images/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%
	HttpSession sesion = request.getSession();
	String usuario = "";
	String cerrar = "";
	if(sesion.getAttribute("usuario") != null){
		usuario += sesion.getAttribute("usuario").toString();
		cerrar += "<a href='../login.jsp?cerrar=true' class='dropdown-item'>Cerrar Sesion</a>";
	}else{
		out.print("<script>location.replace('../login.jsp');</script>");
	}
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
     <a class="navbar-brand" href="#">
      <img src="../assets/images/administrator24px.png" class="me-2" alt="" width="24" height="24">Panel de Administración
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="index.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">Comentarios</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <%
            	out.print(usuario);
            %>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li>
            	<%
		        	out.print(cerrar);
		        %>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
	<div class="row">
		<div class="col-12">
			<table class="table table-striped mt-5">
			  <thead>
			    <tr>
			      <th scope="col">Nombres</th>
			      <th scope="col">Correo</th>
			      <th scope="col">Mensaje</th>
			      <th scope="col">Fecha</th>
			    </tr>
			  </thead>
			  <tbody>
			    <%
			    	Datos dt = new Datos();
			    	out.print(dt.getComentarios());
			    %>
			  </tbody>
			</table>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollTrigger.min.js"></script>
</body>
</html>