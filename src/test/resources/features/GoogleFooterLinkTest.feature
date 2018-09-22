@GoogleFooterLinkTest
Feature: Google Footer links Checkup 
As a Google Lover, I want to learn about the legal policies and terms of service of Google and Gmail. 
 
Background:
Given I launch the Google home page url     
And I scroll down to the end of the page 
 
Scenario Outline: Selecting different footer links and checking the corresponding page faisal    
When I select "<footerLink_text>" link in the Google footer faisal
Then I verified the selected Google page by the existence of the "<linkedPage_text>" text faisal
 
    Examples:        
    |footerLink_text|linkedPage_text|
    |Privacy|Welcome to the Google Privacy Policy|  
    |Terms|Google Terms of Service|

Scenario Outline: Selecting different sublinks on the Google Privacy footer link faisal    
Given I select the Privacy link in the Google footer faisal
When I click on a specific Privacy Policy  "<privacy_policy>" faisal     
Then I verified the selected "<policy_detail>" Policty detail faisal
 
Examples:     
 |privacy_policy|policy_detail| 
 |Information we collect|We collect information|  
 |How we use information we collect|We use the information we collect|  
 |Transparency and choice|People have different privacy concerns|  
 |Information you share|Many of our services let you share information with others|
 |Accessing and updating your personal information|We aim to maintain our services in a manner that protects information|
 |Information we share|We do not share personal information with companies|
 |Information security| We work hard to protect Google and our users|
 |When this Privacy Policy applies|Our Privacy Policy applies to all of the services offered by Google LLC|
 |Compliance and cooperation with regulatory authorities|We regularly review our compliance with our Privacy Policy|
 |Changes|Our Privacy Policy may change from time to time|
 |Specific product practices|The following notices explain specific privacy practices|
 |Other useful privacy and security related materials|Further useful privacy and security related materials can be found|
 |Self Regulatory Frameworks|Self Regulatory Frameworks|
 |Key terms|An affiliate is an entity that belongs|
 |Partners|How Google uses data when you use our partners|
 |Updates|We want to be as transparent as possible about the changes|

   
 
 
Scenario Outline: Selecting different sublinks on the Google Terms footer link faisal    
Given I select the Terms link in the Google footer faisal
When  I click on a Technologies and Principles tab faisal
And   I click on a specific Technologies "<Technologies>" faisal      
Then  I verified the selected "<Technology_detail>" Technology detail faisal
 
  Examples: 
  |Technologies|Technology_detail|
  |Advertising|Advertising keeps Google and many of the websites and services you use free of charge| 
  |How Google uses cookies|A cookie is a small piece of text sent to your browser by a website you visit|
  |How Google uses pattern recognition|How Google uses pattern recognition to make sense of images|
  |Types of location data used by Google|Different types of location information may be used |
  |How Google Wallet uses credit card numbers|Google uses the credit card and debit card numbers|
  |How Google Voice works|Google Voice stores, processes and maintains your call history|
  |Google Product Privacy Guide|Welcome! The articles in this guide will give you more information|
 
