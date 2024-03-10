Feature: FireLight_Regression_EsignHP2_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignHP2REACT @RegressionTestHP2
  Scenario: ACRE_002_Verify FLI_Declined_ESIGN Flag when set True in React E-Sign Decline Option not Show
    Given User is on FireLight login page for TestCase "RegEsignHP2React_ACRE_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User clicks on Decline E-Sign Textbox
    Then User enters "True" in textbox Decline E-sgn textbox
    Then User Clicks on Continue button
    Then User Verifies popup "Confirmation Dialog"
    Then User Verifies Yes and No button displayed on Confirmation Dialog
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission"
    Then User clicks on Other Action Link of Popup message
    Then User verifies Other Action Menu Opens
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | E-Signature Process Declined  | Application lock. Electronic signatures declined.|

  @RegressionTest @RegEsignHP2REACT @RegressionTestHP2
  Scenario: TC_015_Verify State Signing Error for React E-Sign with Disabled State Signing for Particular Signers
    Given User is on FireLight login page for TestCase "RegEsignHP2React_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Florida"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "State Signing Error" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User set value "16|9" for field "Enter Signer code for which State signing error needs to be disabled"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies TextBox "ID Issue Jurisdiction"
    Then User verify value is "Florida" for field "IDIssueJurisdiction"
    Then User Selects "Colorado" option in "IDIssueJurisdiction" Dropdown
    Then User enter all required details for signing on signature window
    Then User Clicks on Button "Verified"
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "Signer Name" City as "Signer City"
    Then User verify value is "Florida" for field "IDIssueJurisdiction"
    Then User Selects "Colorado" option in "IDIssueJurisdiction" Dropdown
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signing Error"
    Then User verifies "The jurisdiction in which you are signing must match the activity jurisdiction." message
    Then User clicks on "OK" link
    Then User Selects "Florida" option in "IDIssueJurisdiction" Dropdown
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message "Thank you for completing the signing on this document"
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "Signer2 Name" City as "Signer2 City"
    Then User verify value is "Florida" for field "IDIssueJurisdiction"
    Then User Selects "Idaho" option in "IDIssueJurisdiction" Dropdown
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signing Error"
    Then User verifies "The jurisdiction in which you are signing must match the activity jurisdiction." message
    Then User clicks on "OK" link
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signing Error"
    Then User verifies "The signing jurisdiction selected does not match the activity jurisdiction. Please contact your agent to review jurisdiction details." message
    Then User clicks on "OK" link
    Then User verifies "Activity is incomplete and no longer available for submission due to errors in the signing ceremony. " message
    Then User verifies second toast message "Please create a new activity or copy to restart the signing ceremony and continue with the submission process." or " Please create a new activity or copy to restart the signing ceremony and continue with the submission process." on Application Page
    Then User clicks Close button on pending request page
    Then User Clicks on Other Action Tab and verify "Unlock Application" option is not available
    Then User Close Other Action by clicking again on OtherAction tab
    Then User Now Clicks on Other Action tab and Clicks on History button
    Then User verifies in History showing entry for "Signature Submission Invalid" request
    Then User Now Clicks on Other Action tab and Clicks on History button
    And User verify audit entries contains "Signing Ceremony - Jurisdiction Attempts Exceeded,Signature jurisdiction exceeded the maximum number of acceptable attempts. Activity is no longer active.,Signing Ceremony - Invalid Jurisdiction,Signing jurisdiction selected 'Idaho' does not match the activity jurisdiction." on history dialog
    Then User Now Clicks on Other Action tab and  Clicks on "Copy Activity"
    Then User Renames the Application Name For Copy Activity
    Then User Clicks on "OK" on confirmation dialog
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies TextBox "ID Issue Jurisdiction"
    Then User verify value is "Florida" for field "IDIssueJurisdiction"
    Then User Selects "Colorado" option in "IDIssueJurisdiction" Dropdown
    Then User enter all required details for signing on signature window
    Then User Clicks on Button "Verified"
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "Signer Name" City as "Signer City"
    Then User verify value is "Florida" for field "IDIssueJurisdiction"
    Then User Selects "Arizona" option in "IDIssueJurisdiction" Dropdown
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies signature is "COMPLETE" for "Owner"
    Then User selects "Agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "agent" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User clicks "Edit" button on signature page
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Close button on pending request page
    Then User Clicks Back to Application
    Then User Navigates to Home Page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User verifies Any Application status as "Signature Submission Invalid"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "recipientPasscode"
    Then User Clicks on Sign Activity
    Then User Clicks Agree Document Checkbox
    Then User Enters Agent Full Name, Agent ID, and Agent City
    Then User verify value is "Florida" for field "IDIssueJurisdiction"
    Then User Selects "Guam" option in "IDIssueJurisdiction" Dropdown
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signing Error"
    Then User verifies "The jurisdiction in which you are signing must match the activity jurisdiction." message
    Then User clicks on "OK" link
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signing Error"
    Then User verifies "The jurisdiction in which you are signing must match the activity jurisdiction." message
    Then User clicks on "OK" link
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signing Error"
    Then User verifies "The signing jurisdiction selected does not match the activity jurisdiction. Please contact your agent to review jurisdiction details." message
    Then User verifies second toast message "Please create a new activity or copy to restart the signing ceremony and continue with the submission process." or " Please create a new activity or copy to restart the signing ceremony and continue with the submission process." on Application Page
    Then User clicks on "OK" link
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegEsignHP2React_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Signature Submission Invalid"
    Then User open application from recent activity
    Then User verifies "Activity is incomplete and no longer available for submission due to errors in the signing ceremony. " message
   Then User verifies second toast message "Please create a new activity or copy to restart the signing ceremony and continue with the submission process." or " Please create a new activity or copy to restart the signing ceremony and continue with the submission process." on Application Page
    Then User clicks Close button on pending request page
    Then User Clicks on Other Action Tab and verify "Unlock Application" option is not available
    Then User Close Other Action by clicking again on OtherAction tab
    Then User Now Clicks on Other Action tab and Clicks on History button
    Then User verifies in History showing entry for "Signature Submission Invalid" request
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Signing Ceremony - Jurisdiction Attempts Exceeded,Signature jurisdiction exceeded the maximum number of acceptable attempts. Activity is no longer active.,Signing Ceremony - Invalid Jurisdiction,Signing jurisdiction selected 'Guam' does not match the activity jurisdiction." on history dialog

  @RegressionTest @RegEsignHP2REACT @RegressionTestHP2
  Scenario: TC_002_Verify the default blank jurisdiction For React E-Sign Single & Multi signe Sign Now and Sign Later
    Given User is on FireLight login page for TestCase "RegEsignReactHP2React_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alaska"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Jurisdiction1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Next Button
    Then User verify value of field "FLI_SIGNING_ALLOWBLANK_JURISDICTION" is set to "True"
    Then User clicks "Continue" button
    Then User clicks on Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Alaska" for field "IDIssueJurisdiction"
    Then User enter all required details for signing on signature window
    Then User Clicks on Button "Verified"
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "Signer Name" City as "Signer City"
    Then User verifies "State is required." message
    Then User verify value is "" for field "IDIssueJurisdiction"
    Then User Selects "Colorado" option in "IDIssueJurisdiction" Dropdown
    Then User verifies "State is required." message is Disappeared
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies signature is "COMPLETE" for "Annuitant / Owner"
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "joint Owner" details for sending mail on signature window
    Then User Enters "jointOwnerName" in TextBox "SignerName"
    Then User Clicks on Button "Send Email Request"
    Then User Notes the URL generated and clicks Back to Signer
    Then User Verifies "Joint Owner" Button available for "Edit"
    Then User Clicks Back to Application
    Then User clicks Close button on pending request page
    Then User Navigates to Home Page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "Joint owner" SSN and DOB
    Then User Clicks on Sign Activity
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "joint Name" City as "joint City"
    Then User verifies "State is required." message
    Then User verify value is "" for field "IDIssueJurisdiction"
    Then User Selects "Idaho" option in "IDIssueJurisdiction" Dropdown
    Then User verifies "State is required." message is Disappeared
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks on Ok button
    Then User should Logoff from the External page and Thank you for using our application page should display

  @RegressionTest @RegEsignHP2REACT @RegressionTestHP2
  Scenario: ACRE_004 Verify Agent Signing Order for React E-Sign when set to First
    Given User is on FireLight login page for TestCase "RegEsignHP2React_ACRE_004"
    Then User on Login Page enters valid username as "Dist07_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lexis Nexis Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Verifies Insured & Owner tabs checkbox are disabled and and Agent Tabs checkbox is enabled
    Then User selects "owner" signer on signature window
    Then User selects "insured" signer on signature window
    Then User Verifies Sign Now & Send Email Request buttons are disabled
    Then User selects "agent 2" signer on signature window
    Then User Verifies Sign Now & Send Email Request buttons are enabled
    Then User clicks "Send Email Request" button on signature page
    Then User clicks on Cancel button from Send Email Request window
    Then User selects "agent 2" signer on signature window
    Then User clicks on Sign Now button
    Then User clicks on Agree Checkbox
    Then User Enters Agent Full Name as "agentFullName" City as "agentCity" on capture electronic signature window
    Then User clicks "I Consent" button on signature page
    Then User verifies signature is "COMPLETE" for "Agent 2"
    Then User selects "insured" signer on signature window
    Then User verify Sign Now & Send Email Request buttons are enabled
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5555" in TextBox "IDNumber"
    Then User Enters "Shiba" in TextBox "Name"
    Then User Enters "5555" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "vkapil@hexure.com" in TextBox "EmailAddress"
    Then User Enters "09091998" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User clicks on Agree Checkbox
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User clicks "I Consent" button on signature page
    Then User verifies signature is "COMPLETE" for "Insured"
    Then User verify Agent Re-Sign Button is disabled under Manage Request Table
    Then User verify Re Sign button is enabled for Insured signer under Manage Request Table
    Then User selects "owner" signer on signature window
    Then User verify Sign Now & Send Email Request buttons are enabled
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "Shiba" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Enters "5555" in TextBox "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "09091990" in TextBox "*SignerBirthDate"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User verify Agent Re-Sign Button is disabled under Manage Request Table
    Then User verify Re Sign button is enabled for Insured signer under Manage Request Table
    Then User verify Edit button is displayed for Owner under Manage Request Table
    Then User Clicks Back to Application
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User Clicks on Sign Activity
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User clicks on I have reviewed and agree with the terms expressed within this document
    Then User should be on page "Capture Electronic Signature"
    Then User clicks on "close" link
    Then User clicks on "close" link
    Then User Enters Signer Full Name as "signerFullName" City as "SignerCity"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User is on FireLight login page for TestCase "RegEsignHP2React_ACRE_004"
    Then User on Login Page enters valid username as "Dist07_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Complete"
    Then User open that recent created activity from recent Activities tab
    Then User Verifies Final popup after application submitted with message "Application is finished"

  @RegressionTest @RegEsignHP2REACT @RegressionTestHP2
  Scenario: ACRE_005 Verify Agent Signing Order for React E-Sign when set to Last
    Given User is on FireLight login page for TestCase "RegEsignHP2React_ACRE_005"
    Then User on Login Page enters valid username as "Dist09_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lexis Nexis Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Verifies Insured & Owner tabs checkbox are enabled and and Agent Tabs checkbox is disabled
    Then User selects "agent 2" signer on signature window
    Then User Verifies Sign Now & Send Email Request buttons are disabled
    Then User selects "insured" signer on signature window
    Then User verify Sign Now & Send Email Request buttons are enabled
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "Insured Name" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Enters "1234" in TextBox "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "11121999" in TextBox "*SignerBirthDate"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the "recipient" URL generated and clicks Back to Signer
    Then User verifies Agent tab checkbox is disabled
    Then User selects "Owner" signer on signature window
    Then User verify Sign Now & Send Email Request buttons are enabled
    Then User clicks "Sign Now" button on signature page
    Then User Enters "123456" in TextBox "IDNumber"
    Then User Enters "Owner SignerName" in TextBox "Name"
    Then User Enters "1234" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "testhexure@gmail.com" in TextBox "EmailAddress"
    Then User Enters "11121999" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User clicks initials box and enter "PS" on document sets signature page
    Then User clicks on Agree Checkbox
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User clicks "I Consent" button on signature page
    Then User verifies signature is "COMPLETE" for "Owner"
    Then User verifies signature is "SENT" for "Insured"
    Then User verify Re Sign button is enabled for Owner signer under Manage Request Table
    Then User verify Edit button is displayed for Insured under Manage Request Table
    Then User verifies Agent tab checkbox is disabled
    Then User Clicks Back to Application
    Then User Clicks on Continue button
    Then User verifies Agent tab checkbox is disabled
    Then User Verifies Sign Now & Send Email Request buttons are disabled
    Then User Clicks Back to Application
    Then User Notes the Passcode from Pending Request dialog box
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "recipientsignerUrl"
    Then User Logs in with "recipientPasscode"
    Then User Clicks on Button "Sign Activity"
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "signerFullName" City as "SignerCity"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegEsignHP2React_ACRE_005"
    Then User on Login Page enters valid username as "Dist09_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User Clicks on Continue button
    Then User Verifies Agent Tabs checkbox is enabled
    Then User selects "Agent 2" signer on signature window
    Then User verify Sign Now & Send Email Request buttons are enabled
    Then User clicks on Sign Now button
    Then User Clicks Agree Document Checkbox
    Then User Enters Agent Full Name and Agent City
    Then User Clicks on "I Consent" Button
    Then User clicks "OK" button on signature page
    Then User Verifies Final popup after application submitted with message "Application is finished"

  @RegressionTest @RegEsignHP2REACT @RegressionTestHP2
  Scenario: ACRE_001_Verify FLI_Declined_ESIGN Flag when set False in React E-Sign Decline Option not Show
    Given User is on FireLight login page for TestCase "RegEsignReactHP2React_ACRE_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup New
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid    | Locator Type |
      | Decline E-Sgn textbox        | False | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Continue" button
    Then User Verifies "Electronic Signatures" is not visible
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Enters "Shiba" in TextBox "Name"
    Then User Enters "ABC5566" in TextBox "IDNumber"
    Then User Enters "Varun@gmail.com" in TextBox "EmailAddress"
    Then User Enters "1015" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "09091987" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab New
    Then User sets value "Pune"  for field "City" for To Signature tab for city
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies signature is "COMPLETE" for "Joint Owner / Owner"
    Then User selects "Agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User sets value "Pune"  for field "City" for To Signature tab for city
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Clicks on Button "OK"
    #As Per Discussion With Deependra, Commenting the line to verify the vanishing popup message.
#    Then User verifies toast message "Finished 2 of 3 Steps. Please Continue."
    Then User clicks "Continue" button
    Then User Clicks on "yes" on confirmation dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                       | Status Description                                |
      | E-Signature Process Declined | Application lock. Electronic signatures accepted. |