import Clases.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Part;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author David
 */
public class PruebasUnitarias {
    
    public PruebasUnitarias() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
        OperacionesClienteBD conexionCliente = new OperacionesClienteBD();
        conexionCliente.eliminarCliente("123", "ejemplo33@ejemplo.com");
        OperacionesAdminBD conexionAdmin = new OperacionesAdminBD();
        conexionAdmin.EliminarAdministrador("123", "ejemplo33@ejemplo.com");
        OperacionesProducto conexionProducto = new OperacionesProducto();
        String img="Ejemplo",nombre="Ejemplo";
        conexionProducto.eliminarProducto2(nombre, img);
    }

    @Test
    public void Comprobacion_Login_Cliente() {
        int Esperado=1;
        String correo="ejemplo@ejemplo.com", contra="Ejemplo123",perfil="Cliente";
        IniciarSesion conexion = new IniciarSesion(correo, contra, perfil);
        int validacion = conexion.ValidarInicio();
        assertEquals(Esperado,validacion);
    }
    @Test
    public void Comprobacion_Login_Cliente_Mal() {
        int Esperado=0;
        String correo="ejemplo@ejemplo.com", contra="Ejemplo1234",perfil="Cliente";
        IniciarSesion conexion = new IniciarSesion(correo, contra, perfil);
        int validacion = conexion.ValidarInicio();
        assertEquals(Esperado,validacion);
    }
    
    @Test
    public void Comprobacion_Login_Admin() {
        int Esperado=2;
        String correo="ejemplo@ejemplo.com", contra="Ejemplo123",perfil="Admin";
        IniciarSesion conexion = new IniciarSesion(correo, contra, perfil);
        int validacion = conexion.ValidarInicio();
        assertEquals(Esperado,validacion);
    }
    @Test
    public void Comprobacion_Login_Admin_Mal() {
        int Esperado=0;
        String correo="ejemplo@ejemplo.com", contra="Ejemplo1234",perfil="Admin";
        IniciarSesion conexion = new IniciarSesion(correo, contra, perfil);
        int validacion = conexion.ValidarInicio();
        assertEquals(Esperado,validacion);
    }
    
    @Test
    public void Registro_Cliente() {
        int Esperado=1;
        String cedula="123",nombre="Ejemplo",apellido="Asdfas",correo="ejemplo33@ejemplo.com", contra="Ejemplo1234",perfil="Admin";
        OperacionesClienteBD conexion = new OperacionesClienteBD(cedula, nombre, apellido, correo, contra);
        conexion.Resgistro();
        int validacion= conexion.getValregistro();
        assertEquals(Esperado,validacion);
    }
    
    @Test
    public void Registro_Administrador() {
        int Esperado=1;
        String cedula="123",nombre="Ejemplo",apellido="Asdfas",genero="Masculino",fechaNac="2020/10/05",celular="123456",correo="ejemplo33@ejemplo.com", contra="Ejemplo1234",perfil="Admin";
        OperacionesAdminBD conexion = new OperacionesAdminBD(cedula, nombre, apellido, genero, fechaNac, celular, correo, contra);
        conexion.Resgistro();
        int validacion= conexion.getValregistro();
        assertEquals(Esperado,validacion);
    }
    
    @Test
    public void Insert_Producto() throws IOException {
        int Esperado=1,admin=1;
        String nombreProducto="Ejemplo", descProducto="Ejemplo", procedimiento="Ejemplo", observaciones="Ejemplo", img="Ejemplo", urlProducto="Ejemplo";
        OperacionesProducto conexion = new OperacionesProducto();
        MostrarProductos p= new MostrarProductos();
        p.setAdmin(admin);
        p.setNombreProducto(nombreProducto);
        p.setDescProducto(descProducto);
        p.setProcedimiento(procedimiento);
        p.setObservaciones(observaciones);
        p.setUrlProducto(urlProducto);
        p.setImg(img);
        try {
            conexion.insertProducto(p);
        } catch (IOException ex) {
            Logger.getLogger(PruebasUnitarias.class.getName()).log(Level.SEVERE, null, ex);
        }
        int validacion= conexion.getValregistro();
        assertEquals(Esperado,validacion);
    }

    
}