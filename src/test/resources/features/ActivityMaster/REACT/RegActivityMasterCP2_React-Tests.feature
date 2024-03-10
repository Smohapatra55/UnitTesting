Feature: FireLight_Regression_ActivityMasterCP2_React_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_003_If parent package Needs Determination includes a required Template to upload docs the child Next Activity Cannot remove the uploaded docs by parent's template
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 ND Template Not Linked" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "98%"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies Data Entry Tab is active
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "98%"
    Then User opens "Goals" Required for Form "Need Determination Questionnaire"
    Then User verifies Page heading "Need Determination Questionnaire" with form name "Goals" for data entry flow
    Then User Selects "Lifetime Income" CheckBox
    Then User Verifies "Lifetime Income" CheckBox is selected
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User verifies toast message "Finished 1 of 3 Steps. Please Continue."
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "Firm Product Wiz and Forms"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "eDelivery Required Voided Check" document type after uploading documents
    Then User verifies "view" link for "Investment Profile" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "NeedsQuestionnaire" document type after uploading documents
    Then User Closes Documents Window
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "view" link for "eDelivery Required Voided Check" document type after uploading documents
    Then User verifies "view" link for "Investment Profile" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "NeedsQuestionnaire" document type after uploading documents
    Then User verify remove link does not appear for documents
    Then User Closes Documents Window


  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_004_If parent package (Needs Determination) does not include a required Template then the child (Next Activity) Cannot remove the uploaded docs by parent activity
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "FL024 ND Template Not Linked" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "98%"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies Data Entry Tab is active
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verify value is "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "Illustration"
    Then User verifies 1 occurrence of "Remove" button for applications
    Then User verifies "Remove" button "exists" for uploaded document
    Then User clicks "Close" button
    Then User Verifies data entry percentage is "98%"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "Voided Check"
    Then User verifies 2 occurrence of "Remove" button for applications
    Then User clicks "Close" button
    Then User opens "Goals" Required for Form "Need Determination Questionnaire"
    Then User verifies Page heading "Need Determination Questionnaire" with form name "Goals" for data entry flow
    Then User Selects "Lifetime Income" CheckBox
    Then User Verifies "Lifetime Income" CheckBox is selected
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User verifies toast message "Finished 1 of 3 Steps. Please Continue."
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User Verifies "Apply" button Enabled
    Then User clicks on "APPLY" link of data entry met Toast popup
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "Firm Product Wiz and Forms"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "View" button "exists" for application "Illustration"
    Then User verifies "View" button "exists" for application "eDelivery Required Voided Check"
    Then User verifies "View" button "exists" for application "Investment Profile"
    Then User verifies "View" button "exists" for application "NeedsQuestionnaire"
    Then User verifies 0 occurrence of "Remove" button for applications
    Then User verifies "Remove" button "does not exist" for uploaded document
    Then User clicks "Close" button
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "view" link for "eDelivery Required Voided Check" document type after uploading documents
    Then User verifies "view" link for "Investment Profile" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "NeedsQuestionnaire" document type after uploading documents
    Then User verify remove link does not appear for documents
    Then User Closes Documents Window

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_021_Verify View Remove links and Upload functionality with External Fill App Request Generate Link Without Email React UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "99%"
    Then User Verifies Continue button is disabled
    Then User Verifies Data Entry Tab is active
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Verifies data entry percentage is "99%"
    Then User Verifies Continue button is disabled
    Then User Verifies Data Entry Tab is active
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Insured"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on close link and popup is closed
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Logs in with "recipientPasscode"
    Then User Clicks Expand form menu
    Then User Close the Form Menu by clicking on Collapse button
    Then User Clicks Attach Documents Tab
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Medical Exam - Part 2" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks CompleteLog off Tab
    Then User clicks on submit and Log Off
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario:AT_040_Read invalid data entered validation message Page1 Participant Zip Code Verify Validation Messages by entering invalid values
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_AT_040"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice Wizard" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User opens "Page 1" Required for Form "Application222"
    Then User verifies Page heading "Application222" with form name "Page 1" for data entry flow
    Then User sets values for prefilled form
      | Field         | Value      | data-dataitemid                  | Locator Type |
      | Zip           | abcd       | Owner_ResidentialAddress_Zipcode | Input        |
      | Email Address | testhexure | Owner_Primary_EmailAddress       | Input        |
    Then User Reload the page
    Then User clicks red bubble icon
    Then User verifies Error Message for field
      | Field       | Partial Text | Locator Type | Error Message                                 |
      | email Field | email        | div          | Please enter valid email format.         |
      | Zip Code    | ZIP          | div          | This field must contain a valid ZIP code. |
    Then User opens "Page 2" Required for Form "Application222"
    Then User verifies Page heading "Application222" with form name "Page 2" for data entry flow
    Then User clicks red bubble icon
    Then User sets values for prefilled form
      | Field                          | Value | data-dataitemid                   | Locator Type |
      | Primary Benifit Percentage     | 10    | PrimaryBeneficiary_Percentage     | Input        |
      | Additional1 Benifit Percentage | 10    | AdditionalBeneficiary1_Percentage | Input        |
      | Additional2 Benifit Percentage | 10    | AdditionalBeneficiary1_Percentage | Input        |
    Then User clicks red bubble icon
    Then User verifies Error Message for field
      | Field                          | Partial Text | Locator Type | Error Message                                              |
      | Primary Benifit Percentage     | percentage   | div          |All beneficiary percentage fields must add up to 100%.|
      | Additional1 Benifit Percentage | percentage   | div          | All beneficiary percentage fields must add up to 100%. |
      | Additional2 Benifit Percentage | percentage   | div          | All beneficiary percentage fields must add up to 100%. |
    Then User opens "Page 2" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field                          | Value | data-dataitemid                   | Locator Type |
      | Primary Benifit Percentage     | 101   | PrimaryBeneficiary_Percentage     | Input        |
      | Additional1 Benifit Percentage | 0     | AdditionalBeneficiary1_Percentage | Input        |
      | Additional2 Benifit Percentage | 150   | AdditionalBeneficiary1_Percentage | Input        |
    Then User verifies Error Message for field
      | Field                          | Partial Text | Locator Type | Error Message                              |
      | Primary Benifit Percentage     | between      | div          |Must be whole number between 1 to 100. |
      | Additional1 Benifit Percentage | between      | div          | Must be whole number between 1 to 100. |
      | Additional2 Benifit Percentage | between      | div          | Must be whole number between 1 to 100. |
    Then User opens "Page 2" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field                          | Value | data-dataitemid                   | Locator Type |
      | Primary Benifit Percentage     | abc   | PrimaryBeneficiary_Percentage     | Input        |
      | Additional1 Benifit Percentage | $$$   | AdditionalBeneficiary1_Percentage | Input        |
      | Additional2 Benifit Percentage | ////  | AdditionalBeneficiary1_Percentage | Input        |
    Then User verifies Error Message for field
      | Field                          | Partial Text | Locator Type | Error Message                          |
      | Primary Benifit Percentage     | numeric      | div          | Please enter a numeric value only. |
      | Additional1 Benifit Percentage | numeric      | div          | Please enter a numeric value only. |
      | Additional2 Benifit Percentage | numeric      | div          | Please enter a numeric value only. |

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_022_Verify View_Remove links and Upload functionality with External Fill & Sign Request Send Email Request React UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_022"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "99%"
    Then User Verifies Continue button is disabled
    Then User Verifies Data Entry Tab is active
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User Enters Name Email SSN, Birth Date for Insured
    Then User Clicks on "owner" Remove Button
    Then User Now Clicks Send Email Request button
    Then User "Request Sent" Dialog appear with Generated URL for "insured", Stores the URL, Verifies the email on dialog box, Then Clicks on OK
    Then Pending request box with "Insured" is displayed on data entry page
    Then User store "Passcode" for "Insured"
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Client Request"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "receipantLink(url)"
    Then User on External Login page have two for Login SSN,DOB or Passcode
    Then User Logs in with "insuredPasscode"
    Then User Clicks Attach Documents Tab
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Medical Exam - Part 2" for field "Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks CompleteLog off Tab
    Then User clicks on submit and Log Off
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_022"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User clicks "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_023_Verify View Remove links and Upload functionality with External Fill Sign Request Generate Link Without Email React UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_023"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "99%"
    Then User Verifies Continue button is disabled
    Then User Verifies Data Entry Tab is active
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Document Type"
    Then User Verifies value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User Enters Name Email SSN, Birth Date for Insured
    Then User Clicks on "owner" Remove Button
    Then User Now Clicks on Generate Link Without Email button
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User verifies dialog window "Pending Requests"
    Then User verifies same Passcode as generated Before for "signerPasscode"
    Then User clicks on close link and popup is closed
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User Clicks Expand form menu
    Then User Close the Form Menu by clicking on Collapse button
    Then User Clicks Attach Documents Tab
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Medical Exam - Part 2" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks CompleteLog off Tab
    Then User clicks on submit and Log Off
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_023"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User clicks "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_001_Verify the page error in form menu when 'Allow Not In Good Order Submittals' Enabled
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_001"
    Then User on Login Page enters valid username as "NIGO_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice Wizard" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Close" button on data entry page
    Then User Clicks on Continue Button and Verifies same page
    Then User clicks "Back To Application" button
    Then User clicks "Close" button on data entry page
    Then User opens "Page 1" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      | Contract Number     | 1234566    | Contract_Number                  | Input        |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "black" color
    Then User close menu form
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      | Contract Number     |            | Contract_Number                  | Input        |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "red" color
    Then User close menu form
    Then User Clicks on Continue Button and Verifies same page

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario:TC_002_Verify the page error in form menu when 'Allow Not In Good Order Submittals' Disabled In Admin Groups setting for JKL_IT-React
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice Wizard" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "95%"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies Data Entry Tab is active
    Then User verifies Page heading "Application222" with form name "Page 1" for data entry flow
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | First Name     | UserFirstName | Owner_FirstName                  | Input        |
      | Last Name      | UserLastName  | Owner_LastName                   | Input        |
      | Date of Birth  | 03/09/2000    | Owner_DOB                        | Input        |
      | Zip Code       | 98765         | Owner_ResidentialAddress_Zipcode | Input        |
      | Contact Number | 1234567890    | Contract_Number                  | Input        |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "black" color
    Then User Close the Form Menu by clicking on Collapse button
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      | Contract Number     |     | Contract_Number                  |Input         |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "red" color
    Then User close menu form
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Next" button
    Then User verifies "Data Entry has met the requirements." popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"


  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_019_Verify View Remove links and Upload functionality during Signature process and after Complete Status React UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "99%"
    Then User Verifies Continue button is disabled
    Then User Verifies Data Entry Tab is active
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "100%"
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "Remove" and "View" link after uploading documents
    Then User Closes Documents Window
    Then User navigate to home page
    Then User Verifies Application Status as "In Signatures"
    Then User Clicks Application from Recent Activity
    Then User clicks "Continue" button
    Then User selects "insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter signer Full Name as "AP" City as "JAIPUR" perform Signature click I Consent
    Then User Clicks Back to Application
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies 1 occurrence of "Remove" button for applications
    Then User clicks "Close" button
    Then User clicks "Continue" button
    Then User selects "owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User enter signer Full Name as "QA" City as "JAIPUR" perform Signature click I Consent
    Then User Select Agent
    Then User clicks on Sign Now button
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User Enters Agent City as "US" Perform Signature, I Consent
    Then User navigate to home page
    Then User verifies Application status as "Signatures Complete"
    Then User Clicks Application from Recent Activity
    Then User verifies toast message of "Finished 2 of 3 Steps. Please Continue."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User clicks "Close" button
    Then User Clicks on Continue when app is in Finalize step
    Then User clicks Yes button
    Then User Navigates to Home Page
    Then User Verifies Application Status as "Complete"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies button "Upload" is "disabled"

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_017_Verify upload  template  documents toast popup appears if template  documents added in activity.
  Verify View/Remove links and Upload functionality During Signature process - REACT UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Multiple Template Product Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User Verifies toast message Close
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies Data Entry Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Document Type"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Reload the page
    Then User Verifies data entry percentage is "99%"
    And User "This application has one or more template forms with document tags: [Wet Signed Forms, Policy]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User opens "Page 1" Required for Form "FL024 Policy Template Form"
    Then User clicks "Policy Custom button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User selects value "Policy" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "Remove" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Reload the page
    Then User Verifies data entry percentage is "99%"
    And User "This application has one or more template forms with document tags: [Wet Signed Forms]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User opens "Page 1" Required for Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User Verifies value "Wet Signed Forms" for field "Document Type"
    Then User selects value "Wet Signed Forms" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "Remove" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User verifies "Remove" link for "Wet Signed Forms" document type after uploading documents
    Then User Closes Documents Window
    Then User Reload the page
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User navigates to Home page
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies Application status as "Data Entry"
    Then User open application from recent activity
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "Remove" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User verifies "Remove" link for "Wet Signed Forms" document type after uploading documents
    Then User Clicks on "Remove" link for "Wet Signed Forms" document type
    Then User Clicks on Close link at bottom of the popup
    Then User Reload the page
    And User "This application has one or more template forms with document tags: [Wet Signed Forms]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "99%"
    Then User Verifies Continue button is disabled
    Then User navigates to Home page
    Then User verifies Application status as "Data Entry"
    Then User open application from recent activity
    And User "This application has one or more template forms with document tags: [Wet Signed Forms]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "99%"
    Then User opens "Page 1" Required for Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User Verifies value "Wet Signed Forms" for field "Document Type"
    Then User selects value "Wet Signed Forms" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "Remove" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User verifies "Remove" link for "Wet Signed Forms" document type after uploading documents
    Then User Closes Documents Window
    Then User Reload the page
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" signer on signature window
    Then User selects "insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Insured/Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks on Agree Checkbox
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Clicks on Agree Checkbox
    Then User Clicks on Agree Checkbox
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User Clicks Back to Application
    Then User verifies toast message "Finished 1 of 3 Steps"
    Then User Navigates to Home Page
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User verifies toast message "Finished 1 of 3 Steps"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "ENR BlueSkyInsApplication 2 Signer" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Firm Product Form" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks on Continue button
    Then User should be on page "List of Required Signers"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice for Agent"
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Confirm All Documents" button on signature page
    Then User Clicks on "Yes" on confirmation dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message "Finished 2 of 3 Steps"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "ENR BlueSkyInsApplication 2 Signer" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Firm Product Form" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verify remove link does not appear for documents
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "view" link for "ENR BlueSkyInsApplication 2 Signer" document type after uploading documents
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Firm Product Form" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verify remove link does not appear for documents
    Then User verifies "view" link for "FL024 Wet Signed Template Form" document type after uploading documents
    Then User Closes Documents Window

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_018_Verify View Remove links and Upload functionality During Pre Signature Review process REACT UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Multiple Template Product Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User "This application has one or more template forms with document tags: [Wet Signed Forms, Policy, Voided Check]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Document Type"
    Then User Verifies value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User clicks "Close" button
    Then User "This application has one or more template forms with document tags: [Wet Signed Forms, Policy]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "99%"
    Then User opens "Page 1" Required for Form "FL024 Policy Template Form"
    Then User clicks "Policy Custom button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Policy" for field "Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User clicks "Close" button
    Then User "This application has one or more template forms with document tags: [Wet Signed Forms]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User opens "Page 1" Required for Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Wet Signed Forms" for field "Document Type"
    Then User uploads Document "E2E-TC-08-pdf"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "Remove" button "exists" for application "E2E-TC-08-pdf"
    Then User clicks "Close" button
    Then User Verifies Data Entry Met Toast popup is show
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "Remove" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User clicks "Close" button
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name     | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks "Cancel" button
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies 1 occurrence of "Remove" button for applications
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
    Then User clicks "Remove" button for application "E2E-TC02-pdfFile" on select documents to print page
    Then User verify document for "Illustration" does not exists on select documents to print page
    Then User clicks "Close" button
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User open application from recent activity
    Then User clicks "CLOSE" button
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies 0 occurrence of "Remove" button for applications
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verify document for "Illustration" does not exists on select documents to print page
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User clicks "Close" button

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_020_Verify Document Uploaded from App and view on Request Client to Fill App login.Verify View/Remove links and Upload functionality with External Fill App Request - Send Email Request - React UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_020"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "99%"
    Then User Verifies toast message Close
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies Data Entry Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Document Type"
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Reload the page
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Insured"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Close button on pending request page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks "Attach Documents" button on page
    Then User verify that application forms and templates are not displayed on SSN home page
    Then User uploads Document
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Medical Exam - Part 2" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User Closes Documents Window
    Then User Clicks CompleteLog off Tab
    Then User clicks on submit and Log Off
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_020"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Medical Exam - Part 2" document type after uploading documents
    Then User verifies "Remove" link for "Medical Exam - Part 2" document type after uploading documents
    Then User Clicks on "Remove" link for "Illustration" document type
    Then User Closes Documents Window

  @RegressionTest @RegActivityMasterCP2React @RegressionTestCP2
  Scenario: TC_024_Verify to view Document in Review Queue after Complete all signer signature Verify View Remove links and Upload functionality During PostSignature Review process React UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_024"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Multiple Template Product Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "98%"
    Then User Verifies Continue button is disabled
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User clicks "Voided Check" button on data entry page
    Then User verifies dialog window "Documents"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "99%"
    Then User Reload the page
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "99%"
    Then User Verifies Continue button is disabled
    Then User verifies Required for Form "FL024 Policy Template Form"
      | Page 1 |
    Then User opens "Page 1" Required for Form "FL024 Policy Template Form"
    Then User clicks "Policy Custom button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "Remove" link for "Policy" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "99%"
    Then User Reload the page
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "99%"
    Then User Verifies Continue button is disabled
    Then User verifies Required for Form "FL024 Wet Signed Template Form"
      | Page 1 |
    Then User opens "Page 1" Required for Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User verifies "Remove" link for "Wet Signed Forms" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies Data Entry Met Toast popup is show
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies toast Popup Not Appear for Upload Documents
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Clicks on Continue
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Clicks Back to Application
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "In Signatures"
    Then User open application from recent activity
    Then User Clicks on Continue
    Then User selects "Insured" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 3 times
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "Agent" on signature window
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User Enters Agent City as "US" Perform Signature, I Consent
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Signatures Complete"
    Then User open application from recent activity
    Then User clicks on "close" link
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window
    Then User Clicks on Continue button
    Then User Clicks on Request Review
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Clicks on Send Email Request
    Then User clicks on Back To App button
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User open application from recent activity
    Then User Notes the Passcode from Pending Request dialog
    Then User Gets the URL by Clicking Send Reminder link
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks "Attach Documents" from review queue
    Then User verify value is "Reviewer Documents" for field "Select Document Type"
    Then User uploads Document "TestUpload"
    Then User clicks "Upload" button
    Then User Closes Reviewer Documents window
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2React_TC_024"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User open application from recent activity
    Then User verifies application is finished and closes toast pop up
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies view link appears and remove link does not appear for all uploaded documents
    Then User Closes Documents window
    Then User Verifies toast Popup Not Appear for Upload Documents
    Then User reload the page
    Then User verifies application is finished and closes toast pop up
