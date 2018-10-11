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
      | footerLink_text | linkedPage_text                                                                 |
      | Privacy         | This Privacy Policy is meant to help you understand what information we collect |
      | Terms           | Google Terms of Service                                                         |

 @wip
  Scenario Outline: Selecting different sublinks on the Google Privacy footer link
    Given I select the Privacy link in the Google footer
    When I click on a specific Privacy Policy "<privacy_policy>" link
    Then I verified the selected "<policy_detail>" Policy detail

    Examples: 
      | privacy_policy                           | policy_detail                                                                           |
      | Introduction                             | We build a range of services that help millions of people daily to explore and interact |
      | Information Google collects              | We collect information to provide better services to all our users                      |
      | Why Google collects data                 | We use the information we collect from all our services                                 |
      | Your privacy controls                    | You have choices regarding the information we collect                                   |
      | Sharing your information                 | When you share your information                                                         |
      | Keeping your information secure          | We build security into our services to protect your information                         |
      | Exporting & deleting your information    | You can export a copy of your information or delete it from your                        |
      | Compliance & cooperation with regulators | We regularly review this Privacy Policy                                                 |
      | About this policy                        | This Privacy Policy applies to all of the services                                      |
      | Related privacy practices                | The following privacy notices provide additional information about some Google services |
      | Data transfer frameworks                 | Data protection laws vary among countries                                               |
      | Key terms                                | Non-personally identifiable information                                                 |
      | Partners                                 | Google works with businesses and organizations in a variety of ways                     |
      | Updates                                  | We want to be as transparent as possible about the changes                              |

  Scenario Outline: Selecting different sublinks on the Google Terms footer link
    Given I select the Terms link in the Google footer
    When I click on a specific Terms of Service "<terms_Service>" link
    Then I verified the selected "<terms_Service_Page>" detail

    Examples: 
      | terms_Service                          | terms_Service_Page                                                     |
      | Using our Services                     | You must follow any policies made available                            |
      | Your Google Account                    | You may need a Google Account in order                                 |
      | Privacy and Copyright Protection       | Google’s privacy policies explain                                      |
      | Your Content in our Services           | you upload, submit, store, send or receive content                     |
      | About Software in our Services         | Google gives you a personal, worldwide                                 |
      | Modifying and Terminating our Services | We are constantly changing and improving our Services                  |
      | Our Warranties and Disclaimers         | We provide our Services using a commercially reasonable level of skill |
      | Liability for our Services             | WHEN PERMITTED BY LAW, GOOGLE, AND GOOGLE’S SUPPLIERS                  |
      | Business uses of our Services          | If you are using our Services on behalf of a business                  |
      | About these Terms                      | We may modify these terms or any additional terms                      |
      | Updates                                | UPDATES: TERMS OF SERVICE                                              |

  @wip
  Scenario Outline: Selecting different sublinks on the Google Technologies link
    Given I select the Terms link in the Google footer
    When I click on Technologies tab
    When I click on a specific Technologies "<technologies>" link
    Then I verified the selected "<technology_detail>" Technology detail

    Examples: 
      | technologies                                     | technology_detail                          |
      | Advertising                                      | Advertising keeps Google and many          |
      | How Google uses cookies                          | Many websites and apps use Google services |
      | How Google uses pattern recognition              | Many websites and apps use Google services |
      | Types of location data used by Google            | Many websites and apps use Google services |
      | How Google uses credit card numbers for payments | Many websites and apps use Google services |
      | How Google Voice works                           | Many websites and apps use Google services |
      | Google Product Privacy Guide                     | Many websites and apps use Google services |
      | How Google retains data we collect               | Many websites and apps use Google services |
