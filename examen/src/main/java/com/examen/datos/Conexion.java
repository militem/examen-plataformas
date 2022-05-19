package com.examen.datos;

import java.sql.*;

public class Conexion
{
	private Statement St;
	private Connection con;
	
	public Connection getConexion()
	{ 
		return this.con; 
	}
	
	public Conexion() {
		this.con = this.crearConexion();
	}
	
	Connection crearConexion()
	{
		try {
			Class.forName("org.postgresql.Driver");
		} catch (Exception e) {
			System.out.println("No se pudo cargar el puente JDBC-ODBC.");
			return null;
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/db_examen", "postgres", "1234");
			return con;
		} catch (Exception er) {
			System.out.println("Error de conexion");
			return null;
		}
	}


	public boolean Ejecutar(String sql)
	{
		try
		{
			St=getConexion().createStatement();
			St.execute(sql);
			return true;
		}catch(Exception ex){
			ex.getMessage();
			return false;
		}
	}

	public ResultSet Consulta(String sql)
	{
		String error = "";
		ResultSet reg = null;
		try
		{
			St=getConexion().createStatement();
			reg=St.executeQuery(sql);
		}
		catch(Exception ee)
		{
			error = ee.getMessage();
		}
		return(reg);
	}
}