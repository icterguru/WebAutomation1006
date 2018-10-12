package step_definitions;
//import java.util.concurrent.TimeUnit;

//import org.junit.Assert;
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
		//driver.manage().timeouts().implicitlyWait(20,TimeUnit.SECONDS);

		//		new GooglePage(driver);  // Used for POM model 
	} 

	@Given("^I launch the Google home page url$")
	public void i_launch_the_Google_home_page_url() throws Throwable {

		driver.get("https://google.com");
	}

	@Given ("^I scroll down to the end of the page$")
	public void i_scroll_down_to_the_end_of_the_page() throws Throwable {

		//((JavascriptExecutor) driver).executeScript("window.scrollTo(0,document.body.scrollHeight)");
		//Thread.sleep(2000);   

	}

	@When("^I select \"([^\"]*)\" link in Google footer$")
	public void i_select_link_in_the_Google_footer(String footerLink_text) throws Throwable {

		//By linkedElement = By.xpath("//a[contains(text(),'" + footerLink_text + "')]");

		By linkedElement = By.linkText(footerLink_text);
		driver.findElement(linkedElement).click();
		//Thread.sleep(2000);

	}

	@Then("^I verified the selected Google page by the existence of the \"([^\"]*)\" text$")
	public void i_verified_the_selected_Google_page_by_the_existence_of_the_text(String linkedPage_text) throws Throwable {

		Thread.sleep(2000);
		Assert.assertEquals(true, driver.getPageSource().contains(linkedPage_text));

	}

	@Given("^I select the Privacy link in Google footer$")
	public void i_select_the_Privacy_link_in_the_Google_footer() throws Throwable {

		Thread.sleep(2000);
		driver.findElement(By.partialLinkText("Privacy")).click();

	}
	@When("^I click on a specific Privacy Policy  \"([^\"]*)\"$")
	public void i_click_on_a_specific_Privacy_Policy(String privacy_policy) throws Throwable {

		By linkedElement = By.linkText(privacy_policy);
		driver.findElement(linkedElement).click();

	}

	@Then("^I verified the selected \"([^\"]*)\" Policy detail$")
	public void i_verified_the_selected_Policy_detail(String policy_detail) throws Throwable {

		Thread.sleep(2000);
		Assert.assertEquals(true, driver.getPageSource().contains(policy_detail));
	}
	@Given("^I select the Terms link in Google footer$")
	public void i_select_the_Terms_link_in_the_Google_footer() throws Throwable {

		driver.findElement(By.linkText("Terms")).click();
		//Thread.sleep(2000);
	}
	
	@When("^I click on a specific Terms of Service \"([^\"]*)\" link$")
	public void i_click_on_a_specific_Terms_of_Service_link(String terms_Service) throws Throwable {
		
		By termElement = By.linkText(terms_Service);
		System.out.println("Print.....");
		driver.findElement(termElement).click();
		//Thread.sleep(2000);
	}

	@Then("^I verified the selected \"([^\"]*)\" detail$")
	public void i_verified_the_selected_detail(String terms_Service_Page) throws Throwable {
		Thread.sleep(2000);
		Assert.assertEquals(true, driver.getPageSource().contains(terms_Service_Page));
		
	}

	@When("^I click on Technologies tab$")
	public void i_click_on_Technologies_tab() throws Throwable {
		driver.findElement(By.linkText("Technologies")).click();
		//Thread.sleep(2000);
		
	}
	@When("^I click on specific Technologies \"([^\"]*)\"$")
	public void i_click_on_specific_Technologies(String technologies) throws Throwable {


		By linkedElement1 = By.linkText(technologies);
		driver.findElement(linkedElement1).click();
		//Thread.sleep(2000);
	}

	@Then("^I verified the selected \"([^\"]*)\" Technology detail$")
	public void i_verified_the_selected_Technology_detail(String technology_detail) throws Throwable {

		Thread.sleep(2000);
		Assert.assertEquals(true, driver.getPageSource().contains(technology_detail));
	}


}