
package ObjetosClases;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Menu {
    WebDriver driver;
    By PerfilC = By.name("PerfilC");
    By admon = By.name("admon");
    By menuIniS = By.name("menuIniS");
    By compCorrCl = By.name("compCorrCl");
    By compCorrAd = By.name("compCorrAd");
    By SignIn = By.name("SignIn");
    By RegCl = By.name("RegCl");
    By RegAd = By.name("RegAd"); 
    By Prod = By.name("Prod");
    
    public Menu(WebDriver driver) {
        this.driver = driver;
    }
    
    public void clickInicioS(){
        driver.findElement(menuIniS).click();
    }
    
    public void clickPerfilCl(){
        driver.findElement(PerfilC).click();
    }
    
    public void clickPerfilAd(){
        driver.findElement(admon).click();
    }
    
    public String ComprobCorrCl(){
        return driver.findElement(compCorrCl).getText();
    }
    
    public String ComprobCorrAd(){
        return driver.findElement(compCorrAd).getText();
    }
    
    public void clickRegistrarCl() throws InterruptedException{
        driver.findElement(SignIn).click();
        Thread.sleep(1000);
        driver.findElement(RegCl).click();
    }
    
    public void clickRegistrarAd() throws InterruptedException{
        driver.findElement(SignIn).click();
        Thread.sleep(1000);
        driver.findElement(RegAd).click();
    }
    
    public void clickProductos() throws InterruptedException{
        driver.findElement(Prod).click();
        Thread.sleep(1000);
    }
}
