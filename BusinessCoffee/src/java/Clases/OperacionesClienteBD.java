package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OperacionesClienteBD {
    private int codigoClient,val,valregistro;
    private String cedulaClient, nombreClient, apellidoClient, emailClient, contrasenaClient;
    Connection conexion = null;
    String bd="dbbusinesscoffee";
    String url="jdbc:mysql://localhost:3306/"+bd;
    String user="root";
    String pass="";

    public OperacionesClienteBD(){}
    
    public OperacionesClienteBD(String cedulaClient, String nombreClient, String apellidoClient, String emailClient, String contrasenaClient) {
        this.cedulaClient = cedulaClient;
        this.nombreClient = nombreClient;
        this.apellidoClient = apellidoClient;
        this.emailClient = emailClient;
        this.contrasenaClient = contrasenaClient;
    }
    
    public void Resgistro() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                System.out.println("conectó");
                System.out.println(cedulaClient+", "+nombreClient+", "+apellidoClient+", "+emailClient);
                PreparedStatement ps;
                conexion= DriverManager.getConnection(url,user,pass);
                String sql = "INSERT INTO tbClientes(idCliente, nombreCliente, apellidoCliente, correoCliente, contrasenaCliente) VALUES(?,?,?,?,?)";
                ps= conexion.prepareStatement(sql);
                ps.setString(1, cedulaClient);
                ps.setString(2, nombreClient);
                ps.setString(3, apellidoClient);
                ps.setString(4, emailClient);
                ps.setString(5, contrasenaClient);
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
    
    public int validacion(String email){
        Connection conexion = null;
        int resu=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                System.out.println("conectó");
                conexion= DriverManager.getConnection(url,user,pass);
                Statement sentenciaSQL = conexion.createStatement();
                String sql = "select count(*) as correo from TBCLIENTES where emailadmin='"+email+"'";
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
    public int getVal(String email) {
        val=validacion(email);
        return val;
    }

    public OperacionesClienteBD mostrarInfoCliente(int codigoCl){
        OperacionesClienteBD p= new OperacionesClienteBD();
        String sql = "select * from tbclientes where CodigoCliente=?";
        PreparedStatement ps;
        ResultSet res;   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoCl);
                res= ps.executeQuery();
                while(res.next()){
                    p.setCodigoClient(res.getInt("CodigoCliente"));
                    p.setCedulaClient(res.getString("IDCliente"));
                    p.setNombreClient(res.getString("NombreCliente"));
                    p.setApellidoClient(res.getString("ApellidoCliente"));
                    p.setEmailClient(res.getString("CorreoCliente"));
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
    
    public void eliminarCliente(String cedul, String correo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                System.out.println("conectó");
                PreparedStatement ps;
                conexion= DriverManager.getConnection(url,user,pass);
                String sql = "delete from tbClientes where idCliente=? and correoCliente=?";
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
    
    public void setCodigoClient(int codigoClient) {
        this.codigoClient = codigoClient;
    }

    public void setCedulaClient(String cedulaClient) {
        this.cedulaClient = cedulaClient;
    }

    public void setNombreClient(String nombreClient) {
        this.nombreClient = nombreClient;
    }

    public void setApellidoClient(String apellidoClient) {
        this.apellidoClient = apellidoClient;
    }

    public void setEmailClient(String emailClient) {
        this.emailClient = emailClient;
    }

    public void setContrasenaClient(String contrasenaClient) {
        this.contrasenaClient = contrasenaClient;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    
    
    public int getCodigoClient() {
        return codigoClient;
    }

    public int getVal() {
        return val;
    }

    public String getCedulaClient() {
        return cedulaClient;
    }

    public String getNombreClient() {
        return nombreClient;
    }

    public String getApellidoClient() {
        return apellidoClient;
    }

    public String getEmailClient() {
        return emailClient;
    }

    public String getContrasenaClient() {
        return contrasenaClient;
    }

    public int getValregistro() {
        return valregistro;
    }
    
    
    
}
