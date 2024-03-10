Feature: FireLight_Regression_EsignMP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignMP1MVC @RegressionTestMP1P2
  Scenario: TC_002_FL024 Variable Annuity - Use SMS Text Enabled
    Given User is on FireLight login page for TestCase "RegEsignMP1MVC_TC_002"
    Then User on Login Page enters valid username as "CEUSER2_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Variable Annuity - Use SMS Text Enabled" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field       | Value       | data-dataitemid          | Locator Type |
      | First Name  | Shiba       | FLI_OWNER_FNAME          | Input        |
      | Last Name   | Shankar     | FLI_OWNER_LNAME          | Input        |
      | SSN         | 123-12-1234 | FLI_OWNER_SSN            | Input        |
      | Birthdate   | 10/10/1950  | FLI_OWNER_BDATE          | Input        |
      | PhoneNumber | 8888888888  | FLI_OWNER_MOBILENUMBER   | Input        |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User verify "ToName" is set to "Shiba Shankar" on signature page
    Then User verify "SSN" is set to "1234" on signature page
    Then User verify "BirthDate" is set to "10/10/1950" on signature page
    Then User verify "MobileNumber" is set to "8888888888" on signature page
    Then User verifies "MobileNumber" is "disabled" field
    Then User Enters "5555" in TextBox "ID"
    Then User clicks "Send SMS Text" button on signature page
    Then User Verifies Popup Heading As "Client Verification"
    Then User Enters "54545454" in TextBox "Enter Passcode"
    Then User clicks on "Submit" link
    Then User verifies validation message appeared "Incorrect passcode."
    Then User clicks "CancelSMS" button on signature page
    Then User clicks "Cancel" button on signature page
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User verify "ToName" is set to "Shiba Shankar" on signature page
    Then User verify "SSN" is set to "1234" on signature page
    Then User verify "BirthDate" is set to "10/10/1950" on signature page
    Then User verify "MobileNumber" is set to "8888888888" on signature page
    Then User verifies "MobileNumber" is "disabled" field
    Then User clicks "Generate Link Without Email" button on signature page
    And User verify only email link is generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User verify "ToName" is set to "" on signature page
    Then User verify "SSN" is set to "" on signature page
    Then User verify "BirthDate" is set to "" on signature page
    Then User verify "MobileNumber" is set to "" on signature page
    Then User verifies "MobileNumber" is "disabled" field
    Then User verifies "ToName" is "not disabled" field
    Then User verifies "SSN" is "not disabled" field
    Then User verifies "BirthDate" is "not disabled" field
    Then User clicks "Send SMS Text" button on signature page
    Then user Verifies the Error Message "A valid mobile number is required." for "MobileNumber"
    Then User clicks "Cancel" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User verify "ToName" is set to "" on signature page
    Then User verify "SSN" is set to "" on signature page
    Then User verify "BirthDate" is set to "" on signature page
    Then User verify "MobileNumber" is set to "" on signature page
    Then User verifies "MobileNumber" is "disabled" field
    Then User verifies "ToName" is "not disabled" field
    Then User verifies "SSN" is "not disabled" field
    Then User verifies "BirthDate" is "not disabled" field
    Then User clicks "Cancel" button on signature page

  @RegressionTest @RegEsignMP1MVC @RegressionTestMP1P2
  Scenario: ESIG_4_Tele Sign when Multi Signers Selected
    Given User is on FireLight login page for TestCase "RegEsignMP1MVC_ESIG_4"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Tele Sign" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value         | data-dataitemid                | Locator Type |
      | Enable Tele Sign | True          | FLI_ENABLE_TELESIGN            | Input        |
      | Tele Sign App ID | 123456        | FLI_TELESIGN_APP_ID            | Input        |
      | Tele Sign PIN    | 1234          | FLI_TELESIGN_PIN               | Input        |
      | Tele Sign DOB    | 10/10/1950    | FLI_TELESIGN_DOB               | Input        |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User verify error message "In order to use Tele-Sign, all non-agent signers must be selected." on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner"
    Then User verifies "Sign Now" button on signature page
    Then User verifies "Send Email Request" button on signature page
    Then User verifies no "TeleSign" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Cancel" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User verifies "Sign Now" button on signature page
    Then User verifies "Send Email Request" button on signature page
    Then User verifies "TeleSign" button on signature page
    Then User clicks "TeleSign" button on signature page
    Then User should be on page "Tele-Sign: Joint Owner/Owner: Signer Information"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User selects value "California" for field "State"
    Then User Enters "testHexure@gmail.com" in TextBox "Signer Email"
    Then User Enters "9876" in TextBox "Signer Last 4 Digits of SSN/Government ID"
    Then User Enters "09081999" in TextBox "Signer Birth Date"
    Then User clicks "Continue" button on signature page
    Then User clicks "Download Forms" button on signature page
    Then User verify all documents are downloaded to system with name "DownloadTeleSignForms.pdf"
    Then User selects value "Send via Email" for field "Delivery Type"
    Then User verifies "Subject" is "readonly" field
    Then User verifies "Message" is "readonly" field
    Then User Enters "Signer Colorado" in TextBox "toName"
    Then User Enters "testHexure@gmail.com" in TextBox "toEmail"
    Then User verify "lastFour" is set to "9876" on signature page
    Then User verify "birthDate" is set to "09/08/1999" on signature page
    Then User verifies "lastFour" is "disabled" field
    Then User verifies "birthDate" is "disabled" field
    Then User clicks "Send Email" button on signature page
    Then User verify message "Message sent to testHexure@gmail.com" on field "generatedLink"
    Then User verify message "Link is available until" on field "generatedLink"
    Then User selects value "Generate Link" for field "Delivery Type"
    Then User verify "lastFour" is set to "9876" on signature page
    Then User verify "birthDate" is set to "09/08/1999" on signature page
    Then User verifies "lastFour" is "disabled" field
    Then User verifies "birthDate" is "disabled" field
    Then User clicks "Generate Link" button on signature page
    Then User save the "email link" generated on signature page
    Then User clicks "Continue" button on signature page
    Then User should be on page "Agent Instructions"
    Then User verify message "Thank you for completing this e-Application. The application is ready for the applicant to sign." on text "telesign-script-notice"
    Then User clicks "Done" button on signature page
    Then User verify "Cancel Tele-Sign" for "Joint Owner" button on signature page
    Then User verify "Cancel Tele-Sign" for "Owner" button on signature page
    Then User clicks "Cancel Tele-Sign" for "Owner" button on signature page
    Then User verify error message "Are you sure you want to cancel this request?" on signature page
    Then User clicks "cancel" on Confirmation Dialog
    Then User selects "Agent" signer on signature window
    Then User verifies "Sign Now" button on signature page
    Then User verifies "Send Email Request" button on signature page
    Then User verifies no "TeleSign" button on signature page
    Then User clicks "Back To Application" button
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "emailLink"
    Then User verify "Passcode" button does not exist on SSN login page
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09/08/1999" in TextBox "BirthDate"
    Then User clicks "Enter" button on External link page
    Then User verify all documents are downloaded to system with name "SubmitSSN.pdf"

  @RegressionTest @RegEsignMP1MVC @RegressionTestMP1P2
  Scenario: TC_003_Verify Enable Allow Passcode email for Agent & Client Signature Request
    Given User is on FireLight login page for TestCase "RegEsignMP1MVC_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Addendum Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "owner" signer on signature window
    Then User selects "insured" signer on signature window
    Then User selects "annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "owner" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User selects "agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "AgentRandom" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User clicks "Back To Application" button
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User store "Passcode" for "Owner"
    Then User store "Passcode" for "Agent"
    Then User select "owner complete filling application" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify saved "signerUrl" and "emailLink" from mail are same
    Then User select "owner complete filling application" email with subject "Passcode Application AppName" on gmail page and save "passcode"
    Then User verify saved "ownerPasscode" and "passCode" from mail are same
    Then User select "agent email link" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify saved "recipientUrl" and "emailLink" from mail are same
    Then User select "agent email link" email with subject "Passcode Application AppName" on gmail page and save "passcode"
    Then User verify saved "agentPasscode" and "passCode" from mail are same

  @RegressionTest @RegEsignMP1MVC @RegressionTestMP1P2
  Scenario: TC_007_Verify Active Signers List on MVC Application showing after any field update
    Given User is on FireLight login page for TestCase "RegEsignMP1MVC_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "" on data entry page
    Then User sets values for prefilled form
      | Field       | Value       | data-dataitemid          | Locator Type |
      | Signer Type | Shiba       | FLI_ACTIVE_SIGNER_TYPES  | textarea     |
    Then User clicks "Next Page" button 1 times till last page
    Then User clicks "Previous Page" button 1 times till last page
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Insured, Owner, Agent, Agent 2" on data entry page
    Then User verify fields for "readonly"
      | Field          | Value       | data-dataitemid          | Locator Type |
      | Signer Type    | Shiba       | FLI_ACTIVE_SIGNER_TYPES  | textarea     |
    Then User clicks "Next Page" button 1 times till last page
    Then User clicks "Previous Page" button 1 times till last page
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Insured, Owner, Agent, Agent 2" on data entry page
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Insured" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User verifies "AdditionalAgent" under list of required signers section on signature page
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Insured, Owner, Agent, Agent 2" on data entry page
    Then User verify fields for "readonly"
      | Field          | Value       | data-dataitemid          | Locator Type |
      | Signer Type    | Shiba       | FLI_ACTIVE_SIGNER_TYPES  | textarea     |

  @RegressionTest @RegEsignMP1MVC @RegressionTestMP1P2
  Scenario: TC_004_Verify Enable Allow Passcode email for Agent & Client Signature Request
    Given User is on FireLight login page for TestCase "RegEsignMP1MVC_TC_004"
    Then User on Login Page enters valid username as "AutoDSB_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Continue" button
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "owner" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "owner" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User selects "agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "AgentRandom" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User clicks "Back To Application" button
    And User verify "Send Reminder to" button "exists" for "Owner" on SSN home page
    And User verify "Send Passcode to" button "does not exist" for "Owner" on SSN home page
    And User verify "Cancel this request" button "exists" for "Owner" on SSN home page
    And User verify "Send Reminder to" button "exists" for "Agent" on SSN home page
    And User verify "Send Passcode to" button "does not exist" for "Agent" on SSN home page
    And User verify "Cancel this request" button "exists" for "Agent" on SSN home page
    Then User store "Passcode" for "Owner"
    Then User store "Passcode" for "Agent"
    Then User clicks Close button on pending request page
    Then User clicks "Logoff" button on home page
    Then User clicks "ok" on Confirmation Dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "owner complete filling application" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify saved "signerUrl" and "emailLink" from mail are same
    Then User verify "owner complete filling application" email with subject "Passcode Application AppName" on gmail page is not received
    Then User select "agent email link" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify saved "recipientUrl" and "emailLink" from mail are same
    Then User select "agent email link" email with subject "Passcode Application AppName" on gmail page and save "passcode"
    Then User verify saved "agentPasscode" and "passCode" from mail are same
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "ownerPasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Logs in with "agentPasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User select "signer download application" email with subject "Print or download your signed Application AppName." on gmail page and save "email link"
    Then User verify "owner complete filling application" email with subject "Passcode Application AppName" on gmail page is not received
    Then User Loads the URL generated previously for "emailLink"
    Then User Enters "1234" in TextBox "SSN"
    Then User Enters "10/10/1950" in TextBox "BirthDate"
    Then User clicks "Enter" button on External link page
    Then User verify all documents are downloaded to system with name "SubmitSSN.pdf"

  @RegressionTest @RegEsignMP1MVC @RegressionTestMP1P2
  Scenario: TC_006_Verify Active Signers List on React Application with Conditionally triggered Signers.
    Given User is on FireLight login page for TestCase "RegEsignMP1MVC_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React ESign Product" for application
    Then User selects Optional Forms "React LN Signer with Document Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Owner, Agent" on data entry page
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Owner, Agent" on data entry page
    Then User selects value "Yes" for field "JointOwner_YesNo"
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Owner, Agent, Joint Owner" on data entry page
    Then User opens "Signers Page" Optional for Form "React LN Signer with Document Set"
    Then User sets values for prefilled form
      | Field                | Value       | data-dataitemid      | Locator Type |
      | Enable Owner Sign A  | True        | Enable Owner Sign A  | Input        |
      | Enable Owner Sign LN | True        | Enable Owner Sign LN | Input        |
    Then User clicks on Next button on form
    Then User verifies prefilled form
      | Field          | Value                     | data-dataitemid                         | Locator Type | Validation Error                            |
      | Signer Types   | Owner, Agent, Joint Owner | FLI_ACTIVE_SIGNER_TYPES                 | Input        |                                             |
    Then User opens "Page 1" Optional for Form "React Multiple Signer for Automation Project"
    Then User selects value "Yes" for field "Annuitant_YesNo"
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Owner, Agent, Joint Owner, Annuitant" on data entry page
    Then User selects value "No" for field "JointOwner_YesNo"
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Owner, Agent, Annuitant" on data entry page
    Then User selects value "Yes" for field "JointOwner_YesNo"
    Then User verify "FLI_ACTIVE_SIGNER_TYPES" field value is "Owner, Agent, Joint Owner, Annuitant" on data entry page
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User verifies "JointOwner" under list of required signers section on signature page
    Then User verifies "Annuitant" under list of required signers section on signature page









