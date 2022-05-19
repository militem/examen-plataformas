<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.examen.negocio.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ingreso Administración</title>
<link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
	const Toast = Swal.mixin({
	  toast: true,
	  position: 'top-end',
	  showConfirmButton: false,
	  timer: 3000,
	  timerProgressBar: true,
	  didOpen: (toast) => {
	    toast.addEventListener('mouseenter', Swal.stopTimer)
	    toast.addEventListener('mouseleave', Swal.resumeTimer)
	  }
	})
</script>
<div class="container"> 
	<div class="row">
		<div class="col-12 col-md-4"></div>
		<div class="col-12 col-md-4 login-contenedor">
			<form action="login.jsp" method="POST">
				<div class="form-outline mb-4 text-center">
					<div class="fs-4 fw-bold">Administración</div>
					<img src="assets/images/administrator.png" class="img-fluid">
				</div>
			  <div class="form-outline mb-2">
			    <input type="text" id="form1Example1" name="usuario" class="form-control" placeholder="Administrador" required/>
			    <label class="form-label" for="form1Example1">Usuario</label>
			  </div>
			  <div class="form-outline mb-2">
			    <input type="password" id="form1Example2" name="password" class="form-control" placeholder="*********" required/>
			    <label class="form-label" for="form1Example2">Contraseña</label>
			  </div>
			  <button type="submit" name="boton" value="ingresar" class="btn btn-primary btn-block"><i class="fa-solid fa-right-to-bracket me-2"></i>Ingresar</button>
			</form>
			<%
				Datos dt = new Datos();
				if(request.getParameter("boton") != null){
					String usuario = request.getParameter("usuario");
					String password = request.getParameter("password");
					if(dt.ingresar(usuario, password)){
						HttpSession sesion = request.getSession();
						sesion.setAttribute("usuario", usuario);
						response.sendRedirect("admin/index.jsp?login=true");
					}else{
						out.print("<script>Toast.fire({icon: 'error',title: 'Usuario o contraseña incorrecta.'})</script>");
					}
				}
				
				if(request.getParameter("cerrar") != null){
					session.invalidate();
				}
			%>
		</div>
		<div class="col-12 col-md-4"></div>
	</div>
</div>
<style>
	.login-contenedor{
		padding: 1rem;
		box-shadow: 2px 2px 5px #999;
		margin-top: 5rem;
	}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollTrigger.min.js"></script>
</body>
</html>