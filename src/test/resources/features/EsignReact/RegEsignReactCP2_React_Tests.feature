Feature: FireLight_Regression_EsignCP2_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignReactCP2React @RegressionTestCP2
  Scenario: TC_001_Verify Fields Validation when Sign Now & Sign Later is selected For E-Sign React
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React Esign Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Continue" button
    Then User verifies Accept and decline E-signature Button present
    Then User clicks "Use E-Signature" button on signature page
    Then User Verifies page heading "Request Signers for "
    Then User verifies "Joint Owner" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Annuitant" under list of required signers section on signature page
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies page heading "Agent Identification Verification"
    Then User verifies "AgentID" TextBox
    Then User verifies "FormofIdentification" TextBox
    Then User verifies "IDNumber" TextBox
    Then User verifies "Name" TextBox
    Then User verifies "Last4DigitsofSSN/GovernmentID" TextBox
    Then User verifies "BirthDate" TextBox
    Then User Verifies TextBox "ID Issue Jurisdiction"
    Then User verifies "Cancel" Button
    Then User verifies "Verified" Button
    Then User Verifies options present for "FormofIdentification" dropdown
      |options|
      |Drivers License|
      |Passport       |
      |Resident Alien ID|
      |State Issued ID|
    Then User Selects "Passport" option in "FormofIdentification" Dropdown
    Then User Verifies TextBox "Country of Passport"
    Then User Verifies all Options of "Country of Passport" are Selectable
    Then User Enters "5555" in TextBox "IDNumber"
    Then User Clears the TextBox"IDNumber"
    Then user Verifies the Error Message "ID number is required." for "IDNumber"
    Then User Enters "5555" in TextBox "IDNumber"
    Then User Enters "Shiba" in TextBox "Name"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "The last 4 digits of SSN are required." for "Last4DigitsofSSN/GovernmentID"
    Then user Verifies the Error Message "A valid birth date is required." for "BirthDate"
    Then User Enters "555" in TextBox "Last4DigitsofSSN/GovernmentID" new
    Then user Verifies the Error Message "Value must be 4 digits." for "Last4DigitsofSSN/GovernmentID"
    Then User Enters "abc" in TextBox "Last4DigitsofSSN/GovernmentID" new
    Then User verifies "Last4DigitsofSSN/GovernmentID" TextBox has Prefilled Value ""
    Then User Enters "5555" in TextBox "Last4DigitsofSSN/GovernmentID" new
    Then User Enters "0909" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "A valid birth date is required." for "BirthDate"
    Then User Enters "09091998" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User Verifies Popup Heading As "Empty Email"
    Then User Verifies Popup message as "Caution: Without a client email address, the system cannot send out an email after application submission with information on how to retrieve the final signed documents for the application. Therefore, by clicking OK, you agree to provide the client with signed copies of the documents through another means."
    Then User clicks on "Cancel" link
    Then User Verifies page heading "Agent Identification Verification"
    Then User Enters "Varun@" in TextBox "EmailAddress"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "A valid email address is required." for "EmailAddress"
    Then User Enters "vkapil@hexure.com" in TextBox "EmailAddress"
    Then User Clicks on Button "Verified"
    Then User selects check box "I have reviewed and agree with the terms expressed within this document."
    Then User clicks on "Cancel" link
    Then User Verifies page heading "Request Signers for "
    Then User selects "Annuitant" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verifies "MobileNumber" TextBox
    Then User verifies "Send SMS Text" Button
    Then User Clicks on Button "Send SMS Text"
    Then user Verifies the Error Message "ID number is required." for "IDNumber"
    Then user Verifies the Error Message "Full name is required." for "Name"
    Then user Verifies the Error Message "The last 4 digits of SSN are required." for "Last4DigitsofSSN/GovernmentID"
    Then user Verifies the Error Message "A valid birth date is required." for "BirthDate"
    Then user Verifies the Error Message "A valid mobile number is required." for "MobileNumber"
    Then User Enters "5555" in TextBox "IDNumber"
    Then User Enters "Shiba" in TextBox "Name"
    Then User Enters "5555" in TextBox "Last4DigitsofSSN/GovernmentID" new
    Then User Enters "09091998" in TextBox "BirthDate"
    Then User Enters "88897" in TextBox "MobileNumber"
    Then user Verifies the Error Message "A valid mobile number is required." for "MobileNumber"
    Then User Enters "7372958222" in TextBox "MobileNumber"
    Then User Clicks on Button "Send SMS Text"
    Then User Verifies Popup Heading As "Client Verification"
    Then User Verifies Popup message as "For identity verification, please enter the passcode sent to your mobile phone"
    Then User Enters "54545454" in TextBox "EnterPasscode"
    Then User clicks on "Submit" link
    Then User Verifies Popup message as "Incorrect passcode."
    Then User clicks on "Cancel" link
    Then User clicks on "Cancel" link
    Then User Verifies page heading "Request Signers for "
    Then User selects "Joint Owner" signer on signature window
    Then User Clicks on Button "Send Email Request"
    Then User Verifies page heading "Send Email To Joint Owner To Request Signatures"
    Then User Clicks on Button "Send Email Request"
    Then user Verifies the Error Message "Signer Name is required." for "SignerName"
    Then user Verifies the Error Message "Signer Email is required." for "SignerEmail"
    Then user Verifies the Error Message "The last 4 digits of SSN are required." for "*SignerLast4DigitsofSSN/GovernmentID"
    Then user Verifies the Error Message "A valid birth date is required." for "*SignerBirthDate"
    Then user Verifies the Error Message "A valid mobile number is required." for "SignerMobileNumber"
    Then User Clears the TextBox"YourName"
    Then User Clears the TextBox"YourEmail"
    Then user Verifies the Error Message "Your Name is required." for "YourName"
    Then user Verifies the Error Message "Your Email is required." for "YourEmail"
    Then User Enters "Shiba" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Clears the TextBox"SignerName"
    Then User Clears the TextBox"SignerEmail"
    Then user Verifies the Error Message "Signer Name is required." for "SignerName"
    Then user Verifies the Error Message "Signer Email is required." for "SignerEmail"
    Then User Enters "55" in TextBox "*SignerLast4DigitsofSSN/GovernmentID" new
    Then user Verifies the Error Message "Value must be 4 digits." for "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "5555" in TextBox "*SignerLast4DigitsofSSN/GovernmentID" new
    Then User Enters "09091990" in TextBox "*SignerBirthDate"
    Then User Enters "8888888888" in TextBox "SignerMobileNumber"
    Then User Enters "DeependraDist" in TextBox "YourName"
    Then User Enters "dbhati@hexure.com" in TextBox "YourEmail"
    Then User Enters "Shiba" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Clicks on Button "Send Email Request"
    Then User verifies link is generated and store it
    Then User Clicks on Button "Back To Signers"
    Then User verifies "Joint Owner" under completed signatures section with "Edit" button on signature page

  @RegressionTest @RegEsignReactCP2React @RegressionTestCP2
  Scenario: TC_008_Verify E-Sign React For Client Fill & Sign Request
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User enters value in field "ApplicantIncome" on investment profile page
    Then User enters value in field "JointApplicantIncome" on investment profile page
    Then User enters value in field "ApplicantNetWorthValue" on investment profile page
    Then User enters value in field "JointApplicantNetWorthValue" on investment profile page
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User enters "Owner" details on page
    Then User enters "jointowner" details on page
    Then User Now Clicks on Generate Link Without Email button
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User verifies dialog window "Pending Requests"
    And Pending request box with "Electronic Signature Joint Owner" is displayed on data entry page
    Then User also Verifies for Primary signer RequestType as "Client Fill And Sign Owner"
    Then User clicks Close button on pending request page
    Then User clicks on pending request link
    Then User verifies dialog window "Pending Requests"
    Then For JointOwner(Secondary Signer) User gets the URL from Message template by clicking Send Reminder to Owner
    Then User clicks on "Cancel" link
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Client Request"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User verifies "Last 4 Digits of SSN/Government ID" TextBox in External Login Page
    Then User verifies "Birth Date (MM/DD/YYYY)" TextBox in External Login Page
    Then User verifies "Passcode" TextBox in External Login Page
    Then User Logs in with "signerPasscode"
    Then User enters value in field "CombinedNetWorthValue" on investment profile page
    Then User enters value in field "CombinedIncome" on investment profile page
    Then User Clicks On Sign Application Button then Clicks Lock Activity Button
    Then User Verifies tab "Sign Activity"
    Then User Verifies tab "Review Documents"
    Then User Verifies tab "Contact Agent"
    Then User Verifies toolbar "View Activity PDF"
    Then User Verifies toolbar "Contact Agent"
    Then User Verifies toolbar "Log Off"
    Then User clicks "View Activity PDF" button on signature page
    Then User verifies pdf text in "PrintPdf" document
      | 5        |
    Then User Verifies "amountNetJointWorth" present in PDF
    Then User Verifies "amountIncome" present in PDF
    Then User Verifies "amountJointIncome" present in PDF
    Then User Verifies "amountNetWorth" present in PDF
    Then User Clicks "Contact Agent" Button
    Then User verifies "FromName" TextBox value as "ownerName"
    Then User verifies "FromAddress" TextBox value as "ownerEmail"
    Then User verifies "ToName" TextBox value as "agentName"
    Then User verifies "ToAddress" TextBox value as "agentEmail"
    Then User Add some text to the Message body "Customized Message" and Click on Send button
    Then User Clicks on Sign Activity
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Verifies toolbar "View Activity PDF"
    Then User Verifies toolbar "Contact Agent"
    Then User Verifies toolbar "Log Off"
    Then User Verifies tab "OK"
    Then User clicks "View Activity PDF" button on signature page
    Then User verifies pdf text in "PrintPdf" document
      | 5        |
    Then User Verifies toolbar "View Activity PDF"
    Then User Verifies toolbar "Contact Agent"
    Then User Verifies toolbar "Log Off"
    Then User verify generated PDF displays signature
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "JointOwnerUrl"
    Then User Logs in with "owner" SSN and DOB
    Then User verifies validation message appeared "SSN or birth date does not match."
    Then User Logs in with "Joint owner" SSN and DOB
    Then User Verifies tab "Sign Activity"
    Then User Verifies tab "Review Documents"
    Then User Verifies tab "Contact Agent"
    Then User Verifies toolbar "View Activity PDF"
    Then User Verifies toolbar "Contact Agent"
    Then User Verifies toolbar "Log Off"
    Then User Clicks on Sign Activity
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "View Activity PDF" button on signature page
    Then User verifies pdf text in "PrintPdf" document
      | 5        |
    Then User Verifies "amountNetJointWorth" present in PDF
    Then User Verifies "amountIncome" present in PDF
    Then User Verifies "amountJointIncome" present in PDF
    Then User Verifies "amountNetWorth" present in PDF
    Then User verify generated PDF displays signature
    Then User Clicks on Button "OK"
    And User verify "thankYou" message on signature page
    Then User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Message "ESign Later Approval Sent to Agent"
    Then User Clicks on button "Requests" in All Activities Page
    Then User verifies dialog window "Pending Request" popup
    Then User clicks Close button on pending request page
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | Client Access               | Request to complete activity for |
      | Begin Signing Ceremony    | beginning signing ceremony.|
      | Client E-Signature Approved    | was signed by|
      | ESign Later Approval Sent to Agent            | Agent was sent the Signature Approval Email for Client       |
    Then User Clicks on button "View" in All Activities Page
    Then User Clicks on Continue button
    Then User selects "Agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Clicks on Button "Next Page"
    Then User Clicks on Button "Next Page"
    Then User clicks "Agree" button on signature page
    Then User sets value "Pune"  for Agent
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Clicks on Button "OK"
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished"
    Then User Verifies Final popup after application submitted with message "To print or view the application, history or documents, click on Other Actions."
    Then User Verifies Final popup after application submitted with message "Thank you for your business!"
    Then User Clicks "Close_PendingRequest" Button
    Then User Navigates to Home Page
    Then User Verifies Application Status as "Complete"

  @RegressionTest @RegEsignReactCP2React @RegressionTestCP2
  Scenario: TC_009_Decline Signature From External Sign from Request client to Fill And Sign then application can be resubmit
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User enters "Owner" details on page
    Then User enters "jointowner" details on page
    Then User Clicks Send Email request Button
    Then User verifies data "Ok Confirmation"
    Then User Notes the URL generated in dialog box
    Then User clicks Ok popup button
    Then Pending request box appears, User verifies two pending request for signers
    Then User gets the URL from Message template by clicking Send Reminder to
    Then User clicks "Send" button
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "Joint owner" SSN and DOB
    Then User verifies validation message appeared "SSN or birth date does not match."
    Then User Logs in with "owner" SSN and DOB
    Then User Clicks On Sign Application then Clicks Lock Activity
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Decline" button on signature page
    Then User clicks on "Cancel" link
    Then User clicks "I Decline" button on signature page
    Then User Enters "I don't want to sign so.." into the Text field of Decline E=Signature
    Then User clicks "Continue" button on signature page
    Then User Verifies page heading "Signature Declined"
    Then User verifies text on Electronic signature Declined
      |You have declined to sign the application. The application is unlocked and pending further review.|
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "ownerUrl"
    Then User Verifies the Page Title as "Invalid Request"
    Then User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Message "Unlocked"
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | Client E-Signature Declined               | refused to sign |
    Then User Verifies "Requests" button is disabled in All Activities Page
    Then User Clicks on button "View" in All Activities Page
    Then User verifies application in Edit mode pending request text is not display
    Then User clicks on Close icon on Toast Popup
    Then User enters value in field "ApplicantIncome" on investment profile page
    Then User enters value in field "JointApplicantIncome" on investment profile page
    Then User enters value in field "ApplicantNetWorthValue" on investment profile page
    Then User enters value in field "JointApplicantNetWorthValue" on investment profile page
    Then User clicks "Other Actions" button
    Then User Verifies "Requests" is Disabled in Other Action
    Then User Verifies "Request Client to Fill App" is enabled in Other Action
    Then User Verifies "Request Client to Fill & Sign" is enabled in Other Action
    Then User Close Other Action by clicking again on OtherAction tab
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies dialog window "Confirm Decline E-Signature"
    Then User clicks "Decline E-Signature" button
    Then User clicks "OK" button on signature page
    Then User clicks "Continue" button
    Then User Clicks on Cancel Button
    Then User clicks "Continue" button
    Then User clicks Yes button
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User Navigates to Home Page
    Then User Verifies Application Status as "Complete"



  @RegressionTest @RegEsignReactCP2React @RegressionTestCP2
  Scenario: TC_007_Verify Decline Signature on React E-Sign For Account Opening
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "California"
    Then User selects Given Product "Dist Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "continue" link of data entry met Toast popup
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies Confirm Decline PopUp message "Are you sure you want to decline E-Signature?"
    Then User clicks "Cancel" button
    Then User clicks "Back To Application" button
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
    Then User clicks on "continue" link of data entry met Toast popup
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies Confirm Decline PopUp message "Are you sure you want to decline E-Signature?"
    Then User clicks Decline E-Signature on Confirm Window popup
    Then User verifies text on Electronic signature Declined
      |value |
      |You have declined to use E-Signature. All signatures for this application must be collected manually.|
      |To upload wet signed documents, click on `Other Actions` and select `Documents`.                     |
      |To revise your decision, click on `Other Actions` and select `Unlock Application`.                   |
    Then User Clicks on Button "OK"
    Then User verifies application is display in Locked mode
    Then User verifies page change by clicking next arrow
    Then User verifies the tabs on other Actions
      |Copy Activity|
      |Transfer     |
      |Share        |
      |Unlock Application|
    Then user clicks on other actions tab
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | E-Signature Process Declined  | Application lock. Electronic signatures declined.|
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Verifies Application Status as "In Signatures"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Message "E-Signature Process Declined"
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | E-Signature Process Declined  | Application lock. Electronic signatures declined.|
    Then User Clicks on button "View" in All Activities Page
    Then user clicks on other actions tab
    Then User clicks on "Documents" in other actions tab
    Then User uploads Document
    Then User clicks on upload and verifies the view and remove link
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User verifies "Account opening is finished." dialog message
    Then User navigates to Home page
    Then User Verifies Application Status as "Complete"

  @RegressionTest @RegEsignReactCP2React @RegressionTestCP2
  Scenario: TC_006_Verify Client Identification window and Send Email Request Window get autofill with mapped fields and can be proceed for signature.
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React Esign Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User fills required fields and verify fields error should not display "false"
      | Field                        | Value         |
      | FLI_OWNER_FNAME              | UserFirstName |
      | FLI_OWNER_LNAME              | UserLastName  |
      | OWNER_SSN                    | 123-12-1234    |
      | Owner_DOB                    | 10/10/1950    |
      | FLI_OWNER_EMAIL              | Accelq-1@insurancetechnologies.com |
      | FLI_JOINT_OWNER_FNAME        | JointFirstName |
      | JointOwner_LastName          | JointLastName  |
      | FLI_JOINT_OWNER_SSN          | 456-12-4321   |
      | FLI_JOINT_OWNER_BDATE        | 01/01/1960    |
      | FLI_JOINT_OWNER_MOBILENUMBER | 2222222222 |
      | FLI_ANNUITANT_FNAME          | AnnuitantFirstName |
      | Annuitant_LastName           | AnnuitantLastName  |
      | FLI_ANNUITANT_SSN            | 456-12-4321   |
      | FLI_ANNUITANT_BDATE          | 11/11/1999    |
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Verifies page heading "Request Signers for "
    Then User verifies "Joint Owner" name is "JointFirstName" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User verifies "Owner" name is "UserFirstName UserLastName" under list of required signers section on signature page
    Then User verifies "Annuitant" name is "AnnuitantFirstName" under list of required signers section on signature page
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies page heading "Agent Identification Verification"
    Then User verify "Name" is set to "UserFirstName UserLastName" on signature page
    Then User verify "EmailAddress" is set to "Accelq-1@insurancetechnologies.com" on signature page
    Then User verify "Last4DigitsofSSN/GovernmentID" is set to "1234" on signature page
    Then User verify "BirthDate" is set to "10/10/1950" on signature page
    Then User Selects "Resident Alien ID" option in "FormofIdentification" Dropdown
    Then User Selects "Ukraine" option in "CountryofPassport" Dropdown
    Then User Enters "ABC5566" in TextBox "IDNumber"
    Then User Clicks on Button "Verified"
    Then User verifies toast message "Initials are Required. Click Initials box to begin."
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Decline" button on signature page
    Then User Enters "I don't want to sign so.." into the Text field of Decline E=Signature
    Then User clicks "Continue" button on signature page
    Then User Verifies page heading "Signature Declined"
    Then User verifies text on Electronic signature Declined
      |You have declined to sign the application. The application is unlocked and pending further review.|
    Then User clicks "OK" button on signature page
    Then User clicks on close Popup on DataEntry Page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                                    | Status Description          |
      | Client E-Signature Declined               | `Owner` `UserFirstName UserLastName` refused to sign activity |
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Selects "Passport" option in "FormofIdentification" Dropdown
    Then User Enters "ABC5566" in TextBox "IDNumber"
    Then User Enters "1015" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Clicks on Button "Verified"
    Then User verifies toast message "Initials are Required. Click Initials box to begin."
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    And User verify title of page is "Send Email To Annuitant: AnnuitantFirstName  To Request Signatures"
    Then User verify "SignerName" is set to "AnnuitantFirstName" on signature page
    Then User verify "*SignerLast4DigitsofSSN/GovernmentID" is set to "4321" on signature page
    Then User verify "*SignerBirthDate" is set to "11/11/1999" on signature page
    Then User Enters "AnnuitantColorado@domain.com" in TextBox "SignerEmail"
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Edit" button on signature page
    Then User verifies "Passcode" is displayed and store it
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies page heading "Agent Identification Verification"
    Then User verify "Name" is set to "JointFirstName" on signature page
    Then User verify "Last4DigitsofSSN/GovernmentID" is set to "4321" on signature page
    Then User verify "BirthDate" is set to "01/01/1960" on signature page
    Then User verify "MobileNumber" is set to "(222) 222-2222" on signature page
    Then User Enters "ABC5567" in TextBox "IDNumber"
    Then User Enters "JointColorado@domain.com" in TextBox "EmailAddress"
    Then User clicks "Send SMS Text" button on signature page
    Then User clicks "Cancel" button on signature page
    Then User verify "Resend SMS" is displayed and disabled on signature page
    Then User verify "Resend SMS" button exists on signature page
    Then User clicks "Cancel" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    And User verify title of page is "Send Email To Joint Owner: JointFirstName  To Request Signatures"
    Then User verify "SignerName" is set to "JointFirstName" on signature page
    Then User verify "*SignerLast4DigitsofSSN/GovernmentID" is set to "4321" on signature page
    Then User verify "*SignerBirthDate" is set to "01/01/1960" on signature page
    Then User verify "SignerMobileNumber" is set to "(222) 222-2222" on signature page
    Then User Enters "JointColorado@domain.com" in TextBox "SignerEmail"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User clicks "Back To Application" button
    Then User navigates to Home page
    Then User clicks "ok" on Confirmation Dialog
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Login to External Link using Client Last 4 Digits of SSN Govt ID
    Then User verify error message "An error occurred while sending SMS. Please try again or contact your administrator." on SSN home page
    And User login to email link with "SSN" generated on signature page from home page
    Then User clicks "Sign Activity" button on page
    Then User verify Document review window showing "formName" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Decline" button on signature page
    Then User Enters "I don't want to sign so.." into the Text field of Decline E=Signature
    Then User clicks "Continue" button on signature page
    Then User Verifies page heading "Signature Declined"
    Then User verifies text on Electronic signature Declined
      |You have declined to sign the application. The application is unlocked and pending further review.|
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Data Entry"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on view History
    And User verify audit entries contains "Unlocked,Activity 'newProductName' was unlocked and the status changed from 'Signatures' to 'Data Entry' by 'AnnuitantFirstName '.,Client E-Signature Declined,`Annuitant` `AnnuitantFirstName ` refused to sign activity `newProductName` .,Form Acknowledged,Page Displayed,Begin Signing Ceremony,E-Request Viewed,'E-Sign' request for activity 'newProductName' viewed by AnnuitantFirstName , Signer 'Annuitant'." on history dialog


  @RegressionTest @RegEsignReactCP2React @RegressionTestCP2
  Scenario: TC_003_Verify Document Set show for Single and Multiple Signers along with LN Questionnaire to complete signature Process.
  #Defect ID EAES-2109
    Given User is on FireLight login page for TestCase "RegEsignReactCP2React_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Delaware"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React Esign Product" for application
    Then User selects Optional Forms "React LN Signer with Document Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User sets values for prefilled form
      | Field         | Value          | data-dataitemid | Locator Type |
      | First Name    | OwnerFirstName | FLI_OWNER_FNAME | Input        |
      | Last Name     | OwnerLastName  | FLI_OWNER_LNAME | Input        |
      | Date of Birth | 03/09/2000     | Owner_DOB       | Input        |
      | SSN Code      | 987654321      | OWNER_SSN       | Input        |
    Then User selects Joint Owner YesNo Type "Yes"
    Then User sets values for prefilled form
      | Field         | Value               | data-dataitemid       | Locator Type |
      | First Name    | JointOwnerFirstName | FLI_JOINT_OWNER_FNAME | Input        |
      | Last Name     | JointOwnerLastName  | JointOwner_LastName   | Input        |
      | Date of Birth | 03/09/2000          | FLI_JOINT_OWNER_BDATE | Input        |
      | SSN Code      | 987654321           | FLI_JOINT_OWNER_SSN   | Input        |
    Then User selects Annuitant YesNo Type "Yes"
    Then User sets values for prefilled form
      | Field         | Value              | data-dataitemid     | Locator Type |
      | First Name    | AnnuitantFirstName | FLI_ANNUITANT_FNAME | Input        |
      | Last Name     | AnnuitantLastName  | Annuitant_LastName  | Input        |
      | Date of Birth | 03/09/2000         | FLI_ANNUITANT_BDATE | Input        |
      | SSN Code      | 987654321          | FLI_ANNUITANT_SSN   | Input        |
    Then User opens "Signers Page" Optional for Form "React LN Signer with Document Set"
    Then User sets values for prefilled form
      | Field      | Value          | data-dataitemid | Locator Type |
      | First Name | OwnerFirstName | Owner_FirstName | Input        |
      | Last Name  | OwnerLastName  | Owner_LastName  | Input        |
    Then User sets values for prefilled form
      | Field                                           | Value | data-dataitemid      | Locator Type |
      | Enter True to Enable Signature for Owner GroupA | True  | Enable Owner Sign A  | Input        |
      | Enter True to enable Owner LN Sign              | True  | Enable Owner Sign LN | Input        |
    Then User clicks next again Click on Next Button
    Then User clicks "Continue" button
    Then User verifies Accept and decline E-signature Button present
    Then User clicks "Use E-Signature" button on signature page
    Then User Verifies page heading "Request Signers for "
    Then User selects "owner" on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Enters "9876" in TextBox "IDNumber"
    Then User clicks "Verified" button on signature page
    Then User verifies dialog window "Empty Email"
    Then User clicks "OK" button
    Then User Verifies page heading "Please answer the following question(s) to authenticate your identity."
    Then User select "5th" answer to "1st" question
    Then User select "5th" answer to "2nd" question
    Then User select "2nd" answer to "3rd" question
    Then User clicks "Submit" button
    Then User Verifies page heading "Please answer the following question(s) to authenticate your identity."
    Then User select "2nd" answer to "1st" question
    Then User clicks "Submit" button
    Then User verifies toast message "Initials are Required. Click Initials box to begin."
    Then User verify Document review window showing "reactLnSigner" on signature window
    Then User verifies button "Clear Initials" is "enabled"
    Then User verifies button "Previous Page" is "disabled"
    Then User verifies button "Next Page" is "disabled"
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User verifies Documents
      | React LN Signer with Document Set            |
      | Addendum - React LN Signer with Document Set |
    Then User Clicks Agree Document Checkbox
    Then User Clicks Agree Document Checkbox
    Then User should be on page "Capture Electronic Signature"
    Then User Enters "FullName Signer" in TextBox "SignerFullName"
    Then User Enters "Pune" in TextBox "City"
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    Then User clicks on "close" link
    Then User clicks on "close" link
    Then User verify Document review window showing "reactMultipleSigner" on signature window
    Then User verifies button "Clear Initials" is "enabled"
    Then User verifies button "Previous Page" is "enabled"
    Then User verifies button "Next Page" is "disabled"
    Then User clicks initials box and enter "RR" on document sets signature page
    Then User clicks React LN Signer button
    Then User clicks "Clear Initials" button
    Then User clicks initials box and enter "RR" on document sets signature page
    Then User clicks "React Multiple Signer for Automation Project" button
    Then User verify Document review window showing "reactMultipleSigner" on signature window
    Then User verifies Documents
      | React Multiple Signer for Automation Project |
      | React LN Signer with Document Set            |
    Then User clicks initials box
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User Clicks on Button "Next Page"
    Then User Clicks on Button "Next Page"
    Then User Clicks on Button "Next Page"
    Then User verify "Owner SIGNING HERE" text "exists" on signature page
    Then User Clicks Agree Document Checkbox
    Then User Clicks Agree Document Checkbox
    Then User Clicks Agree Document Checkbox
    Then User should be on page "Capture Electronic Signature"
    Then User Enters "FullName Signer" in TextBox "SignerFullName"
    Then User Enters "Jaipur" in TextBox "City"
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    Then User select "Re-Sign" button on Signature Tab
    Then User clicks "OK" on Confirmation Dialog
    Then User selects "Annuitant" on signature window
    Then User selects "Owner" on signature window
    Then User Clicks on Send Email Request
    Then User Enters "Signer@Email.com" in TextBox "SignerEmail"
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    And User clicks Close button on pending request page
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    And User login to email link with "passcode" generated on signature page from home page
    Then User clicks "Sign Activity" button on page
    Then User Select "First" Answer in Questionnaire
    Then User Select "Second" Answer in Questionnaire
    Then User Select "Third" Answer in Questionnaire
    Then User clicks Authentication Submit button
    Then User verifies toast message "Initials are Required. Click Initials box to begin."
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User should be on page "Capture Electronic Signature"
    Then User Enters "FullName Signer" in TextBox "SignerFullName"
    Then User Enters "Pune" in TextBox "City"
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    Then User verifies toast message "Thank you for completing the signing on this document."
    Then User verifies toast message "Initials are Required. Click Initials box to begin."
    Then User clicks initials box and enter "Dr" on document sets signature page
    Then User clicks React LN Signer button
    Then User clicks initials box
    Then User verifies toast message "Initials are complete. You can move forward to Signatures"
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User should be on page "Capture Electronic Signature"
    Then User Enters "FullName Signer" in TextBox "SignerFullName"
    Then User Enters "Pune" in TextBox "City"
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page





