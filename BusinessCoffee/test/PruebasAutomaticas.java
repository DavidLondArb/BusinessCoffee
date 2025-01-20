import Clases.OperacionesAdminBD;
import Clases.OperacionesClienteBD;
import Clases.OperacionesProducto;
import ObjetosClases.Login;
import ObjetosClases.Menu;
import ObjetosClases.Productos;
import ObjetosClases.Registro;
import java.util.concurrent.TimeUnit;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import java.awt.AWTException;	
import java.awt.Robot;	
import java.awt.event.KeyEvent;
import static org.junit.Assert.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;
/**
 *
 * @author David
 */
public class PruebasAutomaticas {
    private static WebDriver driver = null;
    Login Log;
    Menu men;
    Registro Regis;
    Productos prod;
    public PruebasAutomaticas() {
    }
    
    @BeforeClass
    public static void setUpClass() {
        System.setProperty("webdriver.edge.driver", "C:\\msedgedriver.exe");
        driver = new EdgeDriver();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        driver.get("http://localhost:8080/BusinessCoffee/");
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
    /*@Test
    public void LoginAutoCliente() throws InterruptedException{
        String userName = "ejemplo@gmail.com";
        String password = "ejemplo123";
        Log = new Login(driver);
        men = new Menu(driver);
        men.clickInicioS();
        Log.loginApplicationCl(userName, password);
        Thread.sleep(1000);
        men.clickPerfilCl();
        assertEquals(userName,men.ComprobCorrCl());
    }
    @Test
    public void LoginAutoAdminAdmin() throws InterruptedException{
        String userName = "dsse@gmail.com";
        String password = "pruebadmin123";
        Log = new Login(driver);
        men = new Menu(driver);
        men.clickInicioS();
        Log.loginApplicationAd(userName, password);
        Thread.sleep(1000);
        men.clickPerfilAd();
        assertEquals(userName,men.ComprobCorrAd());
    }
    
    @Test
    public void RegistroAutoCliente() throws InterruptedException{
        String cedula="123",nombre="Ejemplo",apellido="Asdfas",correo="ejemplo33@ejemplo.com", contra="Ejemplo1234";
        men = new Menu(driver);
        Regis = new Registro(driver);
        Log = new Login(driver);
        men.clickInicioS();
        men.clickRegistrarCl();
        Regis.RegInformacionCl(cedula, nombre, apellido, correo, contra);
        Thread.sleep(2000);
        Log.loginApplicationCl(correo, contra);
        Thread.sleep(2000);
        men.clickPerfilCl();
        assertEquals(correo,men.ComprobCorrCl());
        
    }
    
    @Test
    public void RegistroAutoAdmin() throws InterruptedException{
        String cedula="123",nombre="Ejemplo",apellido="Asdfas",genero="Femenino",fechaNac="05102020",celular="123456",correo="ejemplo33@ejemplo.com", contra="Ejemplo1234",perfil="Admin";
        men = new Menu(driver);
        Regis = new Registro(driver);
        Log = new Login(driver);
        men.clickInicioS();
        men.clickRegistrarAd();
        Regis.RegInformacionAd(cedula, nombre, apellido, genero, fechaNac, celular, correo, contra);
        Thread.sleep(2000);
        Log.loginApplicationAd(correo, contra);
        Thread.sleep(2000);
        men.clickPerfilAd();
        assertEquals(correo,men.ComprobCorrAd());
    }
    
    @Test
    public void ComentarioCl() throws InterruptedException{
        String userName = "ejemplo@gmail.com";
        String password = "ejemplo123";
        String comentario = "Muy buen producto, me gusto mucho";
        Log = new Login(driver);
        men = new Menu(driver);
        prod = new Productos(driver);
        men.clickInicioS();
        Log.loginApplicationCl(userName, password);
        men.clickProductos();
        Thread.sleep(1000);
        prod.clickComProd();
        Thread.sleep(1000);
        prod.comentarProd(comentario);
    }
    
    @Test
    public void ComentarioAd() throws InterruptedException{
        String userName = "dsse@gmail.com";
        String password = "pruebadmin123";
        String comentario = "Muy buen producto, me gusto mucho";
        Log = new Login(driver);
        men = new Menu(driver);
        prod = new Productos(driver);
        men.clickInicioS();
        Log.loginApplicationAd(userName, password);
        men.clickProductos();
        Thread.sleep(1000);
        prod.clickComProdAd();
        Thread.sleep(1000);
        prod.comentarProd(comentario);
    }
    
    @Test
    public void AgregarFavorito() throws InterruptedException{
        String userName = "ejemplo@gmail.com";
        String password = "ejemplo123";
        String name = "Prueba";
        Log = new Login(driver);
        men = new Menu(driver);
        prod = new Productos(driver);
        men.clickInicioS();
        Log.loginApplicationCl(userName, password);
        Thread.sleep(1000);
        men.clickProductos();
        Thread.sleep(2000);
        prod.clickFav();
        Thread.sleep(1000);
        men.clickPerfilCl();
        Thread.sleep(1000);
        assertEquals(name, prod.nombreProd());
        prod.elimProdFav();
    }
    
    @Test
    public void AgregarProducto() throws InterruptedException, AWTException{
        String userName = "dsse@gmail.com";
        String password = "pruebadmin123";
        String nombre = "Prueba Producto", descripcion = "Un producto muy bueno y facil", proceso = "Caliente el cafe a ...", observaciones = "Disfrute", url = "https://www.youtube.com/";
        Log = new Login(driver);
        men = new Menu(driver);
        prod = new Productos(driver);
        men.clickInicioS();
        Log.loginApplicationAd(userName, password);
        men.clickPerfilAd();
        Thread.sleep(1000);
        prod.subirProducto(nombre, descripcion, proceso, observaciones, url);
    }
    
    @Test
    public void EliminarProducto() throws InterruptedException, AWTException{
        String userName = "dsse@gmail.com";
        String password = "pruebadmin123";
        Log = new Login(driver);
        men = new Menu(driver);
        prod = new Productos(driver);
        men.clickInicioS();
        Log.loginApplicationAd(userName, password);
        men.clickPerfilAd();
        Thread.sleep(1000);
        prod.eliminarProducto();
    }*/
    
}
