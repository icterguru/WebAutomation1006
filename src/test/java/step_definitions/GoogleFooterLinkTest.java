package step_definitions;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import helper_classes.SetDriver;

public class GoogleFooterLinkTest {
	
	private WebDriver driver;

	public GoogleFooterLinkTest() {
		driver = SetDriver.webDriver;
		
//		new GooglePage(driver);  // Used for POM model 
	} 

	@Given("^I launch the Google home page url$")
	public void i_launch_the_Google_home_page_url() throws Throwable {
	driver.get("https://google.com");
	}
	
	/*@Given("^I scroll down to the end of the page$")
	public void i_scroll_down_to_the_end_of_the_page() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		((JavascriptExecutor) driver).executeScript("window.scrollTo(0,document.body.scrollHeight)");
		Thread.sleep(2000);   // temporary wait
	}
*/
	
	@When("^I select \"([^\"]*)\" link in the Google footer$")
	public void i_select_link_in_the_Google_footer(String footerLink_text) throws Throwable {
	
		By linkedElement = By.xpath("//a[contains(text(),'" + footerLink_text + "')]");
		
		driver.findElement(linkedElement).click();
	
		Thread.sleep(2000);
		
	}

	@Then("^I verified the selected Google page by the existence of the \"([^\"]*)\" text$")
	public void i_verified_the_selected_Google_page_by_the_existence_of_the_text(String linkedPage_text) throws Throwable {
		
		Assert.assertEquals(true, driver.getPageSource().contains(linkedPage_text));
	
	}
	
}
