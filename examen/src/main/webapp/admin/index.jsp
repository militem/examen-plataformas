<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" session="true" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Panel Administración</title>
<link rel="icon" type="image/x-icon" href="../assets/images/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
	const Toast = Swal.mixin({
	  toast: true,
	  position: 'top',
	  showConfirmButton: false,
	  timer: 3000,
	  timerProgressBar: true,
	  didOpen: (toast) => {
	    toast.addEventListener('mouseenter', Swal.stopTimer)
	    toast.addEventListener('mouseleave', Swal.resumeTimer)
	  }
	})
</script>
<%
	HttpSession sesion = request.getSession();
	String usuario = "";
	String cerrar = "";
	String mensaje = "";
	if(sesion.getAttribute("usuario") != null){
		usuario += sesion.getAttribute("usuario").toString();
		cerrar += "<a href='../login.jsp?cerrar=true' class='dropdown-item'>Cerrar Sesion</a>";
		mensaje += "<script>Toast.fire({icon: 'info',title: 'Bienvenido de nuevo "+ usuario +"'})</script>";
	}else{
		out.print("<script>location.replace('../login.jsp');</script>");
	}
	if(request.getParameter("login") != null){
		out.print(mensaje);	
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
          <a class="nav-link active" aria-current="page" href="#">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="comentarios.jsp">Comentarios</a>
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
<div class="fs-3 fw-bold text-center mt-5 mb-3">Información General - Inicio</div>
<div class="container">
	<%
		String historia = "";
		String lugar_interes = "";
		Datos dt = new Datos();
		out.print(dt.getInfoGeneral());
		if(request.getParameter("boton") != null){
			historia += request.getParameter("historia");
			lugar_interes += request.getParameter("lugar-interes");
			if(dt.setInfoGeneral(historia, lugar_interes)){
				out.print("<script>Toast.fire({icon: 'success',title: 'Cambios guardados.'})</script>");
			}else{
				out.print("<script>Toast.fire({icon: 'error',title: 'No se guardaron los cambios.'})</script>");
			}
		}
	%>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollTrigger.min.js"></script>
</body>
</html>