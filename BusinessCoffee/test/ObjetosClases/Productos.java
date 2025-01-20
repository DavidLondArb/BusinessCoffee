
package ObjetosClases;
import java.awt.*;	
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class Productos {
    WebDriver driver;
    By comentario = By.name("comentario");
    By productoP = By.xpath("/html/body/div[3]/div/div[1]/div/a[2]/h3");
    By productoPAd = By.xpath("/html/body/div[3]/div/div[1]/div/a/h3");
    By enviar = By.xpath("/html/body/div[3]/div[5]/form/input[1]");
    By btnFav = By.xpath("/html/body/div[3]/div/div[1]/div/a[1]/i");
    By nameProd = By.xpath("/html/body/div[3]/div[2]/div/div/a[2]/h3");
    By elimProd = By.xpath("/html/body/div[3]/div[3]/div[2]/a[1]/i");
    By subProd = By.name("SubProd");
    By nombProd = By.name("nombreProducto");
    By descrip = By.name("Descripcion");
    By proc = By.name("Proceso");
    By observ = By.name("Observaciones");
    By url = By.name("urlProducto");
    
    public Productos(WebDriver driver){
       
        this.driver = driver;
    }
    
    public void clickComProd(){
        driver.findElement(productoP).click();
    }
    
    public void clickComProdAd(){
        driver.findElement(productoPAd).click();
    }
    
    public void setComentario(String strComentario){
        driver.findElement(comentario).clear();
        driver.findElement(comentario).sendKeys(strComentario);
    }
    
    public void clickEnviar(){
        driver.findElement(enviar).click();
    }
    
    public void clickFav(){
        driver.findElement(btnFav).click();
    }
    
    public void elimProdFav(){
        driver.findElement(By.xpath("/html/body/div[3]/div[2]/div/div/a[1]/i")).click();
    }
    
    public String nombreProd(){
        return driver.findElement(nameProd).getText();
    }
    
    public void clickSubir(){
        driver.findElement(subProd).click();
    }
    
    public void setNombreProd(String nombre){
        driver.findElement(nombProd).sendKeys(nombre);
    }
    
    public void setDescrProd(String descripcion){
        driver.findElement(descrip).sendKeys(descripcion);
    }
    
    public void setProcProd(String proceso){
        driver.findElement(proc).sendKeys(proceso);
    }
    
    public void setIngrProd(){
        for (int i = 0; i < 3; i++) {
            driver.findElement(By.name("Ingrediente"+i)).sendKeys("Ingrediente "+(i+1));
            driver.findElement(By.name("Cantidad"+i)).sendKeys("2");
        }
    }
    
    public void setImgProd() throws InterruptedException{
        driver.findElement(By.xpath("/html/body/div/form/div[6]/input")).sendKeys("C:\\Users\\David\\Desktop\\David\\Archivos\\Huesoscafe\\BusinessCoffee\\web\\imgProductos\\Cuadro1.jpg");
    }
    
    public void setObserProd(String observaciones){
        driver.findElement(observ).sendKeys(observaciones);
    }
    
    public void setUrlProd(String strUurl){
        driver.findElement(url).sendKeys(strUurl);
    }
    
    public void AgregarProducto(){
        driver.findElement(By.xpath("/html/body/div/form/input[1]")).click();
    }
    
    public void eliminarProducto(){
        driver.findElement(elimProd).click();
    }
    
    public void comentarProd(String comentario){
        this.setComentario(comentario);
        this.clickEnviar();
    }
    
    public void subirProducto(String nombre, String descripcion, String proceso, String observaciones, String url) throws InterruptedException{
        this.clickSubir();
        Thread.sleep(2000);
        this.setNombreProd(nombre);
        this.setDescrProd(descripcion);
        this.setIngrProd();
        this.setProcProd(proceso);
        this.setObserProd(observaciones);
        this.setImgProd();
        this.setUrlProd(url);
        this.AgregarProducto();
    }
}
