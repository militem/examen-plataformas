package com.examen.negocio;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.examen.datos.*;

public class Datos {
	public String getNegocio(String id_negocio) {
		String sql = "SELECT * FROM tb_negocios WHERE id_negocio = " + id_negocio;
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			if(rs.next()){
				do {
					data += 
						  "<div class=\"row\">\r\n"
						+ "		<div class=\"col-12 col-md-12\">\r\n"
						+ "			<div class=\"fs-2 text-center fw-bold mt-4 mb-4 mov-title\">" + rs.getString(2) +"</div>\r\n"
						+ "		</div>\r\n"
						+ "	</div>\r\n"
						+ "	<div class=\"row mov-right\">\r\n"
						+ "		<div class=\"col-12 col-md-6\">\r\n"
						+ "			<div id=\"carouselExampleControls\" class=\"carousel slide imagen-mov\" data-bs-ride=\"carousel\">\r\n"
						+ "			  <div class=\"carousel-inner\">\r\n"
						+ "			    <div class=\"carousel-item active\">\r\n"
						+ "			      <img src=" + rs.getString(7) + " class=\"img-fluid w-100\" alt=\"...\" style='height: 500px;'>\r\n"
						+ "			    </div>\r\n"
						+ "			    <div class=\"carousel-item\">\r\n"
						+ "			      <img src=" + rs.getString(8) + " class=\"img-fluid w-100\" alt=\"...\" style='height: 500px;'>\r\n"
						+ "			    </div>\r\n"
						+ "			    <div class=\"carousel-item\">\r\n"
						+ "			      <img src=" + rs.getString(9) + " class=\"img-fluid w-100\" alt=\"...\" style='height: 500px;'>\r\n"
						+ "			    </div>\r\n"
						+ "			  </div>\r\n"
						+ "			  <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"prev\">\r\n"
						+ "			    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n"
						+ "			    <span class=\"visually-hidden\">Previous</span>\r\n"
						+ "			  </button>\r\n"
						+ "			  <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"next\">\r\n"
						+ "			    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n"
						+ "			    <span class=\"visually-hidden\">Next</span>\r\n"
						+ "			  </button>\r\n"
						+ "			</div>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=\"col-12 col-md-6\">\r\n"
						+ "			<div class='fs-5'>Propietario: " + rs.getString(6) +"</div>"
						+ 			"<div class='fs-6 mt-2 mb-2 texto-justificado'>" + rs.getString(3) + "</div>"
						+ "		</div>\r\n"
						+ "	</div>\r\n"
						+ "	<div class=\"row mt-2 mb-4 mov-left\">"
						+ "		<div class=\"col-12 col-md-12\">"
						+ "			<div class=\"fs-4 mb-2 fw-bold text-center\">"
						+ "				<i class=\"fa-solid fa-map-location-dot me-2\"></i>Ubicación del negocio"
						+ "			</div>"
						+ "		</div>"
						+ "		<div class=\"col-12 col-md-12\">"
						+ "			<div id=\"mapa\"></div>"
						+ "		</div>"
						+ "	</div>"
						+ "<div class=\"row\">\r\n"
						+ "		<div class=\"col-12 col-md-4\"></div>\r\n"
						+ "		<div class=\"col-12 col-md-4\">\r\n"
						+ "			<div class=\"fs-4 text-center fw-bold mb-2\"><i class=\"fa-solid fa-address-book me-2\"></i>Contacto</div>\r\n"
						+ "			<form method='POST'>\r\n"
						+ "			  <div class=\"form-outline mb-2\">\r\n"
						+ " 			<input name='id' value='"+ rs.getString(1) +"' disabled hidden>"
						+ "			    <input type=\"text\" id=\"form4Example1\" name='nombres' class=\"form-control\" placeholder=\"Nombre Apellido\" required/>\r\n"
						+ "			    <label class=\"form-label\" for=\"form4Example1\"><i class=\"fa-solid fa-user me-2\"></i>Nombre</label>\r\n"
						+ "			  </div>\r\n"
						+ "			  <div class=\"form-outline mb-2\">\r\n"
						+ "			    <input type=\"email\" id=\"form4Example2\" name='email' class=\"form-control\" placeholder=\"correo@gmail.com\" required/>\r\n"
						+ "			    <label class=\"form-label\" for=\"form4Example2\"><i class=\"fa-solid fa-at me-2\"></i>Correo</label>\r\n"
						+ "			  </div>\r\n"
						+ "			  <div class=\"form-outline mb-2\">\r\n"
						+ "			    <textarea class=\"form-control\" id=\"form4Example3\" name='mensaje' rows=\"4\" placeholder=\"Mensaje a enviar.\" required></textarea>\r\n"
						+ "			    <label class=\"form-label\" for=\"form4Example3\"><i class=\"fa-solid fa-message me-2\"></i>Mensaje</label>\r\n"
						+ "			  </div>\r\n"
						+ "			  <button type=\"submit\" class=\"btn btn-primary btn-block mb-4\"><i class=\"fa-solid fa-paper-plane me-2\"></i>Enviar</button>\r\n"
						+ "			</form>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=\"col-12 col-md-4\"></div>\r\n"
						+ "	</div>"
						+ "<script>\r\n"
						+ "function initMap() {\r\n"
						+ "  const uluru = { lat: " + rs.getDouble(4) + ", lng: " + rs.getDouble(5) +" };\r\n"
						+ "  const map = new google.maps.Map(document.getElementById(\"mapa\"), {\r\n"
						+ "    zoom: 20,\r\n"
						+ "    center: uluru,\r\n"
						+ "  });\r\n"
						+ "  const marker = new google.maps.Marker({\r\n"
						+ "    position: uluru,\r\n"
						+ "    map: map,\r\n"
						+ "  });\r\n"
						+ "}\r\n"
						+ "window.initMap = initMap;              \r\n"
						+ "</script>";
				}while(rs.next());
			}else{
				data += "<div class=\"row\">\r\n"
						+ "		<div class=\"col-12 col-md-12\">\r\n"
						+ "			<div class=\"fs-1 text-center mb-4\">\r\n"
						+ "				<img src=\"../assets/images/no-results.png\" class=\"img-fluid mt-4\"><br>\r\n"
						+ "				ERROR 404 <br> \r\n"
						+ "				Página no encontrada <br>\r\n"
						+ "				Deberías regresar al apartado principal.<br>\r\n"
						+ "				<a href=\"../negocios/\" class=\"btn btn-primary\"><i class=\"fa-solid fa-rotate-left me-2\"></i>Regresar</a>\r\n"
						+ "			</div>\r\n"
						+ "		</div>\r\n"
						+ "	</div>";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
	
	public String getNegocios() {
		String sql = "SELECT * FROM tb_negocios";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			while(rs.next()) {
				data += "<div class=\"col-12 col-sm-12 col-md-4 mt-4\">\r\n"
						+ "			<div class=\"card card-mov\">\r\n"
						+ "			  <div class=\"bg-image hover-overlay ripple\" data-mdb-ripple-color=\"light\">\r\n"
						+ "			    <img src=" + rs.getString(9) + " class=\"img-fluid w-100\"/ style='height: 300px;'>\r\n"
						+ "			  </div>\r\n"
						+ "			  <div class=\"card-body\">\r\n"
						+ "			    <h5 class=\"card-title\">" + rs.getString(2) + "</h5>\r\n"
						+ "			    <p class=\"card-text texto-justificado\">" + rs.getString(3)  + "</p>\r\n"
						+ "			    <a href='../negocio/index.jsp?id="+ rs.getString(1) +"' class=\"btn btn-primary\"><i class=\"fa-solid fa-angles-right me-2\"></i>Saber más</a>\r\n"
						+ "			  </div>\r\n"
						+ "			</div>\r\n"
						+ "		</div>";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
	
	public boolean ingresar(String usuario, String password){
		String sql = "SELECT * FROM tb_usuarios WHERE usuario = '" + usuario + "' AND password = '" + password + "'";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		try {
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
			return false;
		}
	}
	
	public String buscar(String busqueda) {
		String sql = "SELECT * FROM tb_negocios WHERE nombre LIKE '" + busqueda + "%'";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			if(rs.next()){
				do {
					data += "<div class=\"col-12 col-sm-12 col-md-4 mt-4\">\r\n"
							+ "			<div class=\"card\">\r\n"
							+ "			  <div class=\"bg-image hover-overlay ripple\" data-mdb-ripple-color=\"light\">\r\n"
							+ "			    <img src=" + rs.getString(9) + " class=\"img-fluid w-100\"/ style='height: 300px;'>\r\n"
							+ "			  </div>\r\n"
							+ "			  <div class=\"card-body\">\r\n"
							+ "			    <h5 class=\"card-title\">" + rs.getString(2) + "</h5>\r\n"
							+ "			    <p class=\"card-text texto-justificado\">" + rs.getString(3)  + "</p>\r\n"
							+ "			    <a href='../negocio/index.jsp?id="+ rs.getString(1) +"' class=\"btn btn-primary\"><i class=\"fa-solid fa-angles-right me-2\"></i>Saber más</a>\r\n"
							+ "			  </div>\r\n"
							+ "			</div>\r\n"
							+ "		</div>";
				}while(rs.next());
			}else {
				data += "		<div class=\"col-12 col-md-12\">\r\n"
						+ "			<div class=\"fs-1 text-center mb-4\">\r\n"
						+ "				<img src=\"../assets/images/warning.png\" class=\"img-fluid mt-4\"><br>\r\n"
						+ "				Ooops!! <br> \r\n"
						+ "				Ese negocio no se encuentra en nuestros registros. <br>\r\n"
						+ "				Deberías regresar al apartado principal.<br>\r\n"
						+ "				<a href=\"../negocios/\" class=\"btn btn-primary\"><i class=\"fa-solid fa-rotate-left me-2\"></i>Regresar</a>\r\n"
						+ "			</div>\r\n"
						+ "		</div>\r\n";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
	
	public boolean guardarComentario(String nombres, String email, String mensaje, String fecha) {
		String sql = "INSERT INTO tb_comentarios VALUES ('" + nombres +"', '" + email + "', '" + mensaje + "', '" + fecha + "')";
		Conexion conn = new Conexion();
		boolean flag = conn.Ejecutar(sql);
		if(flag) {
			return true;
		}else {
			return false;
		}
	}
	
	public String getInfoGeneral() {
		String sql = "SELECT * FROM tb_general";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			while(rs.next()) {
				data += "<form class=\"row\" method=\"POST\">\r\n"
						+ "		<div class=\"col-12 col-md-6\">\r\n"
						+ "			<div class=\"input-group\">\r\n"
						+ "			  <span class=\"input-group-text\">Historia</span>\r\n"
						+ "			  <textarea class=\"form-control\" aria-label=\"With textarea\" name=\"historia\" rows='10'>" + rs.getString(1) + "</textarea>\r\n"
						+ "			</div>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=\"col-12 col-md-6\">\r\n"
						+ "			<div class=\"input-group\">\r\n"
						+ "			  <span class=\"input-group-text\">Lugar de Interés</span>\r\n"
						+ "			  <textarea class=\"form-control\" aria-label=\"With textarea\" name=\"lugar-interes\" rows='10'>" + rs.getString(2) + "</textarea>\r\n"
						+ "			</div>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=\"col-12 d-flex justify-content-center\">\r\n"
						+ "			<button class=\"btn btn-success mt-3\" name='boton' value='guardar' type=\"submit\"><i class=\"fa-solid fa-floppy-disk me-2\"></i>Guardar</button>\r\n"
						+ "		</div>\r\n"
						+ "	</form>";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
	
	public boolean setInfoGeneral(String historia, String lugar_interes) {
		String sql = "UPDATE tb_general SET breve_historia = '" + historia +"', lugar_interes = '" + lugar_interes + "'";
		Conexion conn = new Conexion();
		boolean flag = conn.Ejecutar(sql);
		if(flag) {
			return true;
		}else {
			return false;
		}
	}
	
	public String getComentarios() {
		String sql = "SELECT * FROM tb_comentarios";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			while(rs.next()) {
				data += "<tr>\r\n"
						+ "	<td>"+ rs.getString(1) +"</td>\r\n"
						+ " <td>"+ rs.getString(2) +"</td>\r\n"
						+ "	<td>"+ rs.getString(3) +"</td>\r\n"
						+ "	<td>"+ rs.getString(4) +"</td>\r\n"
						+ "</tr>";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
	
	public String infoInicio() {
		String sql = "SELECT * FROM tb_general";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			while(rs.next()) {
				data += "<div class=\"row\">\r\n"
						+ "		<div class=\"col-12 col-sm-12 col-md-8\">\r\n"
						+ "			<figure class=\"text-center mt-md-5 texto-mov-p\">\r\n"
						+ "			  <blockquote class=\"blockquote\">\r\n"
						+ "			    <p>\r\n"
						+ 					rs.getString(1)
						+ "			    </p>\r\n"
						+ "			  </blockquote>\r\n"
						+ "			  <figcaption class=\"blockquote-footer\">\r\n"
						+ "			    Breve historia del barrio <cite title=\"Source Title\">Obrero Independiente</cite>\r\n"
						+ "			  </figcaption>\r\n"
						+ "			</figure>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=\"col-12 col-sm-12 col-md-4 mt-3\">\r\n"
						+ "			<img src=\"assets/images/image5.jpg\" class=\"img-fluid rounded-circle hover-shadow imagen-mov-p\">\r\n"
						+ "		</div>\r\n"
						+ "	</div>\r\n"
						+ "	<div class=\"row mt-md-5\">\r\n"
						+ "		<div class=\"col-sm-12 col-md-4\">\r\n"
						+ "			<div id=\"carouselExampleControls\" class=\"carousel slide imagen-mov\" data-bs-ride=\"carousel\">\r\n"
						+ "			  <div class=\"carousel-inner\">\r\n"
						+ "			    <div class=\"carousel-item active\">\r\n"
						+ "			      <img src=\"assets/images/image4.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n"
						+ "			    </div>\r\n"
						+ "			    <div class=\"carousel-item\">\r\n"
						+ "			      <img src=\"assets/images/image5.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n"
						+ "			    </div>\r\n"
						+ "			    <div class=\"carousel-item\">\r\n"
						+ "			      <img src=\"assets/images/image2.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n"
						+ "			    </div>\r\n"
						+ "			  </div>\r\n"
						+ "			  <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"prev\">\r\n"
						+ "			    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n"
						+ "			    <span class=\"visually-hidden\">Previous</span>\r\n"
						+ "			  </button>\r\n"
						+ "			  <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"next\">\r\n"
						+ "			    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n"
						+ "			    <span class=\"visually-hidden\">Next</span>\r\n"
						+ "			  </button>\r\n"
						+ "			</div>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=\"col-sm-12 col-md-8\">\r\n"
						+ "			<div class=\"texto-mov mt-md-4\">\r\n"
						+ "				<p class=\"fs-1\">Lugar de Interés</p>\r\n"
						+ 				rs.getString(2)
						+ "			</div>\r\n"
						+ "		</div>\r\n"
						+ "	</div>";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
	
	public String footerNegocios() {
		String sql = "SELECT id_negocio, nombre FROM tb_negocios LIMIT 5";
		Conexion conn = new Conexion();
		ResultSet rs = null;
		rs = conn.Consulta(sql);
		String data = "";
		try {
			while(rs.next()) {
				data += "<p>\r\n"
						+ "  <a href=\"http://localhost:8080/examen/negocio/index.jsp?id=" + rs.getString(1) + "\" class=\"text-reset\">"+ rs.getString(2) +"</a>\r\n"
						+ "</p>";
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.print("Error en la consulta");
		}
		return data;
	}
}
