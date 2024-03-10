Feature: FireLight_Regression_ActivityMasterHP1_React_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_012_Validate Custom Action for GIACT Service Wizard setup only
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies Required for Form "Annuity Wizard"
      | Client Data |
      | Beneficiary |
      | Agent       |
    Then User verifies Optional for Form "Annuity Wizard"
      | Payment Details |
      | Riders          |
      | Arrangements    |
      | Allocations     |
      | Suitability     |
    Then User opens "Payment Details" Optional for Form "Annuity Wizard"
    Then User verifies Page heading "Annuity Wizard" with form name "Payment Details" for data entry flow
    Then User selects value "Cash with App with Source of funds = Check or Wire" for field "Payment Method"
    Then User selects radio button "Owner" for "Check/ACH Information"
    Then User sets values for prefilled form
      | Field          | Value      | data-dataitemid             | Locator Type |
      | First Name     | Bob        | AccountHolder_FirstName     | Input        |
      | Last Name      | Smith      | AccountHolder_LastName      | Input        |
      | Account Number | 000000001 | AccountHolder_AccountNumber | Input        |
      | Routing Number | 122105278  | AccountHolder_RoutingNumber | Input        |
    Then User Clicks "Validate Account Information at the Bank" Button
    Then User verifies prefilled Form
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | gBankName            | Input        |
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | GAuthenticateCode    | Input         |
      | gBankAccntDate       | Input         |
      | gBankAccntLastUpdate | Input         |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_011_Validate Custom Action CRM using 3rd party credentials
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens "Page 1" Required for Form "Application222"
    Then User clicks on "CRM Owner Lookup" button
    Then User verifies CRM Dialog box
    Then User send values "B" in search box and click on search
    Then User select any one from the record
    Then User clicks "Select" Button
    Then User verifies prefilled data Form
      | data-dataitemid                  | Locator Type |
      | Owner_FirstName                  | Input        |
      | Owner_LastName                   | Input        |
      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner_DOB                        | Input        |
    Then User opens "Payment Details" Optional for Form "Annuity Wizard"
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User clicks on Surrendering Company lookup
    Then User search "voy" in search ceding company
    Then User select any one from the record
    Then User clicks "Select" Button
    Then User verifies dialog window "Crm" Closed
    Then User verifies prefilled data Form
      | data-dataitemid                  | Locator Type |
      | Replacement_Company_Name1        | Input        |
      | Replacement_Company_Address11    | Input        |
      | Replacement_Company_City1        | Input        |
      | Replacement_Company_Zipcode1     | Input        |
      | Replacement_Company_PhoneNumber1 | Input        |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_014_Validate Custom Action 1035 YP
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens "Page 3" Required for Form "Application222"
    Then User select transfer value form dropdown
    Then User Clicks Expand form menu
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" option is displayed
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" option is displayed
    Then User Close the Form Menu by clicking on Collapse button
    Then User opens "Client Data" Required for Form "Annuity Wizard"
    Then User opens "Payment Details" Optional for Form "Annuity Wizard"
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User clicks "Surrendering Company Lookup" button
    Then User verifies dialog window "CRM"
    Then User search "AIG Annuity" in search ceding company
    Then User select any one from the record
    Then User clicks "Select" Button
    Then User verifies prefilled Form
      | data-dataitemid                     | Locator Type |
      | Replacement_Company_Name1           | Input        |
      | Replacement_Company_Address11       | Input        |
      | Replacement_Company_City1           | Input        |
      | Replacement_Company_Zipcode1        | Input        |
      | Replacement_Company_PhoneNumber1    | Input        |
      | Replacement_Company_Fax_PhoneNumber | Input        |
    Then User opens "Payment Details" Optional for Form "Annuity Wizard"
    Then User clicks "Surrendering Company Lookup" button
    Then User verifies dialog window "CRM"
    Then User search "Voya Life" in search ceding company
    Then User select any one from the record
    Then User clicks "Select" Button
    Then User verifies prefilled Form
      | data-dataitemid                     | Locator Type |
      | Replacement_Company_Name1           | Input        |
      | Replacement_Company_Address11       | Input        |
      | Replacement_Company_City1           | Input        |
      | Replacement_Company_Zipcode1        | Input        |
      | Replacement_Company_PhoneNumber1    | Input        |
      | Replacement_Company_Fax_PhoneNumber | Input        |
    Then User Clicks Expand form menu
    Then User verifies "Replacement Instruction Page" option is displayed


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_009_Validate Pint PDF and Custom action print button
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Indiviual radio button
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is enabled in Other Action
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User verifies the Select Documents to Print Dialog box
    Then User Clicks on Close link at bottom of the popup
    Then User clicks on "Print Paperwork" button annuity wizard
    Then User verifies the Select Documents to Print Dialog box
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies PDF "PrintPdf" is generated


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_010_Validate Custom Action Print
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Indiviual radio button
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is Disabled in Other Action
    Then User clicks "Other Actions" button
    Then User clicks on "Print Paperwork" button annuity wizard
    Then User verifies "Custom action print is not available." popup is displayed


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario:TC_003_If parent package Needs Determination does not include a required Template then the child Next Activity Can remove the uploaded docs by parent activity
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_003"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RS Need Determination Without Template" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "The Needs Determination has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verify value is "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Uploaded file is "E2E-TC02-pdfFile" for "Illustration" Document type Appears
    Then User Closes Documents Window
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "MA Annuity App Autofill Form And Wizard both"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" button "does not exist" for uploaded document
    Then User Closes Documents Window


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_062_Verify data is auto filling from the Custom List button
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_062"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens "Client Data" Required for Form "Automation wiz"
    Then User clicks "Expand" button
    Then User Clicks on form "Custom list Wiz" Required for Form Menu "Test Wiz DSB"
    Then User clicks on "Custom list button2" on wiz
    Then User verifies new Dialog box is opening with
      | Country |
      | States  |
      | City    |
    Then User Clicks on First Row
    Then User Clicks on Button "Select"
    Then User verify "Custom list Country" is set to "Australia"
    Then User verify "Custom list State" is set to "Victoria"
    Then User verify "Custom list City" is set to "Melbourne"
    Then User clicks on "Custom list button2" on wiz
    Then User Clicks on Second Row
    Then User Clicks on Button "Select"
    Then User verify "Custom list Country" is set to "Canada"
    Then User verify "Custom list State" is set to "Alberta"
    Then User verify "Custom list City" is set to "Melbourne"


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario:TC_002_If parent package Needs Determination includes a required Template to upload docs the child Next Activity Cannot remove the uploaded docs by parents template
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_002"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV Need Determination" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "97%"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies Data Entry Tab is active
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "97%"
    Then User opens "Goals" Required for Form "RV Need Determination wiz"
    Then User Selects "Lifetime Income" CheckBox
    Then User Verifies "Lifetime Income" CheckBox is selected
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Closes Documents Window
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "MA Annuity App Autofill Form And Wizard both"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "RV Voided Check" document type after uploading documents
    Then User Closes Documents Window


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: AT_013_Validate Custom Action CRM using Agent Preferences credentials
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_AT_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User Now Navigate to Preferences page
    Then User Verifies Heading "My Preferences"
    Then User Select CRM dropdown as "Redtail"
    Then User on enters valid username as "User_REDTAIL" and password for CRM Preferences and Save
    Then User goes to Home page from My Preferences
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens "Client Data" Required for Form "Annuity Wizard"
    Then User verifies Page heading "Annuity Wizard" with form name "Client Data" for data entry flow
    Then User opens "Page 1" Required for Form "Application222"
    Then User clicks on "CRM Owner Lookup" button
    Then User verifies dialog window "CRM"
    Then User send values "Ins" in search box and click on search
    Then User verifies Search results
      | Insuricare, |
      | Insurance Technologies,  |

  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_018_REACT UI Package with one Wizard One Optional Forms and Conditional Forms
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Product with Optional Forms and Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Manage Optional Forms"
    Then User verifies "Select Forms for Application" Dialog box appears
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User selects Optional Forms "Test Wiz DSB"
    Then User selects Optional Forms "DSB Signers "
    Then User selects Optional Forms "DSB Signers  2"
    Then User selects Optional Forms "Test Wiz DSB 2"
    Then User Clicks on Button "Update Forms"
    Then User opens Menu "Other Actions  ->Manage Optional Forms"
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User selects Optional Forms "Test Wiz DSB"
    Then User Clicks on Button "Update Forms"
    Then User clicks "Other Actions" button
    Then User clicks on "Manage Optional Forms" in other actions tab
    Then User selects Optional Forms "Fees and Expense Disclosure Sample"
    Then User Clicks on Button "Update Forms"
    Then User opens "Page 3" Required for Form "Application222"
    Then User select transfer value "1" form dropdown
    Then User opens "Page 1" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks on Next buttons
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks on Next buttons
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | div    |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks on Next buttons
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks on Next buttons
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks on Next buttons
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Joint Owner" button on Signature Tab
    Then User selects "Insured" button on Signature Tab
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Select "First" Answer in Questionnaire
    Then User Select "Second" Answer in Questionnaire
    Then User Select "Third" Answer in Questionnaire
    Then User clicks Authentication Submit button
    Then User clicks initials box and enter "DS" on document sets signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User clicks initials box and enter "DS" on document sets signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 5 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent 2" button on Signature Tab
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "AgentName"  for field "Agent" for To Signature tab
    Then User sets value "1234"  for field "Agent ID" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User navigates to Home page
    Then User clicks "All Activities" Tab
    Then User Searches for application
    Then User Clicks on Button "Copy" on AllActivities
    Then User clicks "Copy As Is" button
    Then User clicks on "Ok Popup" link
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User opens Menu "Other Actions  ->Manage Optional Forms"
    Then User verifies the following value are selected or not
      |Fees and Expense Disclosure Sample|
      |DSB Signers  2                    |
      |Test Wiz DSB                      |
      |Test Wiz DSB 2                    |
    Then User Clicks on Button "Update Forms"
    Then User verifies "Data Entry has met the requirements." popup is showing
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Selects the Signer Type as "Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User Notes the Passcode from Pending Request dialog box
    Then User clicks Close button on pending request page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Logs in with "recipientPasscode"


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_020_Verify manage Optional Form window when there are no Optional Form Or Wizard
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Contact Agent _Fill and Sign Form with wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Manage Optional Forms"
    Then User verifies "Select Forms for Application" Dialog box appears
    Then User verifies the following value are selected or not
      | Annuity 222 Wizard          |
      | Contact Agent Fill and Sign |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_021_Verify GIACT Custom Action Call can fill required fields on Same Form Wizard Page of Wizard Form App when Triggered
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | GVerifyCode           | Input        |
      | GAuthenticateCode     | Input        |
      | GVerifyResponse       | Input        |
      | GAuthenticateResponse | Input        |
      | gBankName             | Input        |
      | gBankAccntDate        | Input        |
      | gBankAccntLastUpdate  | Input        |
      | gBankAccntCloseddate  | Input        |
    Then User clicks on Next button on form
    Then User check checkbox for GIACT
    Then User clicks on previous button
    Then User Refresh the Page
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User verifies prefilled data form text fields
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | GAuthenticateCode    | Input        |
      | gBankName            | Input        |
      | gBankAccntDate       | Input        |
      | gBankAccntLastUpdate | Input        |
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid       | Locator Type |
      | GVerifyResponse       | Input        |
      | GAuthenticateResponse | Input        |
      | gBankAccntCloseddate  | Input        |

  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_022_Verify GIACT Custom Action Call can fill required fields on Different Form Wizard Page of Wizard Form App when Triggered via Rule set
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_022"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | GVerifyCode           | Input        |
      | GAuthenticateCode     | Input        |
      | GVerifyResponse       | Input        |
      | GAuthenticateResponse | Input        |
      | gBankName             | Input        |
      | gBankAccntDate        | Input        |
      | gBankAccntLastUpdate  | Input        |
      | gBankAccntCloseddate  | Input        |
    Then User clicks on Next button on form
    Then User clicks on Next button on form
    Then User check checkbox for GIACT
    Then User clicks on previous button
    Then User clicks on previous button
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled data form text fields
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | GAuthenticateCode    | Input        |
      | gBankName            | Input        |
      | gBankAccntDate       | Input        |
      | gBankAccntLastUpdate | Input        |
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid       | Locator Type |
      | GVerifyResponse       | Input        |
      | gBankAccntCloseddate  | Input        |
      | GAuthenticateResponse | Input        |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_023_GIACT Custom Action link on the different Form as Required Fields on Wizard
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_023"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | GVerifyCode           | Input        |
      | GAuthenticateCode     | Input        |
      | GVerifyResponse       | Input        |
      | GAuthenticateResponse | Input        |
      | gBankName             | Input        |
      | gBankAccntDate        | Input        |
      | gBankAccntLastUpdate  | Input        |
      | gBankAccntCloseddate  | Input        |
    Then User clicks on Next button on form
    Then User check checkbox of Custom Action Trigger
    Then User clicks on previous button
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled data form text fields
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | GAuthenticateCode    | Input        |
      | gBankName            | Input        |
      | gBankAccntDate       | Input        |
      | gBankAccntLastUpdate | Input        |
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_016_Verify Edit icon when application is unlocked
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "ESign with Multiple signers" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Pencil" button on data entry page
    Then User verifies dialog window "Activity Summary" popup if appears and closes it
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Clicks Back to Application
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading As "Activity Summary"
    Then User Verifies Activity Summary opens in read only mode
    Then User Verifies Button "Unlock" is displayed and Enabled
    Then User clicks "Unlock" button on data entry page
    Then User clicks "Unlock Activity" button on data entry page
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Clicks Back to Application
    Then User clicks "Other Actions" button
    Then User Verifies "Unlock" is enabled in Other Action
    Then User clicks on "Unlock" in other actions tab
    Then User clicks "Unlock Activity" button on data entry page
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User Clicks Sign Now
    Then User sets value "09456"  for field "ID Number" for To Signature tab
    Then User sets value "OwnName"  for field "Name" for To Signature tab
    Then User sets value "9456"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31/1996"  for field "Birth Date" for To Signature tab
    Then User sets value "xz@xyz.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User selects "Marck Script" font on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Signature page
    Then User verifies toast message "To print or view the application, history or documents, click on Other Actions." on Signature page
    Then User verifies toast message "Thank you for your business!" on Signature page
    Then User clicks on "close" link
    Then User clicks "Lock" button on data entry page
    Then User Verifies Unlock is not Visible

  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_011_Verify LN Risk Classifier & Instant ID button click from different wizard can populate result on different wizard
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call WIZ OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message "Data Entry has met the requirements."
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | Lex_ID           | Input        |
      | LN_CVI           | Input        |
      | NAS_Score        | Input        |
      | NAP_Score        | Input        |
      | LN_PASS          | Input        |
      | Risk_Indicators  | Input        |
      | OWNER_Risk_Score | Input        |
      | Order_Number     | Input        |
      | Result_Code      | Input        |
      | Result_Message   | Input        |
      | OWNER_Reason_Code1 | Input        |
      | Owner_Reason_Code2 | Input        |
      | Owner_Reason_Code3 | Input        |
      | Owner_Reason_Code4 | Input        |
      | Owner_Reason_Description1  | Input        |
      | Owner_Reason_Description2  | Input        |
      | Owner_Reason_Description3  | Input        |
      | Owner_Reason_Description4  | Input        |
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User clicks on Lexis Nexis call button
    Then User clicks on "Click Me! To Get Risk Classifier Results" link
    Then User verifies "Back Office Action is being performed." pop up message
    Then User verifies "User validation is being performed." pop up message
    Then User verifies "A validation is being performed." pop up message
    Then User waits for page to load
    Then User clicks "Previous" button
    Then User clicks "Previous" button
    Then User verifies prefilled data form text fields
      | data-dataitemid       | Locator Type |
      | Lex_ID           | Input        |
      | LN_CVI           | Input        |
      | NAS_Score        | Input        |
      | NAP_Score        | Input        |
      | LN_PASS          | Input        |
      | Risk_Indicators  | Input        |
      | OWNER_Risk_Score | Input        |
      | Order_Number     | Input        |
      | Result_Code      | Input        |
      | Result_Message   | Input        |
      | OWNER_Reason_Code1 | Input        |
      | Owner_Reason_Code2 | Input        |
      | Owner_Reason_Code3 | Input        |
      | Owner_Reason_Code4 | Input        |
      | Owner_Reason_Description1  | Input        |
      | Owner_Reason_Description2  | Input        |
      | Owner_Reason_Description3  | Input        |
      | Owner_Reason_Description4  | Input        |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_010_Verify LN Risk Classifier & Instant ID via Rule from different wizard can populate result on different wizard
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call WIZ OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message "Data Entry has met the requirements."
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | Lex_ID           | Input        |
      | LN_CVI           | Input        |
      | NAS_Score        | Input        |
      | NAP_Score        | Input        |
      | LN_PASS          | Input        |
      | Risk_Indicators  | Input        |
      | OWNER_Risk_Score | Input        |
      | Order_Number     | Input        |
      | Result_Code      | Input        |
      | Result_Message   | Input        |
      | OWNER_Reason_Code1 | Input        |
      | Owner_Reason_Code2 | Input        |
      | Owner_Reason_Code3 | Input        |
      | Owner_Reason_Code4 | Input        |
      | Owner_Reason_Description1  | Input        |
      | Owner_Reason_Description2  | Input        |
      | Owner_Reason_Description3  | Input        |
      | Owner_Reason_Description4  | Input        |
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User selects "Click to Trigger Risk Classifier" checkbox
    Then User verifies "Back Office Action is being performed." pop up message
    Then User verifies "A validation is being performed." popup showing
    Then User selects "Click to Trigger Instant ID" checkbox
    Then User verifies "Back Office Action is being performed." pop up message
    Then User clicks on previous button
    Then User clicks on previous button
    Then User verifies prefilled data form text fields
      | data-dataitemid       | Locator Type |
      | Lex_ID           | Input        |
      | LN_CVI           | Input        |
      | NAS_Score        | Input        |
      | NAP_Score        | Input        |
      | LN_PASS          | Input        |
      | Risk_Indicators  | Input        |
      | OWNER_Risk_Score | Input        |
      | Order_Number     | Input        |
      | Result_Code      | Input        |
      | Result_Message   | Input        |
      | OWNER_Reason_Code1 | Input        |
      | Owner_Reason_Code2 | Input        |
      | Owner_Reason_Code3 | Input        |
      | Owner_Reason_Code4 | Input        |
      | Owner_Reason_Description1  | Input        |
      | Owner_Reason_Description2  | Input        |
      | Owner_Reason_Description3  | Input        |
      | Owner_Reason_Description4  | Input        |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_009_Verify Risk Classifier Button click LN Instant ID Call Via rule from different Forms Page in Wizard Application can show Results on Different Wizard page
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call WIZ OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message "Data Entry has met the requirements."
    Then User verifies data fields are blank
      | data-dataitemid           | Locator Type |
      | Lex_ID                    | Input        |
      | LN_CVI                    | Input        |
      | NAS_Score                 | Input        |
      | NAP_Score                 | Input        |
      | LN_PASS                   | Input        |
      | Risk_Indicators           | Input        |
      | OWNER_Risk_Score          | Input        |
      | Order_Number              | Input        |
      | Result_Code               | Input        |
      | Result_Message            | Input        |
      | OWNER_Reason_Code1        | Input        |
      | Owner_Reason_Code2        | Input        |
      | Owner_Reason_Code3        | Input        |
      | Owner_Reason_Code4        | Input        |
      | Owner_Reason_Description1 | Input        |
      | Owner_Reason_Description2 | Input        |
      | Owner_Reason_Description3 | Input        |
      | Owner_Reason_Description4 | Input        |
    Then User clicks "Next" button
    Then User clicks on "Click Me! To Get risk classifier Score" link
    Then User verifies "A validation is being performed." pop up message
    Then User clicks on previous button
    Then User verifies prefilled data form text fields
      | data-dataitemid           | Locator Type |
      | OWNER_Risk_Score          | Input        |
      | Order_Number              | Input        |
      | Result_Code               | Input        |
      | Result_Message            | Input        |
      | OWNER_Reason_Code1        | Input        |
      | Owner_Reason_Code2        | Input        |
      | Owner_Reason_Code3        | Input        |
      | Owner_Reason_Code4        | Input        |
      | Owner_Reason_Description1 | Input        |
      | Owner_Reason_Description2 | Input        |
      | Owner_Reason_Description3 | Input        |
      | Owner_Reason_Description4 | Input        |
    Then User clicks "Next" button
    Then User clicks on "Click Me to Trigger Lexis Nexis Instant ID" link
    Then User clicks on previous button
    Then User verifies prefilled data form text fields
      | data-dataitemid | Locator Type |
      | Lex_ID          | Input        |
      | LN_CVI          | Input        |
      | NAS_Score       | Input        |
      | NAP_Score       | Input        |
      | LN_PASS         | Input        |
      | Risk_Indicators | Input        |
    
  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_008_Verify Risk Classifier Button click LN Instant ID Click can show result when call from same page on Wizard Application
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call WIZ OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message "Data Entry has met the requirements."
    Then User verifies toast message "Data Entry has met the requirements." disappears
    Then User verifies data fields are blank
      | data-dataitemid           | Locator Type |
      | Lex_ID                    | Input        |
      | LN_CVI                    | Input        |
      | NAS_Score                 | Input        |
      | NAP_Score                 | Input        |
      | LN_PASS                   | Input        |
      | Risk_Indicators           | Input        |
      | OWNER_Risk_Score          | Input        |
      | Order_Number              | Input        |
      | Result_Code               | Input        |
      | Result_Message            | Input        |
      | OWNER_Reason_Code1        | Input        |
      | Owner_Reason_Code2        | Input        |
      | Owner_Reason_Code3        | Input        |
      | Owner_Reason_Code4        | Input        |
      | Owner_Reason_Description1 | Input        |
      | Owner_Reason_Description2 | Input        |
      | Owner_Reason_Description3 | Input        |
      | Owner_Reason_Description4 | Input        |
    Then User clicks on "Click Me! To Get Risk Classifier Results" link
    Then User verifies "A validation is being performed." pop up message
    Then User verifies prefilled data form text fields
      | data-dataitemid           | Locator Type |
      | OWNER_Risk_Score          | Input        |
      | Order_Number              | Input        |
      | Result_Code               | Input        |
      | Result_Message            | Input        |
      | OWNER_Reason_Code1        | Input        |
      | Owner_Reason_Code2        | Input        |
      | Owner_Reason_Code3        | Input        |
      | Owner_Reason_Code4        | Input        |
      | Owner_Reason_Description1 | Input        |
      | Owner_Reason_Description2 | Input        |
      | Owner_Reason_Description3 | Input        |
      | Owner_Reason_Description4 | Input        |
    Then User clicks on Lexis Nexis call button
    Then User verifies "User validation is being performed." pop up message
    Then User verifies prefilled data form text fields
      | data-dataitemid | Locator Type |
      | Lex_ID          | Input        |
      | LN_CVI          | Input        |
      | NAS_Score       | Input        |
      | NAP_Score       | Input        |
      | LN_PASS         | Input        |
      | Risk_Indicators | Input        |


  @RegressionTest @RegActivityMasterHP1REACT @RegressionTestHP1
  Scenario: TC_014_Verify Wizard Visible After Locking
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1REACT_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "ESign with Multiple signers" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message "Data Entry has met the requirements."
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Verifies the Unlock Button is Displayed
    Then User Clicks Back to Application
    Then User verifies toast message "Please Continue."
    Then User verifies application is display in Locked mode
    Then User verifies form is read only mode only
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is enabled in Other Action
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies PDF "PrintPdf" is generated
    Then User Clicks on Other Action Tab and verify "Unlock" option Showing
    Then User click "Unlock" submenu
    Then User clicks "Unlock Activity" button on data entry page
    Then User verifies all wizard and edit icon is displayed
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Annuitant" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User Clicks Sign Now
    Then User sets value "09456"  for field "ID Number" for To Signature tab
    Then User sets value "OwnName"  for field "Name" for To Signature tab
    Then User sets value "9456"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31/1996"  for field "Birth Date" for To Signature tab
    Then User sets value "xz@xyz.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies toast message "Please Continue."
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is enabled in Other Action
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies PDF "PrintPdf" is generated
    Then User Clicks on Other Action Tab and verify "Unlock" option Showing
    Then User click "Unlock" submenu
    Then User clicks "Unlock Activity" button on data entry page
    Then User verifies all wizard and edit icon is displayed
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Annuitant" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User Clicks Sign Now
    Then User sets value "09456"  for field "ID Number" for To Signature tab
    Then User sets value "OwnName"  for field "Name" for To Signature tab
    Then User sets value "9456"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31/1996"  for field "Birth Date" for To Signature tab
    Then User sets value "xz@xyz.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies toast message "Please Continue."
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is enabled in Other Action
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies pdf text in "PrintPdf" document
      | Application Validation Report |
      | Application Name              |
    Then User verifies pdf document contains 8 pages
#    Then User verify generated PDF displays signature
    Then User clicks "Continue" button
    Then User verifies dialog window "Confirmation Dialog"
    Then User Verifies Popup message as "Application will be submitted."
    Then User Verifies Popup message as "No further edits will be allowed."
    Then User Verifies Popup message as "Are you sure?"
    Then User clicks "Yes" button
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Signature page
    Then User verifies toast message "To print or view the application, history or documents, click on Other Actions." on Signature page
    Then User verifies toast message "Thank you for your business!" on Signature page
    Then User clicks on "close" link
