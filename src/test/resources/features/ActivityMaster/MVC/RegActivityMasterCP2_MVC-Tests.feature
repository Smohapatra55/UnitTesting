Feature: FireLight_Regression_ActivityMasterCP2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario:AT_040_Read invalid data entered validation message Page one Participant Zip Code Verify Validation Messages by entering invalid values
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_AT_040"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User opens "Page 1" Required for Form "Application222"
    Then User verifies Page heading "Application222" with form name "Page 1" for data entry flow
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Zip                 | abcd      | Owner_ResidentialAddress_Zipcode  | Input        |
      | Email Address       | testhexure | Owner_Primary_EmailAddress       | Input        |
    Then User Reload the page
    Then User clicks red bubble icon
    Then User verifies Error Message for field
      | Field                | Partial Text                     | Locator Type | Error Message                               |
      | email Field          | email                            | div          | Please enter valid email format. [X]                                             |
      | Zip Code             | ZIP                              | div          | This field must contain a valid ZIP code. [X]                                            |
    Then User opens "Page 2" Required for Form "Application222"
    Then User verifies Page heading "Application222" with form name "Page 2" for data entry flow
    Then User clicks red bubble icon
    Then User sets values for prefilled form
      | Field                                | Value      | data-dataitemid                  | Locator Type |
      | Primary Benifit Percentage           | 10        | PrimaryBeneficiary_Percentage     | Input        |
      | Additional1 Benifit Percentage       | 10  | AdditionalBeneficiary1_Percentage       | Input        |
      | Additional2 Benifit Percentage       | 10  | AdditionalBeneficiary1_Percentage       | Input        |
    Then User clicks red bubble icon
    Then User verifies Error Message for field
      | Field                | Partial Text                     | Locator Type | Error Message                               |
      | Primary Benifit Percentage                | percentage                              | div          | All beneficiary percentage fields must add up to 100%. [X] |
      | Additional1 Benifit Percentage            | percentage                              | div          | All beneficiary percentage fields must add up to 100%. [X] |
      | Additional2 Benifit Percentage            | percentage                              | div          | All beneficiary percentage fields must add up to 100%. [X] |
    Then User opens "Page 2" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field                                | Value      | data-dataitemid                         | Locator Type |
      | Primary Benifit Percentage           | 101        | PrimaryBeneficiary_Percentage           | Input        |
      | Additional1 Benifit Percentage       | 0          | AdditionalBeneficiary1_Percentage       | Input        |
      | Additional2 Benifit Percentage       | 150        | AdditionalBeneficiary1_Percentage       | Input        |
    Then User verifies Error Message for field
      | Field                | Partial Text                     | Locator Type | Error Message                               |
      | Primary Benifit Percentage                | between                              | div          | Must be whole number between 1 to 100. [X] |
      | Additional1 Benifit Percentage            | between                              | div          | Must be whole number between 1 to 100. [X] |
      | Additional2 Benifit Percentage            | between                              | div          | Must be whole number between 1 to 100. [X] |
    Then User opens "Page 2" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field                                | Value      | data-dataitemid                         | Locator Type |
      | Primary Benifit Percentage           | abc        | PrimaryBeneficiary_Percentage           | Input        |
      | Additional1 Benifit Percentage       | $$$          | AdditionalBeneficiary1_Percentage       | Input        |
      | Additional2 Benifit Percentage       | ////        | AdditionalBeneficiary1_Percentage       | Input        |
    Then User verifies Error Message for field
      | Field                | Partial Text                     | Locator Type | Error Message                               |
      | Primary Benifit Percentage                | numeric                              | div          | Please enter a numeric value only. [X] |
      | Additional1 Benifit Percentage            | numeric                              | div          | Please enter a numeric value only. [X] |
      | Additional2 Benifit Percentage            | numeric                              | div          | Please enter a numeric value only. [X] |

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario:TC_001_Verify the page error in form menu when 'Allow Not In Good Order Submittals' Enabled
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_001"
    Then User on Login Page enters valid username as "NIGO_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks on "close" link
    Then User Clicks on Continue Button and Verifies same page
    Then User clicks "Back To Application" button
    Then User clicks on "close" link
    Then User opens "Page 1" Required for Form "Application222"
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      | Contract Number     |1234566     | Contract_Number                  |Input         |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "black" color
    Then User close menu form
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      | Contract Number     |     | Contract_Number                  |Input         |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "red" color
    Then User Clicks on Continue Button and Verifies same page

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: TC_016_Verify to view Document in Review Queue after Complete all signer signature
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Multiple Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User clicks "Close" button on data entry page
    Then User verifies "Continue" Button should be disable
    Then User Verifies Data Entry Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents window
    Then User clicks "Close" button on data entry page
    Then User Verifies data entry percentage is "99 %"
    Then User opens "Page 1" Required for Form "FL024 Policy Template Form"
    Then User clicks "Policy Custom button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Policy" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User Closes Documents window
    Then User clicks "Close" button on data entry page
    Then User opens "Page 1" Required for Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Wet Signed Forms" for field "Select Document Type"
    Then User uploads Document "E2E-TC-08-pdf"
    Then User clicks "Upload" button
    Then User verifies 4 occurrence of "Remove" button for applications
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "Wet Signed Forms" document type after uploading documents
    Then User verifies "Remove" link for "Wet Signed Forms" document type after uploading documents
    Then User verifies "view" link for "Policy" document type after uploading documents
    Then User verifies "Remove" link for "Policy" document type after uploading documents
    Then User Closes Documents window
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "In Signatures"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User Clicks on Unlock Application
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User enter signer Full Name as "AP" City as "JAIPUR" perform Signature click I Consent
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 3 times
    Then User enter signer Full Name as "QA" City as "JAIPUR" perform Signature click I Consent
    Then User Select Agent
    Then User clicks on Sign Now button
    Then User Clicks on Agree All then click Ok on confirm Documents window
    Then User Enters Agent City as "US" Perform Signature, I Consent
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "Remove" and "View" link after uploading documents
    Then User close the dialog window "Documents"
    Then User Clicks on Continue button
    Then User Clicks on Request Review
    Then User clicks "Send request to reviewer" E-Review
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Clicks on Send Email Request
    Then User Clicks Back to App
    Then User On Pending Request Dialog Notes the Reviewer Passcode
    Then User Gets the URL by Clicking Send Reminder link
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
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
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User verifies Application status as "Complete"
    Then User Clicks Application from Recent Activity
    Then User verifies popup "Application is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies 0 occurrence of "Remove" button for applications
    Then User verifies "view" link for "eDelivery Required Voided Check" document type after uploading documents
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "view" link for "FL024 Wet Signed Template Form" document type after uploading documents
    Then User verifies "view" link for "FL024 Policy Template Form" document type after uploading documents
    Then User Closes Documents window

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario:TC_002_Verify the page error in form menu when 'Allow Not In Good Order Submittals' Disabled In Admin Groups setting for JKL_IT
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "95 %"
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
    Then User close menu form
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    |OwnerFirstName    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      | Contract Number     |    | Contract_Number                  | Input        |
    Then User expands application menu
    Then User verifies "Page 1" on "Application222" is displaying in "red" color
    Then User close menu form
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User verifies toast message "Data Entry has met the requirements."
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"


  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: TC_010_Verify View Remove links and Upload functionality During Pre Signature Review process MVC UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Multiple Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User "This application has one or more template forms with document tags: [Wet Signed Forms, Policy, Voided Check]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User selects value "Voided Check" for field "Select Document Type"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User Closes Documents window
    Then User "This application has one or more template forms with document tags: [Wet Signed Forms, Policy]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "99 %"
    Then User opens "Page 1" Required for Form "FL024 Policy Template Form"
    Then User clicks "Policy Custom button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Policy" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
    Then User "This application has one or more template forms with document tags: [Wet Signed Forms]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User opens "Page 1" Required for Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Wet Signed Forms" for field "Select Document Type"
    Then User uploads Document "E2E-TC-08-pdf"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "Remove" button "exists" for application "E2E-TC-08-pdf"
    Then User Closes Documents window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "Remove" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
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
    Then User verifies dialog window "Pending Request" popup
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Cancel button
    Then User Clicks on Close link at bottom of the popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies 1 occurrence of "Remove" button for applications
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies 1 occurrence of "Remove" button for applications
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: AT_009_Verify upload  template  documents popup appears if template  documents added in activity.Verify View/Remove links and Upload functionality During Signature process - MVC UI
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_AT_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Multiple Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "98 %"
    Then User Verifies Continue button is disabled
    Then User opens page "Page 1" of Form "eDelivery Required Voided Check"
    Then User clicks "Voided Check" button on data entry page
    Then User verifies dialog window "Documents"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window
    Then User Verifies Continue button is disabled
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "99 %"
    Then User Verifies Continue button is disabled
    Then User opens page "Page 1" of Form "FL024 Policy Template Form"
    Then User clicks "Policy Custom button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User selects value "Policy" for field "Select Document Type"
    Then User Verifies value "Policy" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "99 %"
    Then User opens page "Page 1" of Form "FL024 Wet Signed Template Form"
    Then User clicks "Wet Sign Custom Button" button on data entry page
    Then User verifies dialog window "Documents"
    Then User selects value "Wet Signed Forms" for field "Select Document Type"
    Then User Verifies value "Wet Signed Forms" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Continue button Enabled
    Then User reload the page
    Then User Verifies toast Popup Not Appear for Upload Documents
    Then User Clicks on Continue button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Insured" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "signerFullName" City as "SignerCity" Then perform Signature and click I Consent
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "signerFullName" City as "SignerCity" Then perform Signature and click I Consent
    Then User verifies "Insured / Owner:" under completed signatures section with "Re-Sign" button on signature page
    Then User Clicks Back to Application
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks on "close" link
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window
    Then User Clicks on Continue button
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User Enters Agent City as "AgentCITY" Perform Signature, I Consent
    Then User clicks on "close" link
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window
    Then User Clicks on Continue button
    Then User clicks Yes button
    Then User clicks on "close popup" link
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Closes Documents window

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: TC_013_Verify to Upload Document  Type for Ex Illustration from  Request Client to Fill App login
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "99 %"
    Then User "This application has one or more template forms with document tags: [Voided Check]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Select Document Type"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User Closes Documents window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Insured"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Generate Link Without Email" button on signature page
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
    Then User verify error message "Document type already uploaded." on SSN home page
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
    Then User Now Click on Complete Log Off button
    Then User verifies dialog window "Complete Activity"
    Then User Clicks on Submit and logoff button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User clicks "Remove" button for application "E2E-TC02-pdfFile" on select documents to print page
    Then User verifies confirmation popup is appear
    Then User verify document for "Illustration" does not exists on select documents to print page

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: TC_014_Verify view, remove button with Document Uploaded from Request Client  Fill & Sign login
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "99 %"
    Then User "This application has one or more template forms with document tags: [Voided Check]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Select Document Type"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User Closes Documents window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User Clicks "Other Action" Button
    Then User Clicks on "Request Client to Fill & Sign"
    Then User enters "insured" details on page
    Then User remove "owner" details on page
    Then User Now Clicks Send Email Request button
    Then User "Request Sent" Dialog appear with Generated URL for "insured", Stores the URL, Verifies the email on dialog box, Then Clicks on OK
    Then Pending request box with "Insured" is displayed on data entry page
    Then User Notes the Passcode for "Insured" on data entry page
    And User clicks "Close" button on signature page
    Then User navigates to Home page
    Then User verifies Application status as "Pending Client Request"
    Then User clicks "Logoff" button on home page
    And User login to email link with "insuredPasscode" generated on signature page from home page
    Then User clicks "Attach Documents" button on page
    Then User verify that application forms and templates are not displayed on SSN home page
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verify error message "Document type already uploaded." on SSN home page
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
    Then User Now Click on Complete Log Off button
    Then User verifies dialog window "Complete Activity"
    Then User Clicks on Submit and logoff button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User clicks "Remove" button for application "E2E-TC02-pdfFile" on select documents to print page
    Then User verifies confirmation popup is appear
    Then User verify document for "Illustration" does not exists on select documents to print page

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: TC_015_Verify to Upload Document  Type for Ex Illustration from  Request Client to Fill & Sign login that is already uploaded from FLAPP.
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "99 %"
    Then User "This application has one or more template forms with document tags: [Voided Check]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Select Document Type"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User Closes Documents window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User Clicks "Other Action" Button
    Then User Clicks on "Request Client to Fill & Sign"
    Then User enters "insured" details on page
    Then User remove "owner" details on page
    Then User Clicks on "Generate Link Without Email" Button
    And User verifies link is generated and store it
    Then User Clicks "Back to App" Button
    Then Pending request box with "Insured" is displayed on data entry page
    Then User Notes the Passcode for "Insured" on data entry page
    And User clicks "Close" button on signature page
    Then User navigates to Home page
    Then User verifies Application status as "Pending Client Request"
    Then User clicks "Logoff" button on home page
    And User login to email link with "insuredPasscode" generated on signature page from home page
    Then User clicks "Attach Documents" button on page
    Then User verify that application forms and templates are not displayed on SSN home page
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verify error message "Document type already uploaded." on SSN home page
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
    Then User Now Click on Complete Log Off button
    Then User verifies dialog window "Complete Activity"
    Then User Clicks on Submit and logoff button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User clicks "Remove" button for application "E2E-TC02-pdfFile" on select documents to print page
    Then User verifies confirmation popup is appear
    Then User verify document for "Illustration" does not exists on select documents to print page


  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario:TC_005_If parent package Needs Determination includes a required Template to upload docs the child Next Activity Cannot remove the uploaded docs by parent's template
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_005"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 ND Template Not Linked" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies toast message Close
    Then User Verifies data entry percentage is "98%"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
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
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User is on "Electronic Signatures" page
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      |value |
      |You have declined to use E-Signature. All signatures for this application must be collected manually.|
      |To upload wet signed documents, click on `Other Actions` and select `Documents`.                     |
      |To revise your decision, click on `Other Actions` and select `Unlock Application`.                   |
    Then User clicks "Ok" button
    Then User verifies toast message "Finished 1 of 3 Steps. Please Continue."
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "Firm Product Forms Only"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Closes Documents window
    Then User Now Clicks on Link Icon before page number
    Then User verifies parent name and click on parent name
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verify remove link does not appear for documents
    Then User Closes Documents Window

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario:TC_006_If parent package Needs Determination does not include a required Template then the child Next Activity Cannot remove the uploaded docs by parent activity
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_006"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 ND Not Linked" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "View" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents Window
    Then User Verifies data entry percentage is "98%"
    Then User opens "Goals" Required for Form "Need Determination Questionnaire"
    Then User verifies Page heading "Need Determination Questionnaire" with form name "Goals" for data entry flow
    Then User Selects "Lifetime Income" CheckBox
    Then User Verifies "Lifetime Income" CheckBox is selected
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      |value |
      |You have declined to use E-Signature. All signatures for this application must be collected manually.|
      |To upload wet signed documents, click on `Other Actions` and select `Documents`.                     |
      |To revise your decision, click on `Other Actions` and select `Unlock Application`.                   |
    Then User clicks "Ok" button
    Then User verifies toast message "Finished 1 of 3 Steps. Please Continue."
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "Firm Product Forms Only"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "View" button "exists" for uploaded document
    Then User Closes documents Dialog page
    Then User Now Clicks on Link Icon before page number
    Then User verifies parent name and click on parent name
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verify remove link does not appear for documents
    Then User Closes Documents Window

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario:TC_007_Generate Editable PDF for Print Forms Activity
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_TC_007"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Print Forms" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Print Forms product" for application
    Then User clicks "Create" button
    Then User fills values for prefilled form
      | Field                    | Value                             | data-dataitemid                    | Locator Type |
      | First name               | Stella                            | Insured_FirstName                  | Input        |
      | Last Name                | Anderson                          | Insured_LastName                   | Input        |
      | Insured Resident Address | F36 IInd Avenue Paciffic Palaside | Insured_ResidentialAddress1        | Input        |
      | State                    | CA                                | Insured_ResidentialAddress_State   | Select       |
      | Zip Code                 | 78978-8989                        | Insured_ResidentialAddress_Zipcode | Input        |
      | Former Address           | F36 IIIrd Avenue Ocean Palaside   | Insured_PreviousAddress1           | Input        |
      | Former Zip Code          | 78978-8980                        | Insured_PreviousAddress_Zipcode    | Input        |
      | Telephone                | (811) 889-5588                    | Insured_PhoneNumber                | Input        |
      | EmailID                  | ssingh@hexure.com                 | Insured_EmailAddress               | Input        |
      | Social Security number   | 899-55-8877                       | Insured_SSN                        | Input        |
      | Gender                   | Female                            | Insured_Gender                     | Check Box    |
      | Date of Birth            | 01-01-1980                        | Insured_DOB                        | Input        |
    Then User clicks on print button and verifies print pdf window
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies PDF "PrintPdf" is generated
    Then User verifires the filled data is present
      | Field                    | Value                             | data-dataitemid                    | Locator Type |
      | First name               | Stella                            | Insured_FirstName                  | Input        |
      | Last Name                | Anderson                          | Insured_LastName                   | Input        |
      | Insured Resident Address | F36 IInd Avenue Paciffic Palaside | Insured_ResidentialAddress1        | Input        |
      | State                    | CA                                | Insured_ResidentialAddress_State   | Select       |
      | Zip Code                 | 78978-8989                        | Insured_ResidentialAddress_Zipcode | Input        |
      | Former Address           | F36 IIIrd Avenue Ocean Palaside   | Insured_PreviousAddress1           | Input        |
      | Former Zip Code          | 78978-8980                        | Insured_PreviousAddress_Zipcode    | Input        |
      | Telephone                | (811) 889-5588                    | Insured_PhoneNumber                | Input        |
      | EmailID                  | ssingh@hexure.com                 | Insured_EmailAddress               | Input        |
      | Social Security number   | 899-55-8877                       | Insured_SSN                        | Input        |
      | Gender                   | Female                            | Insured_Gender                     | Check Box    |
      | Date of Birth            | 01-01-1980                        | Insured_DOB                        | Input        |
    Then User verifies the color of "Insured_ResidentialAddress_State" is "magenta"
    Then User verifies fields are in their format
      | Value          | data-dataitemid                    | Locator Type |
      | 78978-8980     | Insured_ResidentialAddress_Zipcode | Input        |
      | 78978-8980     | Insured_PreviousAddress_Zipcode    | Input        |
      | (811) 889-5588 | Insured_PhoneNumber                | Input        |
      | 899-55-8877    | Insured_SSN                        | Input        |
      | 01-01-1980     | Insured_DOB                        | Input        |
    Then User fills values for prefilled form
      | Field                    | Value                             | data-dataitemid                    | Locator Type |
      | First name               | StellaUpdate                      | Insured_FirstName                  | Input        |
      | Last Name                | AndersonUpdate                    | Insured_LastName                   | Input        |
    Then User verifires the filled data is present
      | Field                    | Value                             | data-dataitemid                    | Locator Type |
      | First name               | StellaUpdate                      | Insured_FirstName                  | Input        |
      | Last Name                | AndersonUpdate                    | Insured_LastName                   | Input        |


  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: AT_011_Verify View/Remove links and Upload functionality during Signature process and after Complete Status
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_AT_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "99 %"
    Then User Verifies Continue button is disabled
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User clicks "Voided Check" button on data entry page
    Then User verifies dialog window "Documents"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "Sample2"
    Then User verifies "Remove" button "exists" for application "Sample2"
    Then User verifies "View" button "exists" for application "Sample"
    Then User verifies "Remove" button "exists" for application "Sample"
    Then User Closes Documents window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User Verifies data entry percentage is "100 %"
    Then User Clicks on Continue button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User clicks "Back To Application" button
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies "View" button "exists" for application "Sample"
    Then User verifies "Remove" button "exists" for application "Sample"
    Then User verifies "View" button "exists" for application "Sample2"
    Then User clicks "Remove" button for application "Sample" on select documents to print page
    Then User verifies confirmation popup is appear
    Then User verifies document for "Illustration" does not exists on select documents to print page
    Then User Closes Documents window
    Then User Clicks on Continue button
    Then User selects "Insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "insuredFullName" City as "insuredCity" Then perform Signature and click I Consent
    Then User clicks "Back To Application" button
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies view link appears and remove link does not appear for all uploaded documents
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "Sample"
    Then User verifies "Remove" button "exists" for application "Sample"
    Then User Closes Documents window
    Then User Clicks on Continue button
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "ownerFullName" City as "ownerCity" Then perform Signature and click I Consent
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User Enters Agent City as "AgentCITY" Perform Signature, I Consent
    Then User clicks on "close" link
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies Application Status as "Signatures Complete"
    Then User open application from recent activity
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies "View" button "exists" for application "Sample2"
    Then User verifies "View" button "exists" for application "Sample"
    Then User verifies "Remove" button "exists" for application "Sample"
    Then User Closes Documents window
    Then User Clicks on Continue button
    Then User clicks "Ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User clicks on Close icon on Toast Popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Complete"
    Then User open application from recent activity
    Then User Clicks on Other Action Tab and verify "Documents" option Showing
    Then User Now Clicks "Documents" option under Other Actions
    Then User verifies view link appears and remove link does not appear for all uploaded documents
    Then User verifies Choose file option and Upload button are disabled

  @RegressionTest @RegActivityMasterCP2MVC @RegressionTestCP2
  Scenario: AT_012_Verify Document Uploaded from App and view on Request Client to Fill App login
    Given User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_AT_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Upload Template toast message appear and close the pop up
    Then User Verifies Data Entry met pop up is NOT showing and data entry is "99 %"
    Then User Verifies Continue button is disabled
    Then User verifies Required for Form "eDelivery Required Voided Check"
      | Page 1 |
    Then User opens "Page 1" Required for Form "eDelivery Required Voided Check"
    Then User clicks "Voided Check" button on data entry page
    Then User verifies dialog window "Documents"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "Sample"
    Then User verifies "Remove" button "exists" for application "Sample"
    Then User Closes Documents window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User Verifies data entry percentage is "100 %"
    Then User Clicks on Other Action Tab and verify "Request Client to Fill App" option Showing
    Then User Clicks "Request Client to Fill App" Button
    Then User Selects the Signer Type as "Insured"
    Then User enter "Recipient Name" on ReactApp page
    Then User enter "recipient email" on ReactApp page
    Then User enter "Your Name" on ReactApp page
    Then User enter "ReceipantSSN" on ReactApp page
    Then User enter "Client BirthDate" on ReactApp page
    Then User Clicks "Send Email request" Button
    Then User Notes the URL generated and clicks Back to App
    Then Pending Request popup should appear
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
    Then User verify error message "Document type already uploaded." on SSN home page
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "E2E-TC04-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
    Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
    Then User Closes Documents window
    Then User Now Click on Complete Log Off button
    Then User verifies dialog window "Complete Activity"
    Then User Clicks on Submit and logoff button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User is on FireLight login page for TestCase "RegActivityMasterCP2MVC_AT_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies "View" button "exists" for application "Sample"
    Then User verifies "Remove" button "exists" for application "Sample"
    Then User verifies "View" button "exists" for uploaded document
    Then User verifies "Remove" button "exists" for uploaded document
    Then User verifies "View" button "exists" for application "Sample2"
    Then User verifies "Remove" button "exists" for application "Sample2"
    Then User clicks "Remove" button for application "Sample" on select documents to print page
    Then User verifies confirmation popup is appear
    Then User verify document for "Illustration" does not exists on select documents to print page
