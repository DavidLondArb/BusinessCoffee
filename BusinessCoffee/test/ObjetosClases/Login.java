
package ObjetosClases;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Login {
    WebDriver driver;
    By Correo = By.name("Correo");
    By Contra = By.name("Contra");
    By Perfil = By.name("Perfil");
    By Administrador = By.name("Administrador");
    By Cliente = By.name("Cliente");
    
    By Ingreso = By.name("Ingreso");
    
    public Login(WebDriver driver) {
        this.driver = driver;
    }
    
    public void setUserName(String strUserName){
        
        driver.findElement(Correo).sendKeys(strUserName);
    }
    
    public void setPassword(String strPassword){

        driver.findElement(Contra).sendKeys(strPassword);
    }
    
    public void perfil(){
        
        driver.findElement(Perfil).click();
    }
    
    public void Cliente(){
        
        driver.findElement(Cliente).click();
    }
    
    public void Admin(){
        driver.findElement(Administrador).click();
    }
    
    public void clickLogin(){
        
        driver.findElement(Ingreso).click();
    }    
    
    public void loginApplicationCl(String userName, String password){
        
        this.setUserName(userName);
        this.setPassword(password);
        this.perfil();
        this.Cliente();
        this.clickLogin();
    }
    public void loginApplicationAd(String userName, String password){
        
        this.setUserName(userName);
        this.setPassword(password);
        this.perfil();
        this.Admin();
        this.clickLogin();
    }
}
