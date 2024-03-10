Feature: FireLight_Regression_EmailMP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEmailMP1MVC @RegressionTestMP1P2
  Scenario: TC_006_Generate Client Request To Fill - Post-Issue email for Post-Issue
    Given User is on FireLight login page for TestCase "RegEmailMP1MVC_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Generic Post Issue" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Post Issue Easy Sign" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Joint Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User verifies "FromName" TextBox value as "agentName"
    Then User verifies "FromEmail" TextBox value as "agentEmail"
    Then User Clicks Send Email request Button
    Then User select "owner generic post issue" email with subject "AppName - Please complete your Generic Post Issue" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailMP1MVC @RegressionTestMP1P2
  Scenario: TC_012_Generate Download Completed - Post-Issue email for Post Issue
    Given User is on FireLight login page for TestCase "RegEmailMP1MVC_TC_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Generic Post Issue" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Post Issue Easy Sign" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "agent" on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User Reload the page
    Then User application is "finished" and verify Popup message
    Then User clicks "Close" button on signature page
    Then User select "signer download application additionalcontent" email with subject "Print or download your Generic Post Issue" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailMP1MVC @RegressionTestMP1P2
  Scenario: TC_014_Generate Signature Request email for Activities
    Given User is on FireLight login page for TestCase "RegEmailMP1MVC_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Generic Post Issue" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Post Issue Easy Sign" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Owner"
    Then User clicks "Send Email Request" button on signature page
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User enter all required "owner" details for sending mail on signature window
    Then User verifies "FromName" TextBox value as "agentName"
    Then User verifies "FromEmail" TextBox value as "agentEmail"
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User select "owner complete signature" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"

