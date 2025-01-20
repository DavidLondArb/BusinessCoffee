package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OperacionesComent {
    int producto,cliente,admin,codigocomentario;
    String comentario,fechaComent,nombreAdmin,apellidoAdmin,nombreCliente,apellidoCliente;
    Connection conexion = null;
    String bd="dbbusinesscoffee";
    String url="jdbc:mysql://localhost:3306/"+bd;
    String user="root";
    String pass="";
    PreparedStatement ps;
    ResultSet res;  
    
    public OperacionesComent(){}
    
    public List listarComentariosCliente(int codigoP){
        List<OperacionesComent>lista= new ArrayList<OperacionesComent>();
        String sql = "select * from tbcomentarioscliente where producto=? order by fechacomentario";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoP);
                res= ps.executeQuery();
                while(res.next()){
                    OperacionesComent p= new OperacionesComent();
                    p.setCodigocomentario(res.getInt("CodigoComentario"));
                    p.setProducto(res.getInt("producto"));
                    p.setCliente(res.getInt("cliente"));
                    p.setNombreCliente(p.nombreCliente(res.getInt("cliente")));
                    p.setApellidoCliente(p.apellidoCliente(res.getInt("cliente")));
                    p.setComentario(res.getString("comentario"));
                    p.setFechaComent(res.getString("fechaComentario").split(" ")[0]);
                    lista.add(p);
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return lista;
    }
    
    public void insertComentCl(int codigoP, int client, String coment){
        String sql = "insert into tbcomentarioscliente(producto,cliente,comentario) values(?,?,?);";
        String sql2= "DELETE FROM tbcomentarioscliente WHERE comentario=? OR comentario=? OR comentario=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoP);
                ps.setInt(2, client);
                ps.setString(3, coment);
                ps.execute();
                ps=null;
                ps=conexion.prepareStatement(sql2);
                ps.setString(1, "Deja tu comentario");
                ps.setString(2, " ");
                ps.setString(3, "");
                ps.execute();
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
    }
    
    public List listarComentariosAdmin(int codigoP){
        List<OperacionesComent>lista= new ArrayList<OperacionesComent>();
        String sql = "select * from tbcomentariosadmin where producto=? order by fechacomentario";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoP);
                res= ps.executeQuery();
                while(res.next()){
                    OperacionesComent p= new OperacionesComent();
                    p.setCodigocomentario(res.getInt("CodigoComentario"));
                    p.setProducto(res.getInt("producto"));
                    p.setAdmin(res.getInt("administrador"));
                    p.setNombreAdmin(p.nombreAdm(res.getInt("administrador")));
                    p.setApellidoAdmin(p.apellidoAdm(res.getInt("administrador")));
                    p.setComentario(res.getString("comentario"));
                    p.setFechaComent(res.getString("fechaComentario").split(" ")[0]);
                    lista.add(p);
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return lista;
    }
    
    public void insertComentAd(int codigoP, int administ, String coment){
        String sql = "insert into tbcomentariosadmin(producto,administrador,comentario) values(?,?,?);";
        String sql2= "DELETE FROM tbcomentariosadmin WHERE comentario=? OR comentario=? OR comentario=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoP);
                ps.setInt(2, administ);
                ps.setString(3, coment);
                ps.execute();
                ps=null;
                ps=conexion.prepareStatement(sql2);
                ps.setString(1, "Deja tu comentario");
                ps.setString(2, " ");
                ps.setString(3, "");
                ps.execute();
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
    }
    
    public String nombreAdm(int codigoadmin){
        String sql = "select NombreAdmin from tbadministradores where CodigoAdmin=?";
        String nombre="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoadmin);
                res= ps.executeQuery();
                while(res.next()){
                    nombre= res.getString("NombreAdmin");
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return nombre;
    }
    
    public String apellidoAdm(int codigoadmin){
        String sql = "select ApellidoAdmin from tbadministradores where CodigoAdmin=?";
        String apellido="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoadmin);
                res= ps.executeQuery();
                while(res.next()){
                    apellido= res.getString("ApellidoAdmin");
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return apellido;
    }
    
    public String nombreCliente(int codigoClien){
        String sql = "select NombreCliente from tbclientes where CodigoCliente=?";
        String nombre="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoClien);
                res= ps.executeQuery();
                while(res.next()){
                    nombre= res.getString("NombreCliente");
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return nombre;
    }
    
    public String apellidoCliente(int codigoClien){
        String sql = "select ApellidoCliente from tbclientes where CodigoCliente=?";
        String apellido="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoClien);
                res= ps.executeQuery();
                while(res.next()){
                    apellido= res.getString("ApellidoCliente");
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No conectó"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return apellido;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public int getCodigocomentario() {
        return codigocomentario;
    }

    public void setCodigocomentario(int codigocomentario) {
        this.codigocomentario = codigocomentario;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getFechaComent() {
        return fechaComent;
    }

    public void setFechaComent(String fechaComent) {
        this.fechaComent = fechaComent;
    }

    public int getProducto() {
        return producto;
    }

    public void setProducto(int producto) {
        this.producto = producto;
    }

    public String getNombreAdmin() {
        return nombreAdmin;
    }

    public void setNombreAdmin(String nombreAdmin) {
        this.nombreAdmin = nombreAdmin;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getApellidoAdmin() {
        return apellidoAdmin;
    }

    public void setApellidoAdmin(String apellidoAdmin) {
        this.apellidoAdmin = apellidoAdmin;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }
    
    
    
}
