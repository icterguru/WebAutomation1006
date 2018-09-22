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
	@Given("^I scroll down to the end of the page$")
	public void i_scroll_down_to_the_end_of_the_page() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	  
	}

	@When("^I select \"([^\"]*)\" link in the Google footer faisal$")
	public void i_select_link_in_the_Google_footer_faisal(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@Then("^I verified the selected Google page by the existence of the \"([^\"]*)\" text faisal$")
	public void i_verified_the_selected_Google_page_by_the_existence_of_the_text_faisal(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@Given("^I select the Privacy link in the Google footer faisal$")
	public void i_select_the_Privacy_link_in_the_Google_footer_faisal() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@When("^I click on a specific Privacy Policy  \"([^\"]*)\" faisal$")
	public void i_click_on_a_specific_Privacy_Policy_faisal(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@Then("^I verified the selected \"([^\"]*)\" Policty detail faisal$")
	public void i_verified_the_selected_Policty_detail_faisal(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	 
	}

	@Given("^I select the Terms link in the Google footer faisal$")
	public void i_select_the_Terms_link_in_the_Google_footer_faisal() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@When("^I click on a Technologies and Principles tab faisal$")
	public void i_click_on_a_Technologies_and_Principles_tab_faisal() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@When("^I click on a specific Technologies \"([^\"]*)\" faisal$")
	public void i_click_on_a_specific_Technologies_faisal(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}

	@Then("^I verified the selected \"([^\"]*)\" Technology detail faisal$")
	public void i_verified_the_selected_Technology_detail_faisal(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    
	}


	
}
