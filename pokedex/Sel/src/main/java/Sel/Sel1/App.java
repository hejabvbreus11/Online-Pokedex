package Sel.Sel1;
 
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
//import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedCondition;
public class App {
public static void main(String[]args) throws InterruptedException
{
	int s_wait_time = 600;
	int mid_wait_time = 2500;
	int l_wait_time = 3000;
	
	System.setProperty("webdriver.chrome.driver","/Users/yaojiawei/Documents/6220/FINALPROJECT/Sel/chromedriver");
    WebDriver driver = new ChromeDriver();
    Actions action = new Actions(driver);

    driver.get("http://localhost:8080/");
    Thread.sleep(3000);
   
    
    WebElement element = driver.findElements(By.className("icon")).get(0);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(1);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(2);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(3);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(4);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    action.click(element).perform();
    Thread.sleep(l_wait_time);
    element = driver.findElements(By.className("icon")).get(5);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(6);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(0);
    action.click(element).perform();
    
    Thread.sleep(mid_wait_time);
    
    //signup
    WebElement fname = driver.findElement(By.name("fname"));
    fname.sendKeys(Keys.ENTER);
    Thread.sleep(mid_wait_time);
    fname.sendKeys("Xinyan");
    Thread.sleep(mid_wait_time);
    fname.sendKeys(Keys.ENTER);
    
    WebElement lname = driver.findElement(By.name("lname"));
    lname.sendKeys(Keys.ENTER);
    Thread.sleep(mid_wait_time);
    lname.sendKeys("Wang");
    Thread.sleep(mid_wait_time);
    lname.sendKeys(Keys.ENTER);
    
    WebElement fav_generation = driver.findElement(By.name("fav_generation"));
    fav_generation.sendKeys("3");
    Thread.sleep(mid_wait_time);
    fav_generation.sendKeys(Keys.ENTER);
    
    WebElement password = driver.findElement(By.id("password"));
    password.sendKeys("password");
    Thread.sleep(l_wait_time);
    WebElement show_pwd = driver.findElement(By.id("show-pwd"));
    action.clickAndHold(show_pwd).perform();
    Thread.sleep(l_wait_time);
    password.sendKeys(Keys.ENTER);
    
    WebElement birthDate = driver.findElement(By.name("birthDate"));
    birthDate.sendKeys("2018-04-24");
    Thread.sleep(mid_wait_time);
    birthDate.sendKeys(Keys.ENTER);
    
    WebElement phone = driver.findElement(By.name("phone"));
    phone.sendKeys("332313124");
    Thread.sleep(mid_wait_time);
    phone.sendKeys(Keys.ENTER);
    Thread.sleep(l_wait_time);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys(Keys.BACK_SPACE);
    phone.sendKeys("(123) 456-7890");
    Thread.sleep(mid_wait_time);
    phone.sendKeys(Keys.ENTER);
    
    WebElement addr = driver.findElement(By.name("addr"));
    addr.sendKeys("Northeastern University");
    Thread.sleep(mid_wait_time);
    addr.sendKeys(Keys.ENTER);
    
    WebElement email = driver.findElement(By.name("email"));
    email.sendKeys("broken email");
    Thread.sleep(mid_wait_time);
    email.sendKeys(Keys.ENTER);
    Thread.sleep(l_wait_time);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys(Keys.BACK_SPACE);
    email.sendKeys("yao.jarvis@husky.neu.edu");
    Thread.sleep(mid_wait_time);
    email.sendKeys(Keys.ENTER);
    
    WebElement gender = driver.findElement(By.id("boy"));
    gender.sendKeys(Keys.ENTER);
    Thread.sleep(mid_wait_time);
    
    WebElement submit = driver.findElement(By.name("submit"));
    action.click(submit).perform();
    Thread.sleep(l_wait_time);
    
    //login
    
    WebElement log_fname = driver.findElement(By.id("fname"));
    log_fname.sendKeys("Wrong Name");
    Thread.sleep(mid_wait_time);
    log_fname.sendKeys(Keys.ENTER);
    
    WebElement log_password = driver.findElement(By.id("password"));
    log_password.sendKeys("wrong password");
    Thread.sleep(mid_wait_time);
    log_password.sendKeys(Keys.ENTER);
    Thread.sleep(mid_wait_time);
    
    WebElement login = driver.findElement(By.name("login"));
    action.click(login).perform();
    Thread.sleep(mid_wait_time);
    
    log_fname = driver.findElement(By.id("fname"));
    log_fname.sendKeys("Xinyan");
    Thread.sleep(mid_wait_time);
    log_fname.sendKeys(Keys.ENTER);
    
    log_password = driver.findElement(By.id("password"));
    log_password.sendKeys("password");
    Thread.sleep(mid_wait_time);
    log_password.sendKeys(Keys.ENTER);
    
    login = driver.findElement(By.name("login"));
    action.click(login).perform();
    
    //Pokedex
    Thread.sleep(mid_wait_time);
    WebElement pokedex = driver.findElements(By.className("poke-image")).get(0);
    action.moveToElement(pokedex).perform();
    Thread.sleep(s_wait_time);
    
    pokedex = driver.findElements(By.className("poke-image")).get(1);
    action.moveToElement(pokedex).perform();
    Thread.sleep(s_wait_time);
    
    pokedex = driver.findElements(By.className("poke-image")).get(2);
    action.moveToElement(pokedex).perform();
    Thread.sleep(s_wait_time);
    
    pokedex = driver.findElements(By.className("poke-image")).get(3);
    action.moveToElement(pokedex).perform();
    Thread.sleep(mid_wait_time);
    
    //Homepage
    element = driver.findElements(By.className("icon")).get(0);
    action.click(element).perform();
    Thread.sleep(mid_wait_time);
    element = driver.findElements(By.className("icon")).get(0);
    action.moveToElement(element).perform();
    Thread.sleep(s_wait_time);
    element = driver.findElements(By.className("icon")).get(6);
    action.moveToElement(element).perform();
    Thread.sleep(mid_wait_time);
    
    //Moves
    element = driver.findElements(By.className("icon")).get(3);
    action.click(element).perform();
    Thread.sleep(mid_wait_time);
    WebElement movedetail = driver.findElements(By.className("movedetail")).get(0);
    action.click(movedetail).perform();
    Thread.sleep(s_wait_time);
    movedetail = driver.findElements(By.className("movedetail")).get(1);
    action.click(movedetail).perform();
    Thread.sleep(s_wait_time);
    movedetail = driver.findElements(By.className("movedetail")).get(4);
    action.click(movedetail).perform();
    Thread.sleep(l_wait_time);
    movedetail = driver.findElements(By.className("movedetail")).get(0);
    action.click(movedetail).perform();
    Thread.sleep(s_wait_time);
    movedetail = driver.findElements(By.className("movedetail")).get(1);
    action.click(movedetail).perform();
    Thread.sleep(s_wait_time);
    movedetail = driver.findElements(By.className("movedetail")).get(4);
    action.click(movedetail).perform();
    Thread.sleep(mid_wait_time);
    
    WebElement page_link = driver.findElements(By.className("page-link")).get(0);
    action.moveToElement(page_link).perform();
    Thread.sleep(mid_wait_time);
    page_link = driver.findElements(By.className("page-link")).get(1);
    action.moveToElement(page_link).perform();
    Thread.sleep(mid_wait_time);
    action.click(page_link).perform();
    Thread.sleep(l_wait_time);
    
    WebElement move_name = driver.findElement(By.id("name"));
    move_name.sendKeys("wrong name");
    Thread.sleep(mid_wait_time);
    WebElement search = driver.findElement(By.name("search"));
    action.click(search).perform();
    Thread.sleep(mid_wait_time);
    move_name = driver.findElement(By.id("name"));
    move_name.sendKeys("slam");
    Thread.sleep(mid_wait_time);
    search = driver.findElement(By.name("search"));
    action.click(search).perform();
    Thread.sleep(l_wait_time);
    
    
    element = driver.findElements(By.className("icon")).get(4);
    action.click(element).perform();
    Thread.sleep(mid_wait_time);
    
//    driver.quit();
}
}
