Feature: FireLight_Regression_ActivityMasterLP1P2_React_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterReactLP1 @RegressionTestLP1P2
  Scenario: TC_002_Verify Enrollment Activity
    Given User is on FireLight login page for TestCase "RegActivityMasterReactLP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Enrollment" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "FL024 ENR Parent Product for Master Agreement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User sets values for prefilled form
      | Field                     | Value         | data-dataitemid              | Locator Type |
      | Product CUSIP ID          | ENRCA03E      | Enrollment_CUSIPID           | Input        |
      | Master Agreement CUSIP ID | ENRMA0SIGN    | FLI_MASTER_AGREEMENT_CUSIPID | Input        |
    Then User clicks "Next" button
    Then User should be on page "Master Agreement Enrollment Plan Design Page"
    Then User Verifies data entry percentage is "100%"
    Then User Verifies toolbar "Data Entry"
    Then User clicks Link "FL024 ENR Master Agreement Without Signature"
    Then User verifies "Master Agreement For AppName" created successfully
    Then User Verifies Data Entry Met Toast popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User Verifies Popup message as "Application will be submitted."
    Then User Verifies Popup message as "No further edits will be allowed."
    Then User Verifies Popup message as "Are you sure?"
    Then User clicks "Yes" button
    Then User verifies toast message of "Application is finished."
    Then User clicks on Close icon on Toast Popup
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User clicks on Close icon on Toast Popup
    Then User sets values for prefilled form
      | Field        | Value                                          | data-dataitemid | Locator Type |
      | Company Name | FL024 eXtensible IT Solutions Pvt. Ltd. Random | FLI_COMPANY_ID  | Input        |
    Then User clicks "Next" button
    Then User should be on page "Master Agreement Enrollment Plan Design Page"
    Then User Verifies toolbar "Complete"
    Then User clicks "Next" button
    Then User Clicks on "Import" Button in Admin Page
    Then User verifies dialog window "Import Participants"
    Then User upload Document "Participants.csv"
    Then User clicks "Upload" button
    Then User verifies "Participant has been imported successfully." popup is displayed
    Then User clicks on Close icon on Toast Popup
    Then User verify 2 records are imported in "dataGrids"
    Then User Verifies toolbar "Sunil"
    Then User Verifies toolbar "Sharma"
    Then User Verifies toolbar "testhexure@gmail.com"
    Then User Verifies toolbar "Varun"
    Then User Verifies toolbar "Kapil"
    Then User Verifies toolbar "ssingh@hexure.com"
    Then User verify 2 records are imported in "deleteRecords"
    Then User Clicks Agree Document Checkbox
    Then User Clicks on "Send Request" Button in Admin Page
    Then User Verifies toolbar "Pending Client Request"
    Then User clicks on "5" link of data entry met Toast popup
    Then User verify error message "Phone Number is required." on data entry page
    Then User verify error message "This is a required field." on data entry page
    Then User clicks "Close" button
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "agent email" email with subject "FL024 eXtensible IT Solutions Pvt. Ltd. AppNameDate - Sharma - Please complete filling your Application" on gmail page and save "email link"
    Then User select "agent email" email with subject "Passcode Application FL024 eXtensible IT Solutions Pvt. Ltd. AppNameDate - Sharma" on gmail page and save "passcode"
    Then User Loads the URL generated previously for "emailLink"
    Then User Logs in with "passCode"
    Then User selects radio button "Individual" for "Owner Type"
    Then User selects radio button "No" for field "Does the owner have existing or pending life insurance or annuity policies?" from section "Replacement Questions"
    Then User selects radio button "No" for field "Are there plans to discontinue, reduce, change or replace any existing life insurance or annuity contracts?" from section "Replacement Questions"
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User opens "Page 1" Required for Form "Enrollment BlueSkyInsApplication"
    Then User set value "1234567890" for field "Insured_PhoneNumber"
    Then User Clicks On Sign Application Button then Clicks Lock Activity Button
    Then User verifies electronic Signatures option window show
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User selects value "Enrollment" for field "Activity Type Filter"
    Then User open application from recent activity
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User Verifies toolbar "Client Signatures Complete"
    Then User Clicks Agree Document Checkbox
    Then User clicks "Open Application" button
    Then User clicks "Continue" button
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "exists" on signature page
    Then User clicks "Next Page" button on signature page
    Then User clicks "Confirm All Documents" button on signature page
    Then User clicks "Ok" on Confirmation Dialog
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verify pop up message displays progress as "2" out of "3" steps on signature page
    Then User clicks "Continue" button
    Then User clicks "Yes" button
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User Verifies toolbar "Complete"
    Then User Clicks Agree Document Checkbox
    Then User verify button "Send Request" is "disabled"
    Then User verify button "Agent Signature" is "disabled"
    Then User verify button "Delete" is "disabled"

  @RegressionTest @RegActivityMasterReactLP1 @RegressionTestLP1P2
  Scenario: TC_001_Verify illustration activity and its next activity
    Given User is on FireLight login page for TestCase "RegActivityMasterReactLP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "SS illustration" for application
    Then User clicks "Save Application" button
    Then User enters new Illustration name
    Then User clicks on Create button on Rename window
    Then User clicks Link "Alerts"
    Then User verify error message "SS illustration Wiz/New Page - This is a required field." on data entry page
    Then User clicks "Close" button
    Then User verify button "Application" is "disabled"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User selects value "Male" for field "Owner Gender"
    Then User clicks Link "Illustrate"
    Then User verifies dialog window "Quick View"
    Then User Verifies options present for "ViewOption" dropdown
      | options                      |
      | Deferred Annual              |
      | Deferred Annual BOY          |
      | Deferred Annual Zero Percent |
      | Deferred Annual Multi Model  |
    Then User Verifies header present for "QuickView" table
      | options         |
      | Year            |
      | Age             |
      | Premium         |
      | Account Value   |
      | Surrender Value |
      | Death Benefit   |
    Then User verify "Age" field in "QuickView" table does not have value more than 95
    Then User selects value "Deferred Annual BOY" for field "ViewOption"
    Then User Verifies header present for "QuickView" table
      | options         |
      | Year            |
      | Age             |
      | Premium         |
      | Account Value   |
      | Surrender Value |
      | Death Benefit   |
    Then User verify "Age" field in "QuickView" table does not have value more than 94
    Then User selects value "Deferred Annual Zero Percent" for field "ViewOption"
    Then User Verifies header present for "QuickView" table
      | options         |
      | Year            |
      | Age             |
      | Premium         |
      | Account Value   |
      | Surrender Value |
      | Death Benefit   |
    Then User verify "Age" field in "QuickView" table does not have value more than 95
    Then User selects value "Deferred Annual Multi Model" for field "ViewOption"
    Then User Verifies header present for "QuickView" table
      | options         |
      | Year            |
      | Age             |
      | Premium         |
      | Surrender Value |
      | Death Benefit   |
    Then User verify "Age" field in "QuickView" table does not have value more than 95
    Then User clicks "Close" button
    Then User clicks Link "Print"
    Then User verifies pdf text in "GetReportPdf" document
      | OwnerFN                    |
      | OwnerLN                    |
      | ForeSight Variable Annuity |
      | Accumulation               |
    Then User verifies pdf document contains 10 pages
    Then User clicks Link "Send Email"
    Then User note text from "URL" in "additionalContent" property
    Then User Enters "Sunil Sharma Random" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToAddress"
    Then User Clicks on Button "Send"
    Then User clicks Link "Application"
    Then User verifies "Illustration Application for AppName" created successfully
    Then User Clicks on Continue button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User clicks "Continue" button
    Then User clicks "Yes" button
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User select "reviewer email additionalContent" email with subject "Illustration PDF Output for" on gmail page and save "email link"
    Then User Loads the URL generated previously for "emailLink"
    Then User verifies pdf text in "LoadDocumentPDF" document
      | OwnerFN                    |
      | OwnerLN                    |
      | ForeSight Variable Annuity |
      | Accumulation               |
    Then User verifies pdf document contains 10 pages

  @RegressionTest @RegActivityMasterReactLP1 @RegressionTestLP1P2
  Scenario: TC_004_Verify the long name of Wizards are showing in Forms menu
    Given User is on FireLight login page for TestCase "RegActivityMasterReactLP1_TC_004"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Annuity"
    Then User selects Given Product "Long form name product wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User Clicks Expand form menu
    Then User verifies the form name showing in expand menu
    Then User verifies form name is truncated