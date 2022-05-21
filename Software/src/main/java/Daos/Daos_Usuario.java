package Daos;

import java.sql.ResultSet;
import java.sql.SQLException;

import Clases.Usuario;
import Conexion.Conexion;

public class Daos_Usuario {

	private Usuario usuario;

    private Conexion conexion;
    private ResultSet rs;

    public Daos_Usuario() {
        usuario = new Usuario();
        conexion = new Conexion();
    }
    
    public int rolUsuario(String Usuario, String contrasenhia) throws SQLException{
        String consulta = "select nombre_Usuario, idRol_Usuario from usuario where nombre_Usuario= '" +Usuario +"' and contrasenhia_Usuario = '"+contrasenhia+"';";     
        rs = conexion.seleccionarDatos(consulta);
        while (rs.next()){
            usuario = new Usuario();
            usuario.setNombre_Usuario(rs.getString(1));
            usuario.setIdRol_Usuario(rs.getInt(2));
            return usuario.getIdRol_Usuario();
        }
        return -1; 
    }
    
    public String nombre_Usuario(String Usuario) throws SQLException{
        String consulta = "SELECT p.nombre_Persona, p.apellido_Persona"
                + " FROM usuario as u, persona AS p "
                + "WHERE p.id_Persona=u.id_Usuario"
                + " AND p.id_Persona = (SELECT u.idPersona_Usuario FROM usuario AS u WHERE u.nombre_Usuario= '"+Usuario+"');";
        
        rs = conexion.seleccionarDatos(consulta);
        
        while ( rs.next() ){
            usuario = new Usuario();
            
            usuario.setNombre_Persona(rs.getString(1));
            usuario.setApellido_Persona(rs.getString(2));
            
            return usuario.getNombre_Persona() + " " + usuario.getApellido_Persona();
            
        }
        return "No existe el usuario";
    }
    
}
