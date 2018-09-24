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
    |Privacy|Welcome to the Google Privacy Policy|  
    |Terms|Google Terms of Service|

Scenario Outline: Selecting different sublinks on the Google Privacy footer link     
    Given I select the Privacy link in the Google footer
    When I click on a specific Privacy Policy  "<privacy_policy>"
    Then I verified the selected "<policy_detail>" Policty detail
 
Examples:     
 |privacy_policy|policy_detail|
 |Introduction|We build a range of services| 
 |Information Google collect|We want you to understand|  
 |Why Google collects data|We use data to build better services|  
 |Your privacy controls|You have choices|  
 |Sharing your information|Many of our services|
 |Keeping your information secure|We build security into|
 |Exporting and deleting your information|You can export|
 |Compliance & cooperations with regulators|We regularly review|
 |About this policy|When this policy applies|
 |Related privacy practices|Specific google services|
 |Data transfer frameworks|Data protection laws|
 |Key terms|Device|
 |Partners|Google works with businesses|
 |Updates|We want to be as transparent as possible about the changes|
 
Scenario Outline: Selecting different sublinks on the Google Terms footer link     
  Given I select the Terms link in the Google footer	    
  When  I click on a Technologies and Principles tab    
  And   I click on a specific Technologies "<Technologies>"  
  Then  I verified the selected "<Technology_detail>" Technology detail
 
  Examples: 
  |Technologies|Technology_detail|
  |Advertising|Advertising keeps Google and many of the websites and services you use free of charge| 
  |How Google uses information from sites or apps that use our services|Many websites and apps use Google|
  |How Google uses cookies|A cookie is a small piece of text|
  |Types of cookies used by Google|We use different types of cookies|
  |Managing cookies in your browser|Some people prefer|
  |How Google uses pattern recognition|Computers don't|
  |Types of location data used by Google|We may collect and use|
  |How Google uses credit card numbers for payments|Google uses the credit card and debit card numbers|
  |How Google Voice works|Google Voice stores, processes and maintains your call history|
  |Google Product Privacy Guide|Welcome! The articles in this guide will give you more information|
 
