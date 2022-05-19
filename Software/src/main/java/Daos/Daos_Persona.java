package Daos;

import java.sql.ResultSet;

import Clases.Persona;
import Conexion.Conexion;

public class Daos_Persona {

	private Persona persona;

    private Conexion conexion;
    private ResultSet rs;

    public Daos_Persona() {
        persona = new Persona();
        conexion = new Conexion();
    }

    public boolean agregarPersona(String nombre_Persona, String apellido_Persona, String email_Persona) {
        String Consulta = "insert into persona values (" + null + ", '" + nombre_Persona + "', '" + apellido_Persona + "', '" + email_Persona + "');";
        if (conexion.insertarDatos(Consulta)) {
            conexion.desconectar();
            return true;

        } else { 
            conexion.desconectar();
            return false;
        }
    }

}
