package Clases;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class OperacionesFav {
    private int cliente, producto;
    private String imgProd,nombreProd;
    Connection conexion = null;
    private String icono;
    String bd="dbbusinesscoffee";
    String url="jdbc:mysql://localhost:3306/"+bd;
    String user="root";
    String pass="";

    public OperacionesFav(){
        this.icono= "star";
    }
    
    public OperacionesFav(int cliente, int producto) {
        this.cliente = cliente;
        this.producto = producto;
        this.icono= "star";
    }
    
    public void insertFavorito(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                PreparedStatement ps;
                String sql = "insert into tbfavoritos(cliente, producto) values(?,?)";
                ps= conexion.prepareStatement(sql);
                ps.setInt(1, getCliente());
                ps.setInt(2, getProducto());
                ps.execute();
                ps.close();
                ps=null;
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No insertó favoritos "+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
    }
    
    public void eliminarFav(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                PreparedStatement ps;
                String sql = "delete from tbfavoritos where cliente=? and producto=?";
                ps= conexion.prepareStatement(sql);
                ps.setInt(1, getCliente());
                ps.setInt(2, getProducto());
                ps.execute();
                ps.close();
                ps=null;
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No insertó favoritos "+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
    }
    
    public OperacionesFav listarFavoritos(){
        String sql = "select * from tbfavoritos where cliente=? and producto=?";
        OperacionesFav p= new OperacionesFav();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                PreparedStatement ps;
                ResultSet res;
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, getCliente());
                ps.setInt(2, getProducto());
                res= ps.executeQuery();
                while(res.next()){
                    p.setCliente(res.getInt("cliente"));
                    p.setProducto(res.getInt("producto"));
                    this.icono="check_circle";
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No listó favoritos"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return p;
    }
    
    public List listarTodosFavoritos(int codigoCliente){
        String sql = "select * from tbfavoritos where cliente=?";
        String sql2 = "select imagenproducto,nombreproducto from tbproductos where codigoproducto=?";
        List<OperacionesFav>lista= new ArrayList<OperacionesFav>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conexion= DriverManager.getConnection(url,user,pass);
                PreparedStatement ps,ps2;
                ResultSet res,res2;
                String icono;
                ps=conexion.prepareStatement(sql);
                ps.setInt(1, codigoCliente);
                res= ps.executeQuery();
                while(res.next()){
                    OperacionesFav p= new OperacionesFav();
                    ps2=conexion.prepareStatement(sql2);
                    ps2.setInt(1, res.getInt("producto"));
                    res2= ps2.executeQuery();
                    while(res2.next()){
                        p.setNombreProd(res2.getString("nombreproducto"));
                        p.setImgProd(res2.getString("imagenproducto"));
                    }
                    p.setCliente(res.getInt("cliente"));
                    p.setProducto(res.getInt("producto"));
                    icono="check_circle";
                    p.setIcono(icono);
                    lista.add(p);
                }
                conexion.close();
            } catch (SQLException ex) {
                System.out.println("No listó favoritos"+ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Errorsiño " + ex.getStackTrace());
        }
        return lista;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public int getProducto() {
        return producto;
    }

    public void setProducto(int producto) {
        this.producto = producto;
    }

    public void setIcono(String icono) {
        this.icono = icono;
    }

    public String getIcono() {
        return icono;
    }

    public String getImgProd() {
        return imgProd;
    }

    public void setImgProd(String imgProd) {
        this.imgProd = imgProd;
    }

    public String getNombreProd() {
        return nombreProd;
    }

    public void setNombreProd(String nombreProd) {
        this.nombreProd = nombreProd;
    }
    
    
}
