Feature: FireLight_Regression_EsignLP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignLP1MVC @RegressionTestLP1P2
  Scenario: TC_145 Resend Passcode Original Passcode NOT Expired
    Given User is on FireLight login page for TestCase "RegEsignLP1MVC_TC_145"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signers Passcode validation" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on close Popup on DataEntry Page
    Then User Clicks Continue
    Then User selects "Use E-Signature" button on Signature Tab
    Then User selects "Insured" on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Enters Recipient name, Email
    Then User Clicks Send Email request Button
    Then User Notes the URL generated and clicks Back to App
    Then User select "passcode application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User store "passCode" for "Insured" from email
    Then User select "email" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User store Email "emailLink" for "Insured" from email
    Then User selects "Annuitant" on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5556" in TextBox "ID"
    Then User Enters "ShibaRandom" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Clicks on Button "Send Email Passcode"
    Then User clicks "cancel" on Confirmation Dialog
    Then User Clicks on Button "Resend Email Passcode"
    Then User select "Passcode Application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User Enters Passcode in Enter Passcode textbox of Client Verification
    Then User clicks "Submit" button on signature page
    Then User clicks "Verified" button on signature page
    Then User Clicks on "Agree" Button
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User select "email" email with subject "Print or download your signed Application." on gmail page and save "email link"
    Then User store Email "emailLink" for "Annuitant" from email
    Then User clicks "Back To Application" button
    Then User clicks on the "Send Passcode" link
    Then User clicks Send button in pending Request
    Then User clicks "Ok" on Confirmation Dialog
    Then User Reload the page
    Then User select "passcode application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User store "passCode" for "Annuitant" from email
    Then User Log Off from current Application
    Then User clicks "Ok" on Confirmation Dialog
    Then User Loads the URL generated previously for "insuredEmail"
    Then User Logs in with "insuredPasscode"
    Then User use passcode and verifies validation message "Invalid or expired Passcode."
    Then User Clicks on Resend Passcode
    Then User select "passcode application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User store "passCode" for "Insured" from email
    Then User Logs in with "insuredPasscode"
    Then User Loads the URL generated previously for "annuitantEmail"
    Then User Logs in with "annuitantPasscode"
    Then User use passcode and verifies validation message "Invalid or expired Passcode."
    Then User Clicks on Resend Passcode
    Then User waits for cache timeout
    Then User select "passcode application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User store "passCode" for "Annuitant" from email
    Then User Logs in with "annuitantPasscode"

  @RegressionTest @RegEsignLP1MVC @RegressionTestLP1P2
  Scenario: TC_002_Dropdown selection for states is limited when selection is made on Sales Agreement
    Given User is on FireLight login page for TestCase "RegEsignLP1MVC_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "New York"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Varun_Limited_SalesAgreement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies options present for "ID Issue Jurisdiction" dropdown
      | options         |
      | Louisiana       |
      | New York      |
    Then User verify value is "New York" for field "ID Issue Jurisdiction"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User Enters Signer Full Name as "Test Owner" City as "Test City"
    Then User Verifies options present for "State" dropdown
      | options        |
      | Louisiana      |
      | New York      |
    Then User verify value is "New York" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Selects Agent Signer
    Then User clicks "Sign Now" button on signature page
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User Verifies options present for "State" dropdown
      | options      |
      | Louisiana       |
      | New York      |
    Then User verify value is "New York" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "New York"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Varun_NON-Limited_SalesAgreement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies options present for "ID Issue Jurisdiction" dropdown
      | options         |
      | Louisiana       |
      | New York      |
    Then User verify value is "New York" for field "ID Issue Jurisdiction"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User Enters Signer Full Name as "Test Owner" City as "Test City"
    Then User Verifies options present for "State" dropdown
      | options        |
      | Louisiana      |
      | New York      |
    Then User verify value is "New York" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Selects Agent Signer
    Then User clicks "Sign Now" button on signature page
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User Verifies options present for "State" dropdown
      | options      |
      | Louisiana       |
      | New York      |
    Then User verify value is "New York" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog

  @RegressionTest @RegEsignLP1MVC @RegressionTestLP1P2
  Scenario: TC_019_Open existing locked case and complete the signature and verify the signatures are on PDF
    Given User is on FireLight login page for TestCase "RegEsignLP1MVC_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User clicks "Advance Search" button
    Then User selects value "Application" for field "activityType"
    Then User selects value "Signatures" for field "statusType"
    Then User Enters "Easy Signing" in TextBox "Activity Name"
    Then User Enters "M" in TextBox "Issue State"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "activities updated in the last 30 days" is displayed on search
    Then User update records are displayed for "Easy Signing"
#    Then User update records are displayed for "In Signatures"
    Then User Clicks on View Button on All Activity
    Then User clicks "Continue" button
    Then User selects "Joint Owner" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User Enters Signer Full Name as "Test Owner" City as "Test City"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Selects Agent Signer
    Then User clicks "Sign Now" button on signature page
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "ok" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User Clicks on "Yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User Clicks "Close pending review request" Button
    Then User navigates to Home page
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Mississippi"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Clicks Back to Application
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog




