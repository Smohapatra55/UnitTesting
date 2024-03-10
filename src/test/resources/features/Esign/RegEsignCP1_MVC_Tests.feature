Feature: FireLight_Regression_EsignCP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_032_Request Client to Fill and Sign - Send Email Request
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_032"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User Enters Name And Email For "owner"
    Then User verify "SSN" button does not exist
    Then User verify "BirthDate" button does not exist
    Then User Verifies text "Client Authentication via Passcode"
    Then User Enters Name And Email For "jointowner"
    Then User Clicks Send Email request Button
    Then User Verifies popup "Request Sent"
    Then User "Request Sent" Dialog appear with Generated URL for "owner", Stores the URL, Verifies the email on dialog box, Then Clicks on OK
    Then User verifies dialog window "Pending Request" popup
    Then User store "owner passcode"
    Then User store "jointowner passcode"
    Then For JointOwner(Secondary Signer) User gets the URL from Message template by clicking Send Reminder to Owner
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "receipantLink(url)"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User Verifies Enter Button
    Then User Verifies Resend Button
    Then User Clicks on Resend Passcode
    Then User Verifies the message of "Passcode sent successfully!" in external Login Page
    Then user Enters "Owner Passcode" in Passcode Text Field
    Then User Clicks on Enter Button
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Clicks on Sign application button
    Then User clicks on lock activity button
    Then User Clicks Sign Activity button
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser
    Then User Loads the URL generated previously for "JointOwnerUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button exists on page
    Then user Enters "JointOwner Passcode" in Passcode Text Field
    Then User Clicks on Enter Button
    Then User Clicks Sign Activity button
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser


  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_033_Request Client to Fill and Sign - Send Email Request via Generate Link without Email
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_033"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User verify "SSN" button does not exist
    Then User verify "BirthDate" button does not exist
    Then User Enters Name And Email For "owner"
    Then User Verifies text "Client Authentication via Passcode"
    Then User Enters Name And Email For "jointowner"
    Then User Now Clicks on Generate Link Without Email button
    Then User Clicks Back to App button
    Then User verifies dialog window "Pending Request" popup
    Then User store "owner passcode"
    Then User store "jointowner passcode"
    Then For JointOwner(Secondary Signer) User gets the URL from Message template by clicking Send Reminder to Owner
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "UrlLinkOnPrimaryGeneratedLinkWithoutEmailScreen"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User Verifies Enter Button
    Then User Verifies Resend Button
    Then User Clicks on Resend Passcode
    Then User Verifies the message of "Passcode sent successfully!" in external Login Page
    Then user Enters "Owner Passcode" in Passcode Text Field
    Then User Clicks on Enter Button
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Clicks on Sign application button
    Then User clicks on lock activity button
    Then User Clicks Sign Activity button
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser
    Then User Loads the URL generated previously for "JointOwnerUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button exists on page
    Then user Enters "JointOwner Passcode" in Passcode Text Field
    Then User Clicks on Enter Button
    Then User Clicks Sign Activity button
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_034_Request Client to Fill-Send Email Request (Passcode validation in Organization Setting is On Without SMS Text )
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_034"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Contact Agent" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Verifies text "Client Authentication via Passcode"
    Then User Selects the Signer Type as "Owner"
    Then User verify "SSN" button does not exist
    Then User verify "BirthDate" button does not exist
    Then User Enters Recipient name, Email
    Then User Clicks Send Email request Button
    Then User Notes the URL generated and clicks Back to App
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User Loads the URL generated previously for "recipientUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User Verifies Enter Button
    Then User Verifies Resend Button
    Then User Clicks on Resend Passcode
    Then User Verifies the message of "Passcode sent successfully!" in external Login Page
    Then User Logs in with "recipientPasscode"
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | SSN                 | 1235674321 | Owner_SSN                        | Input        |
    Then User Clicks on Attach Document and Upload any document on Documents page
    Then User Closes Documents window
    Then User Clicks CompleteLog off Tab
    Then User Verifies the message in popup
    Then User Closes the Popup window
    Then User Clicks CompleteLog off Tab
    Then User Clicks on Submit and log off
    Then User Verifies message "Thank you for using our application."
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_034"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User clicks "Close" button on data entry page
    Then User verifies prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |Validation Error|
      | First Name     | OwnerFN       | Owner_FirstName                  | Input        |                |
      | Last Name      | OwnerLN       | Owner_LastName                   | Input        |                |
      | SSN            | 1235674321    | Owner_SSN                        | Input        |                |
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Verifies text "Client Authentication via Passcode"
    Then User Selects the Signer Type as "Insured"
    Then User Enters Recipient name, Email
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User verifies dialog window "Pending Request" popup
    Then User verifies same Passcode as generated Before for "signerPasscode"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User Verifies Enter Button
    Then User Verifies Resend Button does not show
    Then User Logs in with "signerPasscode"
    Then User sets values for prefilled form
      | Field               | Value            | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFirstName   | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLastName    | Owner_LastName                   | Input        |
      | SSN                 | 123-1234-1111    | Owner_SSN                        | Input        |
    Then User Clicks CompleteLog off Tab
    Then User Verifies the message in popup
    Then User Clicks on Submit and log off
    Then User Verifies message "Thank you for using our application."


  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_038_E-Sign-Send Email Request & Generate Link
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_038"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Contact Agent" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value            | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFirstName   | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLastName    | Owner_LastName                   | Input        |
      | SSN                 | 123-1234-1111    | Owner_SSN                        | Input        |
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "Insured" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Insured"
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Heading "Send Email To Signer To Request Signatures"
    Then User verify "SSN" button does not exist
    Then User verify "BirthDate" button does not exist
    Then User verify "*Client Authentication via Passcode*" text "exists" on signature page
    Then User Enters Recipient name, Email
    Then User clicks "Send Email Request" button on signature page
    Then User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User selects "Owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Heading "Send Email To Signer To Request Signatures"
    Then User verify "SSN" button does not exist
    Then User verify "BirthDate" button does not exist
    Then User verify "*Client Authentication via Passcode*" text "exists" on signature page
    Then User Enters Recipient name, Email
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User Clicks Back to Application
    Then User stores "primary signer" passcode as "owner"
    Then User stores "secondary signer" passcode as "insured"
    Then User verify saved "ownerPasscode" and "signerPasscode" from mail are same
    Then User clicks "Logoff" button on home page
    Then User clicks Yes button
    Then User Loads the URL generated previously for "emailLink"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button exists on page
    Then User Logs in with "insuredPasscode"
    Then User should be on page "Electronic Signatures"
    And User verify "Review Documents" button exists
    And User verify "Sign Activity" button exists
    And User verify "Contact Agent" button exists
    Then User Clicks Sign Activity button
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button does not exist on SSN login page
    Then User Verifies Enter Button
    Then User Logs in with "ownerPasscode"
    And User verify "Review Documents" button exists
    And User verify "Sign Activity" button exists
    And User verify "Contact Agent" button exists
    Then User Clicks Sign Activity button
    Then User Clicks on Agree Checkbox
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser


  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_065_E-Sign - Sign Now Only (Passcode Validation in Organization Setting is ON Without SMS Text)
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_065"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User verify "SSN" button does not exist
    Then User verify "BirthDate" button does not exist
    Then User Verifies text "Client Authentication via Passcode"
    Then User enter required details for signing on signatures window
    Then User Verifies text "Client Authentication via Passcode"
    Then User Verifies text "A passcode will be sent to the client's email for validation"
    Then User clicks "Send email passcode" button on signature page
    Then User Verifies Popup Heading As "Client Verification" in Client Verification
    Then User Verifies the message of "For identity verification, please enter the passcode sent to your email"
    Then User clicks "Cancel" on Confirmation Dialog
    Then User Verifies "Resend Email Passcode" is showing
    Then User clicks "Resend Email Passcode" button on signature page
    Then User select "review" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User Enters Passcode in Enter Passcode textbox of Client Verification
    Then User clicks "Submit" button on signature page
    Then User verify "buttonSendEPass" button does not exist
    Then User clicks "Verified" button on signature page
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User selects "agent" signer on signature window
    Then User clicks on Sign Now button
    Then User Clicks on Agree Checkbox
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
    Then User clicks "Continue" button
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished"
    Then User Verifies Final popup after application submitted with message "To print or view the application, history or documents, click on Other Actions."
    Then User Verifies Final popup after application submitted with message "Thank you for your business!"
    Then User clicks on "Other Action" link of data entry met Toast popup
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | Complete                      | is complete.     |
      | Client On-Site Signature Approved                      | was signed by Shibas|

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIGN_02_Verify E-sign Decline Flag  when set to False
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIGN_02"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Decline ESign MVC UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field             | Value | data-dataitemid   | Locator Type |
      | DeclineEsign Test | False | DeclineEsign_Test | Input        |
    Then User clicks "Continue" button
    Then User verifies Accept or decline e-signature request screen should not display and  moves directly into the signing ceremony.
    Then User selects "Owner" button on Signature Tab
    Then User clicks "Proceed" button on signature page
    Then User Clicks Sign Now
    Then User sets value "09876"  for field "ID Number" for To Signature tab
    Then User sets value "OwnerName"  for field "Name" for To Signature tab
    Then User sets value "9876"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31/1999"  for field "Birth Date" for To Signature tab
    Then User sets value "abc@abc.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then User Clicks Continue Button
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verify "Document Set" is set to "DSB Signers" for "Owner" on signatures page

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIGN_03_Verify E-sign Decline Flag  when set to True
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIGN_03"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Decline ESign MVC UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field             | Value | data-dataitemid   | Locator Type |
      | DeclineEsign Test | True     | DeclineEsign_Test | Input        |
    Then User clicks "Continue" button
    Then User clicks "Ok" on Confirmation Dialog
    Then User verifies "FINALIZE" tab is green tick mark
    Then User clicks on Other Action Link of Popup message
    Then User verifies Other Action Menu Opens
    Then User click "History" submenu
    Then User verifies Audit History
      | Status   | Status Description                   |
      | Back Office Message | All Back Office Processing Complete. |

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIGN_04_Verify Decline E-sign Default behaviour
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIGN_04"
    Then User on Login Page enters valid username as "AutoDSB_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Decline ESign MVC UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User Clicks Continue Button
    Then User verifies Accept or decline e-signature request screen should not display and  moves directly into the signing ceremony.
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User set value "UFirstName" for field "Signer Name"
    Then User set value "Signer@Email.com" for field "Signer Email"
    Then User set value "1234" for field "* Signer Last 4 Digits of SSN/Government ID"
    Then User set value "11/11/1999" for field "* Signer Birth Date"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode and User Clicks Back to Signer
    Then User Verifies Now signers have Revoke Request link
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User verifies same Passcode as generated
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "In Signatures"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "agentUrl"
    Then User Logs in with "agentPasscode"
    Then User Clicks on Sign Activity
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    And User verify "congratulations" message on signature page

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIGN_05_Verify Decline E-sign Flag value False with Group setting Decline ESign
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIGN_05"
    Then User on Login Page enters valid username as "AutoDSB_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Decline ESign MVC UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field             | Value | data-dataitemid   | Locator Type |
      | DeclineEsign Test | False | DeclineEsign_Test | Input        |
    Then User clicks "Continue" button
    Then User verifies Accept or decline e-signature request screen should not display and  moves directly into the signing ceremony.
    Then User selects "Owner" button on Signature Tab
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Clicks Cancel Button
    Then User should be on page "List of Required Signers"

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario:ESIGN_06_Verify Decline E-sign Flag value True with Group setting Decline ESign
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIGN_06"
    Then User on Login Page enters valid username as "AutoDSB_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Decline ESign MVC UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field             | Value | data-dataitemid   | Locator Type |
      | DeclineEsign Test | True     | DeclineEsign_Test | Input        |
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User clicks "Ok" on Confirmation Dialog
    Then User verifies "FINALIZE" tab is green tick mark

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario:TC_016_All Signatures fields (Signature capture, Initials, State, City ect) from all Selected Signers should appear active on Document Review page, and should appear only on dedicated page (Pages on Which Signature fields are defined)
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIGN_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks Link " CONTINUE "
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "Owner" button on Signature Tab
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Owner"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User sets value "1234"  for field "ID Number" for To Signature tab
    Then User sets value "OwnerName"  for field "Name" for To Signature tab
    Then User sets value "1234"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31z/1999"  for field "Birth Date" for To Signature tab
    Then User sets value "abc@abc.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then User should be on page "Owner Signature"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Signature field having text "Owner SIGNING HERE" should visible in yellow shade
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User clicks "Back To Application" button
    Then User clicks Link "[Close]"
    Then User opens Menu "Home"
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies Application status as "In Signatures"
    Then User open application from recent activity
    Then User clicks Link "[Close]"
    Then User should be on page "FL024 TFS 34710 TTEE Form"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Signature field having having signature
    Then User verify 1 signature is displayed
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User clicks "Print Selected Documents" button
    Then User re-name "PrintPDF" PDF and get text from PDF
    Then User verify generated PDF displays signature on signature page
    Then User clicks "Back To Application" button
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Signature field having having signature
    Then User Clicks Continue Button
    Then User should be on page "List of Required Signers"
    Then User selects "Trustee" button on Signature Tab
    Then User should be on page "Client Signature Choice for Trustee"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User sets value "1234"  for field "ID Number" for To Signature tab
    Then User sets value "TrusteeName"  for field "Name" for To Signature tab
    Then User sets value "4321"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31z/1998"  for field "Birth Date" for To Signature tab
    Then User sets value "abc98@abc.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then User should be on page "Trustee Signature"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Signature field having text "Trustee SIGNING HERE" should visible in yellow shade
    Then User verify 1 signature is displayed
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User clicks "Cancel" button
    Then User should be on page "List of Required Signers"
    Then User clicks "Back To Application" button
    Then User opens Menu "Home"
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies Application status as "In Signatures"
    Then User open application from recent activity
    Then User should be on page "FL024 TFS 34710 TTEE Form"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Signature field having having signature
    Then User verify 1 signature is displayed
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User clicks "Print Selected Documents" button
    Then User re-name "PrintPDF" PDF and get text from PDF
    Then User verify generated PDF displays signature on signature page
    Then User clicks "Back To Application" button
    Then User clicks "Continue" button
    Then User should be on page "List of Required Signers"
    Then User selects "Trustee" button on Signature Tab
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User sets value "1234"  for field "ID Number" for To Signature tab
    Then User sets value "TrusteeName"  for field "Name" for To Signature tab
    Then User sets value "4321"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31z/1998"  for field "Birth Date" for To Signature tab
    Then User sets value "abc98@abc.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then User should be on page "Trustee Signature"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Signature field having text "Trustee SIGNING HERE" should visible in yellow shade
    Then User verifies Signature field having having signature
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Back To Application" button
    Then User opens Menu "Home"
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User should be on page "FL024 TFS 34710 TTEE Form"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Signature field having having signature
    Then User verify 2 signature is displayed
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User clicks "Print Selected Documents" button
    Then User re-name "PrintPDF" PDF and get text from PDF
    Then User verify generated PDF displays signature on signature page
    Then User clicks "Back To Application" button
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Trustee Signature field having having signature
    Then User clicks "Continue" button
    Then User should be on page "List of Required Signers"
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AUTOUser1"
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Signature field having having signature
    Then User verify 2 signature is displayed
    Then User verifies Signature field having text "Agent SIGNING HERE" should visible in yellow shade
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Trustee Signature field having having signature
    Then User verify 3 signature is displayed
    Then User opens Menu "Home"
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies Application status as "Signatures Complete"
    Then User open application from recent activity
    Then User clicks Link "[Close]"
    Then User should be on page "FL024 TFS 34710 TTEE Form"
    Then User clicks "Next Page" button 3 times till last page
    Then User verifies Page heading "FL024 TFS 34710 TTEE Form" with form name "Page 4" for data entry flow
    Then User verifies Turstee agent and owner signature
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User clicks "Print Selected Documents" button
    Then User re-name "PrintPDF" PDF and get text from PDF
    Then User verify generated PDF displays signature on signature page

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_004_Verify - If neither Validate Identity Verification or Passcode Only Validation are checked in Organization Settings, the Passcode Only Validation on the field properties will be enabled and available for use on a single signature control
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signers Passcode validation"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks "Close" button
    Then User Verifies data entry percentage is "100%"
    Then User Now Goes to Other Action and Send Request Client to Fill & Sign Option
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Owner"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Insured"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Annuitant"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Payor"
    Then User verify "*Client Authentication via Passcode*" text "does not exist" for "Joint Annuitant"
    Then User verify "*Client Authentication via Passcode*" text "does not exist" for "Joint Owner"
    Then User verify field "SSN" "does not exist" for "Annuitant"
    Then User verify field "Birth Date" "does not exist" for "Annuitant"
    Then User verify field "SSN" "does not exist" for "Owner"
    Then User verify field "Birth Date" "does not exist" for "Owner"
    Then User verify field "SSN" "does not exist" for "Insured"
    Then User verify field "Birth Date" "does not exist" for "Insured"
    Then User verify field "SSN" "does not exist" for "Payor"
    Then User verify field "Birth Date" "does not exist" for "Payor"
    Then User verify field "SSN" "exists" for "Joint Annuitant"
    Then User verify field "Birth Date" "exists" for "Joint Annuitant"
    Then User verify field "SSN" "exists" for "Joint Owner"
    Then User verify field "Birth Date" "exists" for "Joint Owner"
    Then User remove "payor" details on page
    Then User remove "owner" details on page
    Then User remove "insured" details on page
    Then User remove "joint owner" details on page
    Then User remove "joint annuitant" details on page
    Then User enters "annuitantClientAuthentication" details on page
    Then User Clicks "Send Email request" Button
    Then User Notes the URL generated
    Then User clicks on "Ok Popup" link
    Then User verify pending request dialogue should appear
    Then User store "Annuitant Passcode"
    Then User clicks Close button on pending request page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "URL"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button exists on page
    Then User Logs in with "annuitantPasscode"
    Then User clicks "Custom list button 2" button
    Then User select "Australia" from custom list
    Then User verify "Custom list Country" is set to "Australia"
    Then User verify "Custom list State" is set to "Victoria"
    Then User verify "Custom list City" is set to "Melbourne"
    Then User Clicks On Sign Application Button then Clicks Lock Activity Button
    Then User verifies electronic Signatures option window show
    Then User clicks "Sign Activity" button on page
    Then User verify text on "Agree" checkbox
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "In Signatures"
    Then User open application from recent activity
    Then User clicks "Continue" button on signature page
    Then User selects "insured" signer on signature window
    Then User selects "joint annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify "*Client Authentication via Passcode*" text "exists" on signature page
    Then User verify "A passcode will be sent to the client's email for validation." text "exists" on signature page
    Then User verify field "Birth Date" "does not exist" on signature page
    Then User verify field "SSN" "does not exist" on signature page
    Then User verify field "ID Number" "exists" on signature page
    Then User verify field "Name" "exists" on signature page
    Then User verify field "Email Address" "exists" on signature page
    Then User enter all required details for "signing" with client authentication on signature window
    Then User clicks "Send Email Passcode" button on signature page
    Then User select "Passcode Application" email with subject "Passcode Application" on gmail page and save "Passcode"
    Then User enters passcode on signature page
    Then User clicks "Submit" button
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "signerswithPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "signerswithoutPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Annuitant" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Joint Annuitant / Insured" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "payor" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User verify "*Client Authentication via Passcode*" text "exists" on signature page
    Then User enter all required details for "email" with client authentication on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    And User verify request is sent for "Owner" on signature page
    And User verify request is sent for "Payor" on signature page
    And User verify request is sent for "JointOwner" on signature page
    Then User Clicks Back to Application
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    And User login to email link with "passcode" generated on signature page from home page
    Then User clicks "Sign Activity" button on page
    Then User verify Document review window showing "signerswithPOVenabled" on signature window
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User verify Document review window showing "signerswithPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "signerswithoutPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: TC_007_Verify - React  Signature,Sign Now workflow works properly with Org Setting/Validate Identity Verification checked and the signature field of 'Passcode Only Validation' checked
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signers Passcode validation"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks "Close" button
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "insured" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verify "*Client Authentication via Passcode*" text "exists" on signature page
    Then User verify "A passcode will be sent to the client`s email for validation." text "exists" on signature page
    Then User verify field "BirthDate" "does not exist" on signature page
    Then User verify field "Last4DigitsofSSN/GovernmentID" "does not exist" on signature page
    Then User verify field "IDNumber" "exists" on signature page
    Then User verify field "Name" "exists" on signature page
    Then User verify field "EmailAddress" "exists" on signature page
    Then User enter all required details for "signing" with client authentication on signature window
    Then User clicks "Send Email Passcode" button on signature page
    Then User select "Passcode Application" email with subject "Passcode Application" on gmail page and save "Passcode"
    Then User enters passcode on signature page
    Then User clicks "Submit" button
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "signerswithPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "signerswithoutPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Insured / Joint Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "payor" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User verify "*Client Authentication via Passcode*" text "exists" on signature page
    Then User enter all required details for "email" with client authentication on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button exists on page
    Then User Logs in with "recipientPasscode"
    Then User clicks "Sign Activity" button on page
    Then User verify Document review window showing "signerswithPOVenabled" on signature window
    Then User verifies toast message "Initials are Required. Click Initials box to begin."
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User verify Document review window showing "signerswithPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "signerswithoutPOVenabled" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario:TC_002_To Verify Data Entry & Signature retains for Primary Signer & Scondary signer when Fill & Sign Request is performed
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User clicks on "close" link
    Then User Verifies data entry percentage is "100 %"
    Then User sets values for prefilled form
      | Field           | Value      | data-dataitemid                    | Locator Type |
      | First Name      | FName      | Insured_FirstName                  | Input        |
      | Last Name       | LNAme      | Insured_LastName                   | Input        |
      | Middle Name     | MName      | Insured_MiddleName                 | Input        |
      | Street Address  | SAddress   | Insured_ResidentialAddress1        | Input        |
      | Zip Code        | 12345      | Insured_ResidentialAddress_Zipcode | Input        |
      | Phone           | 1234567890 | Insured_PhoneNumber                | Input        |
      | Birth Date      | 10/10/1950   | Insured_DOB                        | Input        |
      | Sex             | Male       | Insured_Gender                     | Check Box    |
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill & Sign" and title should be "Request Clients to Complete Filling and Signing Application"
    Then User selects primary user as "Owner"
    Then User enters "Owner" details on page
    Then User enters "Insured" details on page
    Then User Clicks Send Email request Button
    Then User Notes the URL generated in dialog box
    Then User clicks Ok popup button
    Then Pending request box with "Owner" is displayed on data entry page
    Then Pending request box with "Insured" is displayed on data entry page
    Then User clicks on "Send Reminder to" "Insured" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User clicks Close button on pending request page
    Then User verify fields for "disabled"
      | Field           | Value      | data-dataitemid                    | Locator Type |
      | First Name      | FName      | Insured_FirstName                  | Input        |
      | Last Name       | LNAme      | Insured_LastName                   | Input        |
      | Middle Name     | MName      | Insured_MiddleName                 | Input        |
      | Street Address  | SAddress   | Insured_ResidentialAddress1        | Input        |
      | Zip Code        | 12345      | Insured_ResidentialAddress_Zipcode | Input        |
      | Phone           | 1234567890 | Insured_PhoneNumber                | Input        |
      | Birth Date      | 10/10/1950   | Insured_DOB                        | Input        |
      | Sex             | Male       | Insured_Gender                     | Check Box    |
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Login to External Link for "Primary Owner"
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies Data entered at External page is displaying at main application
      | Field           | Value      | data-dataitemid                    | Locator Type |
      | First Name      | FName      | Insured_FirstName                  | Input        |
      | Last Name       | LNAme      | Insured_LastName                   | Input        |
      | Middle Name     | MName      | Insured_MiddleName                 | Input        |
      | Street Address  | SAddress   | Insured_ResidentialAddress1        | Input        |
      | Zip Code        | 12345      | Insured_ResidentialAddress_Zipcode | Input        |
      | Phone           | 1234567890 | Insured_PhoneNumber                | Input        |
      | Birth Date      | 10/10/1950   | Insured_DOB                        | Input        |
    Then User sets values for prefilled form
      | Field           | Value        | data-dataitemid                    | Locator Type |
      | First Name      | FUpdatedName | Insured_FirstName                  | Input        |
      | Birth Date      | 10/10/1960     | Insured_DOB                        | Input        |
    Then User sets values for prefilled form
      | Field                    | Value       | data-dataitemid                    | Locator Type |
      | Proposed First Name      | FName       | OtherInsured_FirstName             | Input        |
      | Proposed SSN             | 123-12-1234 | OtherInsured_SSN                   | Input        |
      | Proposed Phone           | 1234567890  | OtherInsured_PhoneNumber           | Input        |
      | Proposed Birth Date      | 10/10/1950    | OtherInsured_DOB                   | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                 | Value                | data-dataitemid             | Locator Type |
      | Owner First Name      | FName                | Owner_FirstName             | Input        |
      | Owner Email           | testHexure@gmail.com | Owner_EmailAddress          | Input        |
      | Proposed Phone        | 1234567890           | Owner_PhoneNumber           | Input        |
      | Owner Birth Date      | 10/10/1960           | Owner_DOB                   | Input        |
      | Gold or Platinum      | Gold or Platinum     | CheckBox_4                  | Check Box    |
    Then User clicks "Sign Application" button
    Then User clicks "Cancel" on Confirmation Dialog
    Then User Now Click on Complete Log Off button
    Then User Now Click on Save Finish Later button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Pending Client Request"
    Then User open application from recent activity
    Then Pending request box with "Owner" is displayed on data entry page
    Then Pending request box with "Insured" is displayed on data entry page
    Then User clicks Close button on pending request page
    Then User verify fields for "disabled"
      | Field           | Value      | data-dataitemid                    | Locator Type |
      | First Name      | FName      | Insured_FirstName                  | Input        |
      | Last Name       | LNAme      | Insured_LastName                   | Input        |
      | Middle Name     | MName      | Insured_MiddleName                 | Input        |
      | Street Address  | SAddress   | Insured_ResidentialAddress1        | Input        |
      | Zip Code        | 12345      | Insured_ResidentialAddress_Zipcode | Input        |
      | Phone           | 1234567890 | Insured_PhoneNumber                | Input        |
      | Birth Date      | 10/10/1950   | Insured_DOB                        | Input        |
      | Sex             | Male       | Insured_Gender                     | Check Box    |
    Then User Verifies Continue button is disabled
    Then User Verifies Data entered at External page is displaying at main application
      | Field           | Value      | data-dataitemid                    | Locator Type |
      | Last Name       | LNAme      | Insured_LastName                   | Input        |
      | Middle Name     | MName      | Insured_MiddleName                 | Input        |
      | Street Address  | SAddress   | Insured_ResidentialAddress1        | Input        |
      | Zip Code        | 12345      | Insured_ResidentialAddress_Zipcode | Input        |
      | Phone           | 1234567890 | Insured_PhoneNumber                | Input        |
      | Proposed First Name      | FName       | OtherInsured_FirstName             | Input        |
      | Proposed Phone           | 1234567890  | OtherInsured_PhoneNumber           | Input        |
      | Proposed Birth Date      | 10/10/1950    | OtherInsured_DOB                   | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User Verifies Data entered at External page is displaying at main application
      | Field                 | Value                | data-dataitemid             | Locator Type |
      | Owner First Name      | FName                | Owner_FirstName             | Input        |
      | Owner Email           | testHexure@gmail.com | Owner_EmailAddress          | Input        |
      | Proposed Phone        | 1234567890           | Owner_PhoneNumber    | Input        |
      | Owner Birth Date      | 10/10/1960           | Owner_DOB                   | Input        |
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Login to External Link for "Primary Owner"
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Attach Documents" button on page
    Then User verify that application forms and templates are not displayed on SSN home page
    Then User uploads Document
    Then User clicks "Upload" button
    Then User close the dialog window "Documents"
    Then User clicks "Sign Application" button
    Then User clicks "OK" on Confirmation Dialog
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User clicks "Ok" button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "In Signatures"
    Then User open application from recent activity
    Then Pending request box with "Owner" is not displayed on data entry page
    Then Pending request box with "Insured" is displayed on data entry page
    Then User clicks Close button on pending request page
    Then User verify application is read only
    Then User Verifies Continue button is disabled
    Then User clicks "Next Page" button 3 times till last page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User verify signature is "not displayed" for "ProposedInsuredSignature"
    Then User verify signature is "not displayed" for "Agent_Signature"
    Then User verify signature is "not displayed" for "AdditionalAgent2_Signature"
    Then User verify 1 signature is displayed
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Login to External Link for "Insured"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Next Page" button 3 times till last page
    Then User verify "Insured SIGNING HERE" text "displayed" on signature page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "insured" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User clicks "Ok" button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Next Page" button 3 times till last page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User verify signature is "displayed" for "ProposedInsuredSignature"
    Then User verify signature is "not displayed" for "Agent_Signature"
    Then User verify signature is "not displayed" for "AdditionalAgent2_Signature"
    Then User verify 2 signature is displayed
    Then User clicks "Continue" button
    Then User selects "agent" signer on signature window
    Then User clicks on Sign Now button
    Then User clicks "Next Page" button 3 times till last page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User verify signature is "displayed" for "ProposedInsuredSignature"
    Then User verify "Agent SIGNING HERE" text "displayed" on signature page
    Then User Clicks on Agree Checkbox
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Insured" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User clicks "Back To Application" button
    Then User navigates to Home page
    Then User clicks "Ok" on Confirmation Dialog
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User "Finished 1 of 3 Steps. Agent signatures are needed." popup showing, Close Popup
    Then User clicks "Next Page" button 3 times till last page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User verify signature is "displayed" for "ProposedInsuredSignature"
    Then User verify signature is "displayed" for "Agent_Signature"
    Then User verify signature is "not displayed" for "AdditionalAgent2_Signature"
    Then User verify 3 signature is displayed
    Then User clicks "Continue" button
    Then User selects "Agent 2" signer on signature window
    Then User clicks on Sign Now button
    Then User clicks "Next Page" button 3 times till last page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User verify signature is "displayed" for "ProposedInsuredSignature"
    Then User verify signature is "displayed" for "Agent_Signature"
    Then User verify "Agent 2 SIGNING HERE" text "displayed" on signature page
    Then User Clicks on Agree Checkbox
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC02-pdfFile"
    Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication_MultiSigner"
    Then User verifies 1 occurrence of "Remove" button for applications
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User close the dialog window "Documents"
    Then User clicks "Continue" button
    Then User Clicks on "yes" on confirmation dialog
    Then User navigates to Home page
    Then User open application from recent activity
    Then User clicks Close button on pending request page
    Then User clicks "Next Page" button 3 times till last page
    Then User verify signature is "displayed" for "ProposedOwnerSignature"
    Then User verify signature is "displayed" for "ProposedInsuredSignature"
    Then User verify signature is "displayed" for "Agent_Signature"
    Then User verify signature is "displayed" for "AdditionalAgent2_Signature"
    Then User verify 4 signature is displayed
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC02-pdfFile"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication_MultiSigner"
    Then User verifies 2 occurrence of "Remove" button for applications
    Then User close the dialog window "Documents"
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies "Application" for "BlueSkyInsuranceTicketApplication_MultiSigner" is "Checked"
    Then User verifies "Report PDF" for "Validation Report" is "Checked"
    Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
    Then User verifies "Supporting Document" for "Other" is "Unchecked"
    Then User check document "Compliant Illustration"
    Then User check document "Supporting Document"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | FUpdatedName |
      | LNAme        |
      | MName        |
      | SAddress   |
      | 12345      |
      | 1234567890 |
      | 10/10/1960   |
      | FName       |
      | 123-12-1234 |
      | 10/10/1950    |
      | Application Validation Report |
      | Application Name |
      | Errors           |
      | Reminders        |
    Then User verifies pdf document contains 10 pages
    And User verify generated PDF displays signature


  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: Esig_5_Verify Sign Now & Send Email Request with LN Questionnaire and Document set along with Disable Multi Sign
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_05"
    Then User on Login Page enters valid username as "Admin_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "LN Signing with Doc Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Click on Enter More Data
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | First Name     | OwnerFirstName | FLI_OWNER_FNAME                  | Input        |
      | Last Name      | OwnerLastName  | FLI_OWNER_LNAME                  | Input        |
      | Date of Birth  | 03/09/2000    | Owner_DOB                        | Input        |
      | SSN Code       | 987654321     | FLI_OWNER_SSN                    | Input        |
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | First Name     | JointOwnerFirstName | FLI_JOINT_OWNER_FNAME            | Input        |
      | Last Name      | JointOwnerLastName  | FLI_JOINT_OWNER_LNAME            | Input        |
      | Date of Birth  | 03/09/2000    | FLI_JOINT_OWNER_BDATE            | Input        |
      | SSN Code       | 987654321     | FLI_JOINT_OWNER_SSN              | Input        |
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | First Name     | AnnuitantFirstName | FLI_ANNUITANT_FNAME                  | Input        |
      | Last Name      | AnnuitantLastName  | FLI_ANNUITANT_LNAME                  | Input        |
      | Date of Birth  | 03/09/2000    | FLI_ANNUITANT_BDATE                        | Input        |
      | SSN Code       | 987654321     | FLI_ANNUITANT_SSN                    | Input        |
    Then User Clicks Continue
    Then User selects "Use E-Signature" button on Signature Tab
    Then User selects "owner" on signature window
    Then User verifies Proceed button Should not Shown and Directly Show Signature Choices Screen with Sign Now & Send Email Request buttons
    Then User clicks on Sign Now button
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verifies Lexis Nexis Questionnaire showing
    Then User select answers in all three question and Click Submit
    Then User clicks "Continue" button on document sets signature page
    Then User verify arrow point to "APP222 with LN Multi Signer" form on signature page
    Then User verify Document review window showing "app222" on signature window
    Then User Performs Initials
    Then User clicks "Continue" button on document sets signature page
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "Document Sets to be Signed by Owner"
    Then User clicks "Continue" button on document sets signature page
    Then User verify arrow point to "Fees Disclosure with 3 signers doc set" form on signature page
    Then User verify Document review window showing "feeForm" on signature window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User selects "joint owner" on signature window
    Then User Clicks on Send Email Request
    Then User enters reviewer Email on Send Email Joint Owner
    Then User Clicks Send Email request Button
    Then User Notes the URL generated and clicks Back to Signer
    Then User Clicks Back to Application
    Then User Log Off from current Application With PopUp OK
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with Signer SSN and DOB
    Then User Clicks on  Sign Activity
    Then User verifies Lexis Nexis Questionnaire showing
    Then User select answers in all three question and Click Submit
    Then User should be on page "Document Sets to be Signed by Joint Owner"
    Then User clicks "Continue" button on document sets signature page
    Then User verify arrow point to "APP222 with LN Multi Signer" form on signature page
    Then User verify Document review window showing "app222" on signature window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "Document Sets to be Signed by Joint Owner"
    Then User clicks "Continue" button on document sets signature page
    Then User verify arrow point to "Fees Disclosure with 3 signers doc set" form on signature page
    Then User verify Document review window showing "feeForm" on signature window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Clicks OK
    Then User Navigate to Main URL
    Then User on Login Page enters valid username as "Admin_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User Clicks on Continue button
    Then User selects "Annuitant" on signature window
    Then User Clicks on Send Email Request
    Then User enters SignerName, SingerEmail, SSN, DOB on Send Email Signer
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    And User login to email link with "passcode" generated on signature page from home page
    Then User Clicks on  Sign Activity
    Then User verifies Lexis Nexis Questionnaire showing
    Then User select answers in all three question and Click Submit
    Then User should be on page "Document Sets to be Signed by Annuitant"
    Then User clicks "Continue" button on document sets signature page
    Then User verify arrow point to "APP222 with LN Multi Signer" form on signature page
    Then User verify Document review window showing "app222" on signature window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "Document Sets to be Signed by Annuitant"
    Then User clicks "Continue" button on document sets signature page
    Then User verify arrow point to "Fees Disclosure with 3 signers doc set" form on signature page
    Then User verify Document review window showing "feeForm" on signature window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Clicks OK
    Then User Navigate to Main URL
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_05"
    Then User on Login Page enters valid username as "Admin_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"


  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIG_12_Verify Multiple Signer can complete signature with LN & Document Set applied For Sign Now case
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_12"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "LN Signing with Doc"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Click on Enter More Data
    Then User Enters Owner First name, last name & Date of Birth Enter SSN
    Then User clicks "Continue" button
    Then User clicks on Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User selects "annuitant" on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User sets value "9876"  for field "ID Number" for To Signature tab
    Then User sets value "test@hexure.com"  for field "Email Address" for To Signature tab
    Then User clicks "Verified" button on signature page
    Then User Verifies Lexis Nexis Questionnaire is showing
    Then User Select "First" Answer in Questionnaire
    Then User Select "Second" Answer in Questionnaire
    Then User Select "Third" Answer in Questionnaire
    Then User clicks Authentication Submit button
    Then User Performs Initials
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Clicks on Agree Checkbox
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User Selects Agent Signer
    Then User Clicks Sign Now
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User Performs Signature and Clicks I Consent
    Then User Clicks on Continue when app is in Finalize step
    Then User Clicks on "yes" on confirmation dialog
    Then User verifies Application is still in Finalize mode with Disabled Finished Tab.

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIG_13_Verify Multiple Signer can complete signature with LN & Document Set applied For Send Email Request case
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_13"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "LN Signing with Doc"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Click on Enter More Data
    Then User Enters Owner First name, last name & Date of Birth Enter SSN
    Then User clicks "Continue" button
    Then User clicks on Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User selects "annuitant" on signature window
    Then User clicks "Proceed" button on signature page
    Then User Clicks on Send Email Request
    Then User Enters "Signer" Name, Email, SSN, DOB on Request Signature page
    Then User Clicks on Send Email Request Button
    Then User Notes the URL generated and clicks Back to Signer
    Then User Verifies Now all signers 3 have Revoke Request link
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to signername         |
      | Send Passcode to signername's email |
      | Cancel this request                 |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "In Signatures"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with Signer SSN and DOB
    Then User Clicks on  Sign Activity
    Then User Verifies Lexis Nexis Questionnaire is showing
    Then User Select "First" Answer in Questionnaire
    Then User Select "Second" Answer in Questionnaire
    Then User Select "Third" Answer in Questionnaire
    Then User clicks Authentication Submit button
    Then User Performs Initials
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Clicks on Agree Checkbox
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_13"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User Clicks on Continue button
    Then User Select Agent
    Then User clicks on Sign Now button
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User Performs Signature and Clicks I Consent
    Then User Clicks on Continue when app is in Finalize step
    Then User Clicks on "yes" on confirmation dialog
    Then User verifies Application is still in Finalize mode with Disabled Finished Tab.

  @RegressionTest @RegEsignCP1MVC @RegressionTestCP1
  Scenario: ESIG_14_Verify Multiple Signer can complete signature with LN & Document Set applied For Send Email Request with Generate Link case
    Given User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_14"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "LN Signing with Doc"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Click on Enter More Data
    Then User Enters Owner First name, last name & Date of Birth Enter SSN
    Then User clicks "Continue" button
    Then User clicks on Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User selects "annuitant" on signature window
    Then User clicks "Proceed" button on signature page
    Then User Clicks on Send Email Request
    Then User Enters "Signer" Name, Email, SSN, DOB on Request Signature page
    Then User Clicks on "Generate Link Without Email" Button
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User Verifies Now all signers 3 have Revoke Request link
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to signername         |
      | Send Passcode to signername's email |
      | Cancel this request                 |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "In Signatures"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User Clicks on  Sign Activity
    Then User Verifies Lexis Nexis Questionnaire is showing
    Then User Select "First" Answer in Questionnaire
    Then User Select "Second" Answer in Questionnaire
    Then User Select "Third" Answer in Questionnaire
    Then User clicks Authentication Submit button
    Then User Performs Initials
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User Clicks on Agree Checkbox
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User is on FireLight login page for TestCase "RegEsignCP1MVC_ESIG_14"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User Clicks on Continue button
    Then User Select Agent
    Then User clicks on Sign Now button
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User Performs Signature and Clicks I Consent
    Then User Clicks on Continue when app is in Finalize step
    Then User Clicks on "yes" on confirmation dialog
    Then User verifies Application is still in Finalize mode with Disabled Finished Tab.
