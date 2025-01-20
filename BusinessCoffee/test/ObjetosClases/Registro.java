
package ObjetosClases;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Registro {
    WebDriver driver;
    By Cedula = By.name("Cedula");
    By Nombre = By.name("Nombre");
    By Apellido = By.name("Apellido");
    By Correo = By.name("Correo");
    By Contra = By.name("Contra");
    By ConfContra = By.name("ConfContra");
    By confReg = By.name("confReg");
    By FechaNac = By.name("FechaNac");
    By Genero = By.name("Genero");
    By feme = By.name("feme");
    By mascu = By.name("mascu");
    By Celular = By.name("Celular");
    
    public Registro(WebDriver driver){
        this.driver = driver;
    }
    
    public void setCedula(String strCedula){
        driver.findElement(Cedula).sendKeys(strCedula);
    }
    
    public void setNombre(String strNombre){
        driver.findElement(Nombre).sendKeys(strNombre);
    }
    
    public void setApellido(String strApellido){
        driver.findElement(Apellido).sendKeys(strApellido);
    }
    
    public void setCorreo(String strCorreo){
        driver.findElement(Correo).sendKeys(strCorreo);
    }
    
    public void setContra(String strContra){
        driver.findElement(Contra).sendKeys(strContra);
    }
    
    public void setConfContra(String strConfContra){
        driver.findElement(ConfContra).sendKeys(strConfContra);
    }
    
    public void setFechaNac(String strFechaNac){
        driver.findElement(FechaNac).click();
        driver.findElement(FechaNac).sendKeys(strFechaNac);
    }
    
    public void setCelular(String strCelular){
        driver.findElement(Celular).sendKeys(strCelular);
    }
    
    public void setGenero(String strGenero){
        driver.findElement(Genero).click();
        if("Masculino".equals(strGenero)){
            driver.findElement(mascu).click();
        }else if ("Femenino".equals(strGenero)){
            driver.findElement(feme).click();
        }
        
    }
    
    private void Regg() {
        driver.findElement(confReg).click();
    }
    public void RegInformacionCl(String cedula,String nombre,String apellido,String correo,String contra) throws InterruptedException{
        Thread.sleep(2000);
        this.setCedula(cedula);
        this.setNombre(nombre);
        this.setApellido(apellido);
        this.setCorreo(correo);
        this.setContra(contra);
        this.setConfContra(contra);
        this.Regg();
    }

    public void RegInformacionAd(String cedula,String nombre,String apellido,String genero,String fechaNac,String celular, String correo,String contra) throws InterruptedException{
        Thread.sleep(2000);
        this.setCedula(cedula);
        this.setNombre(nombre);
        this.setApellido(apellido);
        this.setGenero(genero);
        this.setFechaNac(fechaNac);
        this.setCelular(celular);
        this.setCorreo(correo);
        this.setContra(contra);
        this.setConfContra(contra);
        this.Regg();
    }
}
