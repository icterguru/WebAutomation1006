@GoogleFooterLinkTest
Feature: Google Footer links Checkup 
As a Google Lover, I want to learn about the legal policies and terms of service of Google and Gmail. 
 
Background:
	Given I launch the Google home page url     
	And I scroll down to the end of the page
 
Scenario Outline: Selecting different footer links and checking the corresponding page     
	When I select "<footerLink_text>" link in the Google footer     
	Then I verified the selected Google page by the existence of the "<linkedPage_text>" text 
 
    Examples:        
    |footerLink_text|linkedPage_text|
    |Privacy|This Privacy Policy is meant to help you understand what information we collect|  
    |Terms|Google Terms of Service|

Scenario Outline: Selecting different sublinks on the Google Privacy footer link     
    Given I select the Privacy link in the Google footer   
    When I click on a specific Privacy Policy  "<privacy_policy>"
    Then I verified the selected "<policy_detail>" Policty detail
 
		Examples:     
 		|privacy_policy|policy_detail| 
 		|Introduction|We build a range of services that help millions of people daily|
 		|Information Google collects|We want you to understand the types of information|  
	 	|Why Google collects data|We use the information we collect from all our services|  
	 	|Your privacy controls|You have choices regarding the information we collect|  
 		|Sharing your information|When you share your information|
 		|Keeping your information secure|We build security into our services to protect your information|
		|Exporting & deleting your information|You can export a copy of your information or delete it from your|
		|Compliance & cooperation with regulators|We maintain servers around the world and your information|
		|About this policy|ABOUT THIS POLICY|
		|Related privacy practices|RELATED PRIVACY PRACTICES|
		|Data transfer frameworks|EU-US and Swiss-US Privacy Shield frameworks|
 		|Key terms|KEY TERMS|
 		|Partners|WHO ARE GOOGLE’S PARTNERS?|
 		|Updates|UPDATES: PRIVACY POLICY|

 
Scenario Outline: Selecting different sublinks on the Google Terms footer link     
  Given I select the Terms link in the Google footer     
  When  I click on a Technologies and Principles tab     
  And   I click on a specific Technologies "<Technologies>"      
  Then  I verified the selected "<Technology_detail>" Technology detail 
 
  Examples: 
  |Technologies|Technology_detail|
  |Advertising|Advertising keeps Google and many of the websites and services you use free of charge| 
  |How Google uses cookies|A cookie is a small piece of text sent to your browser by a website you visit|
  |How Google uses pattern recognition|How Google uses pattern recognition to make sense of images|
  |Types of location data used by Google|Different types of location information may be used |
  |How Google Wallet uses credit card numbers|Google uses the credit card and debit card numbers|
  |How Google Voice works|Google Voice stores, processes and maintains your call history|
  |Google Product Privacy Guide|Welcome! The articles in this guide will give you more information|
  |How Google retains data we collect|HOW GOOGLE RETAINS DATA WE COLLECT|
 
