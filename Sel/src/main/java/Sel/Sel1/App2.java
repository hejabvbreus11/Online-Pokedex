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
public class App2 {
public static void main(String[]args) throws InterruptedException
{
	int s_wait_time = 600;
	int mid_wait_time = 2000;
	int l_wait_time = 3000;
	
	System.setProperty("webdriver.chrome.driver","/Users/yaojiawei/Documents/6220/FINALPROJECT/Sel/chromedriver");
    WebDriver driver = new ChromeDriver();
    Actions action = new Actions(driver);

    driver.get("http://localhost:8080/");
    
    //signup
    Thread.sleep(s_wait_time);
    WebElement element = driver.findElements(By.className("icon")).get(0);
    action.click(element).perform();
    
    Thread.sleep(mid_wait_time);
    WebElement fname = driver.findElement(By.name("fname"));
    fname.sendKeys("Jarvis");
    Thread.sleep(mid_wait_time);
    fname.sendKeys(Keys.ENTER);
    
    WebElement lname = driver.findElement(By.name("lname"));
    lname.sendKeys("Yao");
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
    phone.sendKeys("(123) 456-7890");
    Thread.sleep(mid_wait_time);
    phone.sendKeys(Keys.ENTER);
    
    WebElement addr = driver.findElement(By.name("addr"));
    addr.sendKeys("Northeastern University");
    Thread.sleep(mid_wait_time);
    addr.sendKeys(Keys.ENTER);
    
    WebElement email = driver.findElement(By.name("email"));
    email.sendKeys("yao.jarvis@husky.neu.edu");
    Thread.sleep(mid_wait_time);
    email.sendKeys(Keys.ENTER);
    
    WebElement gender = driver.findElement(By.id("boy"));
    gender.sendKeys(Keys.ARROW_LEFT);
    Thread.sleep(mid_wait_time);
    gender.sendKeys(Keys.ENTER);
    Thread.sleep(mid_wait_time);
    
    WebElement submit = driver.findElement(By.name("submit"));
    action.click(submit).perform();
    Thread.sleep(l_wait_time);
   
    //login
    
    WebElement log_fname = driver.findElement(By.id("fname"));
    log_fname.sendKeys("Jarvis");
    Thread.sleep(mid_wait_time);
    log_fname.sendKeys(Keys.ENTER);
    
    WebElement log_password = driver.findElement(By.id("password"));
    log_password.sendKeys("password");
    Thread.sleep(mid_wait_time);
    log_password.sendKeys(Keys.ENTER);
    Thread.sleep(mid_wait_time);
    
    WebElement login = driver.findElement(By.name("login"));
    action.click(login).perform();
    
    //Top 10
    element = driver.findElements(By.className("icon")).get(4);
    action.click(element).perform();
    Thread.sleep(mid_wait_time);
    WebElement stat = driver.findElement(By.name("name"));
    action.moveToElement(stat).perform();
    Thread.sleep(mid_wait_time);
    action.click(stat).perform();
    Thread.sleep(l_wait_time);
    
    stat = driver.findElement(By.name("hp"));
    action.moveToElement(stat).perform();
    Thread.sleep(mid_wait_time);
    action.click(stat).perform();
    Thread.sleep(l_wait_time);
    
    stat = driver.findElement(By.name("atk"));
    action.moveToElement(stat).perform();
    Thread.sleep(mid_wait_time);
    action.click(stat).perform();
    Thread.sleep(l_wait_time);
    
    WebElement query = driver.findElement(By.name("param"));
    query.sendKeys("bad query");
    Thread.sleep(mid_wait_time);
    query.sendKeys(Keys.ENTER);
    Thread.sleep(l_wait_time);
    query = driver.findElement(By.name("param"));
    query.sendKeys("type/grass");
    Thread.sleep(mid_wait_time);
    query.sendKeys(Keys.ENTER);
    Thread.sleep(l_wait_time);
    query = driver.findElement(By.name("param"));
    query.sendKeys("ability/overgrow");
    Thread.sleep(mid_wait_time);
    query.sendKeys(Keys.ENTER);
    Thread.sleep(l_wait_time);
    
    element = driver.findElement(By.name("back"));
    action.click(element).perform();
    Thread.sleep(mid_wait_time);
//    driver.quit();
}
}
