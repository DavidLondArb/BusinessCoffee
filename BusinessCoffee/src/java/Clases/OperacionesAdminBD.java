package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;

public class OperacionesAdminBD {

    private int codigoAdmin,val,valregistro;
    private String cedulaAdmin, nombreAdmin, apellidoAdmin, generoAdmin;
    private String fechaNacAdmin, celularAdmin, emailAdmin, contrasenaAdmin;
    Connection conexion = null;
    String bd="dbbusinesscoffee";
    String url="jdbc:mysql://localhost:3306/"+bd;
    String user="root";
    String pass="";

    public OperacionesAdminBD(){}
    
    public OperacionesAdminBD(String cedulaAdmin, String nombreAdmin, String apellidoAdmin, String generoAdmin, String fechaNacAdmin, String celularAdmin, String emailAdmin, String contrasenaAdmin) {
        this.cedulaAdmin = cedulaAdmin;
        this.nombreAdmin = nombreAdmin;
        this.apellidoAdmin = apellidoAdmin;
        this.generoAdmin = generoAdmin;
        this.fechaNacAdmin =  fechaNacAdmin;
        this.celularAdmin = celularAdmin;
        this.emailAdmin = emailAdmin;
        this.contrasenaAdmin = contrasenaAdmin;
    }

    public void Resgistro() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                PreparedStatement ps;
                conexion= DriverManager.getConnection(url,user,pass);
                String sql="INSERT INTO tbadministradores(idAdmin, nombreAdmin, apellidoAdmin, fechaDeNacAdmin, celularAdmin, generoAdmin, correoAdmin, contrasenaAdmin) VALUES(?,?,?,DATE_FORMAT('"+fechaNacAdmin+"', '%Y %m %d'),?,?,?,?)";
                ps= conexion.prepareStatement(sql);
                ps.setString(1, cedulaAdmin);
                ps.setString(2, nombreAdmin);
                ps.setString(3, apellidoAdmin);
                ps.setString(4, celularAdmin);
                ps.setString(5, generoAdmin);
                ps.setString(6, emailAdmin);
                ps.setString(7, contrasenaAdmin);
                ps.execute();
                ps.close();
                ps=null;
                conexion.close();
                valregistro=1;
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
    }
    
    public OperacionesAdminBD mostrarInfoAdmin(int codigoAd){
        OperacionesAdminBD p= new OperacionesAdminBD();
        String sql = "select * from tbadministradores where CodigoAdmin=?";
        PreparedStatement ps;
        ResultSet res;   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoAd);
                res= ps.executeQuery();
                while(res.next()){
                    p.setCodigoAdmin(res.getInt("CodigoAdmin"));
                    p.setCedulaAdmin(res.getString("IDAdmin"));
                    p.setNombreAdmin(res.getString("NombreAdmin"));
                    p.setApellidoAdmin(res.getString("ApellidoAdmin"));
                    p.setFechaNacAdmin(res.getString("FechaDeNacAdmin"));
                    p.setCelularAdmin(res.getString("CelularAdmin"));
                    p.setGeneroAdmin(res.getString("GeneroAdmin"));
                    p.setEmailAdmin(res.getString("correoAdmin"));
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return p;
    }
    
    public void EliminarAdministrador(String cedul, String correo){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                System.out.println("conectó");
                PreparedStatement ps;
                conexion= DriverManager.getConnection(url,user,pass);
                String sql = "delete from tbAdministradores where idAdmin=? and correoAdmin=?";
                ps= conexion.prepareStatement(sql);
                ps.setString(1, cedul);
                ps.setString(2, correo);
                ps.execute();
                ps.close();
                ps=null;
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
    }
    public int validacion(String email){
        int resu=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                System.out.println("conectó");
                conexion= DriverManager.getConnection(url,user,pass);
                Statement sentenciaSQL = conexion.createStatement();
                String sql= "select count(*) as correo from TBADMINISTRADORES where correoadmin='"+email+"'";
                ResultSet res= sentenciaSQL.executeQuery(sql);
                res.next();
                resu=res.getInt("correo");
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return (resu);
    }

    public void setCodigoAdmin(int codigoAdmin) {
        this.codigoAdmin = codigoAdmin;
    }

    public void setCedulaAdmin(String cedulaAdmin) {
        this.cedulaAdmin = cedulaAdmin;
    }

    public void setNombreAdmin(String nombreAdmin) {
        this.nombreAdmin = nombreAdmin;
    }

    public void setApellidoAdmin(String apellidoAdmin) {
        this.apellidoAdmin = apellidoAdmin;
    }

    public void setGeneroAdmin(String generoAdmin) {
        this.generoAdmin = generoAdmin;
    }

    public void setFechaNacAdmin(String fechaNacAdmin) {
        this.fechaNacAdmin = fechaNacAdmin;
    }

    public void setCelularAdmin(String celularAdmin) {
        this.celularAdmin = celularAdmin;
    }

    public void setEmailAdmin(String emailAdmin) {
        this.emailAdmin = emailAdmin;
    }

    public void setContrasenaAdmin(String contrasenaAdmin) {
        this.contrasenaAdmin = contrasenaAdmin;
    }
    
    
    
    public int getVal(String email) {
        val=validacion(email);
        return val;
    }
    
    public int getCodigoAdmin() {
        return codigoAdmin;
    }

    public String getCedulaAdmin() {
        return cedulaAdmin;
    }

    public String getNombreAdmin() {
        return nombreAdmin;
    }

    public String getApellidoAdmin() {
        return apellidoAdmin;
    }

    public String getGeneroAdmin() {
        return generoAdmin;
    }

    public String getFechaNacAdmin() {
        return fechaNacAdmin;
    }

    public String getCelularAdmin() {
        return celularAdmin;
    }

    public String getEmailAdmin() {
        return emailAdmin;
    }

    public String getContrasenaAdmin() {
        return contrasenaAdmin;
    }

    public int getValregistro() {
        return valregistro;
    }
    
}
