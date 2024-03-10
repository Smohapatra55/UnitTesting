Feature: FireLight_Regression_ActivityMasterHP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: AT_011_Validate Custom Action CRM using 3rd party credentials
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_AT_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "CRM Owner Lookup" button
    Then User verifies CRM Owner Dialog box
    Then User send values "B" in search box and click on search
    Then User select any one from the record
    Then User clicks "Select" Button
    Then User verifies prefilled Form
      | data-dataitemid                  | Locator Type |
      | Owner_FirstName                  | Input        |
      | Owner_LastName                   | Input        |
      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner_DOB                        | Input        |
    Then User opens "Page 3" Required for Form "Application222"
    Then User select one value form dropdown
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" value is present and click it
    Then User clicks on Surrendering Company lookup
    Then User verifies Dialog box and search "voy" in search field
    Then User selects any one value from search records
    Then User clicks "Select" Button
    Then User verifies the page heading as "1035 EXCHANGEROLLOVERTRANSFER eFORM"
    Then User verifies prefilled Form
      | data-dataitemid                      | Locator Type |
      | Owner_FirstName                      | Input        |
      | Owner_LastName                       | Input        |
      | Replacement_Company_Zipcode1         | Input        |
      | Replacement_Company_LocationID1      | Input        |
      | Owner_SSN                            | Input        |
      | Replacement_Company_Fax_PhoneNumber1 | Input        |
      | Replacement_Company_PhoneNumber1     | Input        |
      | Replacement_Company_City1            | Input        |



  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: AT_062_Verify data is auto filling from the Custom List button
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_AT_062"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Decline ESign MVC UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens "Custom List Form" Optional for Form "Test Form DSB"
    Then User clicks on custom list button
    Then User verifies new Dialog box is opening with
      | Country |
      | States  |
      | City    |
    Then User Clicks on First Row
    Then User verify "Custom list Country" is set to "Australia"
    Then User verify "Custom list State" is set to "Victoria"
    Then User verify "Custom list City" is set to "Melbourne"
    Then User clicks on custom list button
    Then User Clicks on Second Row
    Then User verify "Custom list Country" is set to "Canada"
    Then User verify "Custom list State" is set to "Alberta"
    Then User verify "Custom list City" is set to "Melbourne"

  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: AT_013_Validate Custom Action CRM using Agent Preferences credentials
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_AT_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User Now Navigate to Preferences page
    Then User Verifies Heading "My Preferences"
    Then User Verifies options present for "CrmSelectedInt" dropdown
      | options    |
      | None       |
      | NPIS       |
      | Redtail    |
      | Salesforce |
      | Whitepages |
    Then User Select CRM dropdown as "Redtail"
    Then User on enters valid username as "User_REDTAIL" and password for CRM Preferences and Save
    Then User goes to Home page from My Preferences
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "CRM Owner Lookup" button
    Then User verifies CRM Owner Dialog box
    Then User Verifies the records
    Then User send values "karen" in search box and click on search
    Then User select any one from the record
    Then User clicks "Select" Button
    Then User verifies prefilled Form
      | data-dataitemid                  | Locator Type |
      | Owner_FirstName                  | Input        |
      | Owner_LastName                   | Input        |
      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner_DOB                        | Input        |


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: AT_009_Validate Pint PDF and Custom action print button
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_AT_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is enabled in Other Action
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User verifies the Select Documents to Print Dialog box
    Then User clicks "Back to Application" button on select documents to print page
    Then User clicks on "Print Paperwork" Button
    Then User verifies the Select Documents to Print Dialog box
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies PDF "PrintPdf" is generated


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: AT_014_Validate Custom Action 1035 YP
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_AT_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks Expand form menu
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is not displayed
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" option is not displayed
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" option is not displayed
    Then User Close the Form Menu by clicking on Collapse button
    Then User opens "Page 3" Required for Form "Application222"
    Then User select three value form dropdown
    Then User Clicks Expand form menu
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" option is displayed
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" option is displayed
    Then User Close the Form Menu by clicking on Collapse button
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" value is present and click it
    Then User clicks on Surrendering Company lookup
    Then User verifies number of Records "0 records."
    Then User verifies Dialog box and search "AIG Annuity" in search field
    Then User selects any one value from search records
    Then User clicks "Select" Button
    Then User verifies the page heading as "1035 EXCHANGEROLLOVERTRANSFER eFORM"
    Then User verifies prefilled Form
      | data-dataitemid                  | Locator Type |
      | STATCO                           | Input        |
      | Replacement_Company_Name1        | Input        |
      | Replacement_Company_PhoneNumber1 | Input        |
      | Replacement_Company_LocationID1  | Input        |
      | Replacement_Company_Address11    | Input        |
      | Insurer_OvernightAddress_Zipcode | Input        |
      | Replacement_Company_City1        | Input        |
      | Replacement_Company_Zipcode1     | Input        |
      | Replacement_Company_PhoneNumber1 | Input        |
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" value is present and click it
    Then User verifies the City Zip locationId Phone Fields are blank initialy
    Then User clicks on Surrendering Company lookup
    Then User verifies Dialog box and search "Voya Life" in search field
    Then User selects any one value from search records
    Then User clicks "Select" Button
    Then User verifies the page heading as "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
    Then User verifies prefilled Form
      | data-dataitemid                  | Locator Type |
      | STATCO                           | Input        |
      | Replacement_Company_Name2        | Input        |
      | Replacement_Company_PhoneNumber2 | Input        |
      | Replacement_Company_LocationID2  | Input        |
      | Replacement_Company_Address12    | Input        |
      | Insurer_OvernightAddress_Zipcode | Input        |
      | Replacement_Company_City2        | Input        |
      | Replacement_Company_Zipcode2     | Input        |
      | Replacement_Company_PhoneNumber2 | Input        |
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" value is present and click it
    Then User verifies the City Zip locationId Phone Fields are blank initialy
    Then User clicks on Surrendering Company lookup
    Then User verifies Dialog box and search "Voya" in search field
    Then User selects any one value from search records
    Then User clicks "Select" Button
    Then User verifies the page heading as "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
    Then User verifies prefilled Form
      | data-dataitemid                  | Locator Type |
      | STATCO                           | Input        |
      | Replacement_Company_Name3        | Input        |
      | Replacement_Company_PhoneNumber3 | Input        |
      | Replacement_Company_LocationID3  | Input        |
      | Replacement_Company_Address13    | Input        |
      | Insurer_OvernightAddress_Zipcode | Input        |
      | Replacement_Company_City3        | Input        |
      | Replacement_Company_Zipcode3     | Input        |
      | Replacement_Company_PhoneNumber3 | Input        |
    Then User Clicks Expand form menu
    Then User expands application222 form
    Then User clicks on page3 form of application222
    Then User verifies prefilled Form
      | data-dataitemid           | Locator Type |
      | Replacement_Company_Name1 | Input        |
      | Replacement_Company_Name2 | Input        |
      | Replacement_Company_Name3 | Input        |


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: AT_010_Validate Custom Action Print
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_AT_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is Disabled in Other Action
    Then User clicks on "Print Paperwork" Button
    Then User verifies toast message Alert "Custom action print is not available."


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_026_GIACT Custom Action link on the different wizard as Required Fields on Form
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_026"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call FORM" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid               | Locator Type |
      | GVerifyCode                   | Input        |
      | GAuthenticateVerificationResp | Input        |
      | GAccountRespCode              | Input        |
      | GVerificationResponse         | Input        |
      | gBankName                     | Input        |
      | gBankAccntDate                | Input        |
      | gBankAccntCloseddate          | Input        |
    Then User clicks on Next button on form
    Then User clicks on Next button on form
    Then User check checkbox for GIACT
    Then User clicks on previous button
    Then User clicks on previous button
    Then User Reload the page
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled Form
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | GAccountRespCode     | Input        |
      | gBankName            | Input        |
      | gBankAccntDate       | Input        |
      | gBankAccntLastUpdate | Input        |
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid       | Locator Type |
      | GVerificationResponse | Input        |
      | gBankAccntCloseddate  | Input        |

  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_025_Verify GIACT Custom Action Call can fill required fields on Different Form for Form only App when Triggered
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_025"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call FORM Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid               | Locator Type |
      | GVerifyCode                   | Input        |
      | GAuthenticateVerificationResp | Input        |
      | GAccountRespCode              | Input        |
      | GVerificationResponse         | Input        |
      | gBankName                     | Input        |
      | gBankAccntDate                | Input        |
      | gBankAccntCloseddate          | Input        |
    Then User verifies page change by clicking next arrow
    Then User check checkbox for GIACT
    Then User clicks on previous arrow
    Then User Reload the page
    Then User clicks on ok verifies prefilled data form text fields are filled
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | GAccountRespCode     | Input        |
      | gBankName            | Input        |
      | gBankAccntDate       | Input        |
      | gBankAccntLastUpdate | Input        |
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid       | Locator Type |
      | GVerificationResponse | Input        |
      | gBankAccntCloseddate  | Input        |


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario:TC_002_If parent package Needs Determination includes a required Template to upload docs the child Next Activity Cannot remove the uploaded docs by parents template
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_002"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV Need Determination Form Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "This application has one or more template forms with document tags: [Voided Check]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "95 %"
    Then User Verifies Continue button is disabled
    Then User Clicks on Continue Button and Verifies same page
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User verifies "view" link for "Voided Check" document type after uploading documents
    Then User verifies "Remove" link for "Voided Check" document type after uploading documents
    Then User Closes documents Dialog page
    Then User clicks "Close" button on data entry page
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User verifies electronic Signatures option window show
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      |value |
      |You have declined to use E-Signature. All signatures for this application must be collected manually.|
      |To upload wet signed documents, click on `Other Actions` and select `Documents`.                     |
      |To revise your decision, click on `Other Actions` and select `Unlock Application`.                   |
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Other Actions" button
    Then User clicks on "Documents" in other actions tab
    Then User verifies dialog window "Documents"
    Then User Verifies Uploaded file is "eDelivery Required Voided Check" for "eDelivery Required Voided Check" Document type Appears
    Then User Closes documents Dialog page
    Then User Verifies "Apply" button Enabled
    Then User Clicks Apply Button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "MA Annuity App Autofill Form Only"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "eDelivery Required Voided Check" document type after uploading documents
    Then User Closes documents Dialog page


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_024_Verify GIACT Custom Action Call can fill required fields on Same Form for Form only App when Triggered
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_024"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call FORM Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid               | Locator Type |
      | GVerifyCode                   | Input        |
      | GAuthenticateVerificationResp | Input        |
      | GAccountRespCode              | Input        |
      | GVerificationResponse         | Input        |
      | gBankName                     | Input        |
      | gBankAccntDate                | Input        |
      | gBankAccntCloseddate          | Input        |
    Then User verifies page change by clicking next arrow
    Then User check checkbox for GIACT
    Then User clicks on previous arrow
    Then User Reload the page
    Then User verifies popup and clicks on ok verifies prefilled data form text fields are filled
      | data-dataitemid      | Locator Type |
      | GVerifyCode          | Input        |
      | GAccountRespCode     | Input        |
      | gBankName            | Input        |
      | gBankAccntDate       | Input        |
      | gBankAccntLastUpdate | Input        |
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid       | Locator Type |
      | GVerificationResponse | Input        |
      | gBankAccntCloseddate  | Input        |

  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_019_MVC UI Package with one Optional Forms
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Product with Optional Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Other Actions" button
    Then User Verifies "Manage Optional Forms" is enabled in Other Action
    Then User clicks on "Manage Optional Forms" in other actions tab
    Then User Verifies Heading "Select Forms for Application"
    Then User Verifies Optional Form "One Time Automatic Payment Authorization"
    Then User Verifies Optional Form "Fees and Expense Disclosure Sample"
    Then User Verifies Optional Form "1035 EXCHANGEROLLOVERTRANSFER eFORM" not showing
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User selects Optional Forms "DSB Signers "
    Then User selects Optional Forms "DSB Signers  2"
    Then User clicks on "Update Forms"
    Then User clicks "Other Actions" button
    Then User clicks on "Manage Optional Forms" in other actions tab
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks on "Update Forms"
    Then User clicks "Other Actions" button
    Then User clicks on "Manage Optional Forms" in other actions tab
    Then User selects Optional Forms "Fees and Expense Disclosure Sample"
    Then User clicks on "Update Forms"
    Then User opens "Page 3" Required for Form "Application222"
    Then User select one value form dropdown
    Then User Clicks Expand form menu
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is not displayed
    Then User clicks on page1 form of application222
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 1          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User Clicks Expand form menu
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User close menu form
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
    Then User clicks "Next Page" button 1 times till last page
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Next Page" button 3 times till last page
    Then User clicks initials check box and enters "MR"
    Then User clicks "Ok" on Confirmation Dialog
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 4 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Re-Sign" button on Signature Tab
    Then User clicks "Cancel" on Confirmation Dialog
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AUTOUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario:TC_003_If parent package Needs Determination does not include a required Template then the child Next Activity Can remove the uploaded docs by parent activity
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_003"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV Need Determination Without Template Form Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" link for "Illustration" document type after uploading documents
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type Appears
    Then User Closes Documents window
    Then User Verifies "Apply" button Enabled
    Then User Again Clicks on Continue
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "MA Annuity App Autofill Form Only"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User verifies "view" link for "Illustration" document type after uploading documents
    Then User verifies "Remove" button "does not exist" for uploaded document
    Then User Closes Documents window


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_001_Verify Autofill dropdown is not cutting off in Multi Activity forms on IE 11 Browser
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Multiple Activities" Tab
    Then User selects Jurisdiction "Florida"
    Then User selects Given Product "KOC Multiple Activity USA"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User selects "03" in parties activity dropdown
    Then User clicks on Expand button to open form menu and verify "3" pages for Party demographic Data & "3" pages for Party Medical data
    Then User Close the Form Menu by clicking on Collapse button
    Then User enter Last Name "Arun1", First name "Paliwal1", Street Address"Ajmer Road1", City "Jaipur1", State "AL", Zip Code "11111-1111" for Party1
    Then User enter Council Number "11111" on same page. Make sure Red Bubble icon removed on page
    Then User clicks on Next button
    Then User enter Height-Feet "5 ft", height- Inches "5 in", Weight-lbs "58", Total Insurance in Force "70,000"
    Then User enter Primary Care Physician or Health Facility "Dr.Mate"
    Then User clicks on Next button
    Then User enter Last Name "Arun2", First name "Paliwal2", Street Address"Ajmer Road2", City "Jaipur2", State "AK", Zip Code "22222-2222" for Party2
    Then User clicks on Next button
    Then User clicks on Next button
    Then User enter Last Name "Arun3", First name "Paliwal3", Street Address"Ajmer Road3", City "Jaipur3", State "AK", Zip Code "33333-3333" for Party3
    Then User clicks on Next button
    Then User Open Form menu and click on "Multiple Activities" Wizard
    Then User Verifies options present for "" dropdown
      | options    |
      | Quote       |
      | Account Opening       |
      | Application    |
      | Enrollment |
      | Enrollment Master Agreement |
    Then User selects "Application" Type in Dropdown
    Then User click Add activity button
    Then User verifies "Create New Application" window showing
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "KOC 903 Graded Death Benefit Whole Life USA"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then Verifies Multiple Activities tab will Have new Table with recently added application
    Then User verifies New Application Added on Multiple Activities page
    Then User clicks on Create Button on Top it get changed to "Update"
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User verifies Linked child activity is appear & verify the name
    Then User verifies the Last Name, First name Fields are blank initialy
    Then User clicks on custom button Applicant data Auto fill
    Then User verifies party List show names added on demographic party pages
    Then User selects Party 1 name from list
    Then User verifies Last name, First name, Street Address, City, State, Zip Code fields get autofilled for Party1
    Then User verifies Council Number fields get autofilled for Party1
    Then User clicks on Next buttons
    Then USer clicks on Insured Data Auto Fill button
    Then User selects Party 2 name from list
    Then User verifies Last name, First name, Street Address, City, State, Zip Code field get autofilled for Party2
    Then User clicks on Next buttons
    Then User clicks Owner Auto Fill in Owner Section
    Then User selects Party 3 name from list
    Then User verifies Owner First name, last Name is updated with Party3 data, and Street Address, City, State, Zipcode is same as for Party3


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_015_Verify Forms Visible After Locking
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Red required bubble form Only App" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User verifies page change by clicking next arrow
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User verifies page change by clicking next arrow
    Then User sets values for prefilled form
      | Field                  | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox |            | PlanType_NonQualified | div          |
      | Contact number         | 1234567890 | Contract_Number       | Input        |
    Then User verifies page change by clicking next arrow
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User verifies page change by clicking next arrow
    Then User Verifies Continue button Enabled
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Verifies the Unlock Button is Displayed
    Then User Clicks Back to Application
    Then User verifies form is read only mode only
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User clicks "Print Selected Documents" button
    Then User verifies PDF "PrintPdf" is generated
    Then User clicks button Back to app
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User Verifies Heading "Unlock Application"
    Then User Clicks on Unlock Application
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "agent" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User clicks initials check box and enters "MR"
    Then User clicks "Ok" on Confirmation Dialog
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AUTOUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "Ok" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies the Select Documents to Print Dialog box
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | OwnerFN    |
      | OwnerLN    |
      | 34545      |
      | 11/12/2000 |
    Then User clicks button Back to app
    Then User clicks "Continue" button
    Then User Clicks on "Yes" on confirmation dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User Clicks "Close pending review request" Button
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies the Select Documents to Print Dialog box
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | OwnerFN    |
      | OwnerLN    |
      | 34545      |
      | 11/12/2000 |


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario: TC_017_Verify Edit icon when application is unlocked
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User rename the application on data entry page
    Then User verifies "AppName" created successfully
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User Clicks on Unlock Application
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AUTOUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User Clicks "Close pending review request" Button
    Then User clicks on lock icon
    Then User verifies Activity Summary Dialog box is displayed
    Then User Verifies Unlock is not Visible


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario:TC_004_Custom Action link on the same form as Required Fields on Form
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call Form From Same/Different Form" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User verifies toast message "Data Entry has met the requirements." disappears
    Then User verifies prefilled form
      | Field          | Value          | data-dataitemid          | Locator Type | Validation Error |
      | First Name     | A              | ANNUITANT_FNAME          | Input        |                  |
      | Last Name      | BIGORNIA       | ANNUITANT_LNAME          | Input        |                  |
      | SSN            | 666-56-7633    | ANNUITANT_SSN            | Input        |                  |
      | Age            | 80             | ANNUITANT_AGE            | Input        |                  |
      | City           | CHRISTIANSBURG | ANNUITANT_CITYADDRESS    | Input        |                  |
      | ZIP            | 24073          | ANNUITANT_ZIPCODEADDRESS | Input        |                  |
      | Driver License | B66020426      | ANNUITANT_LICENSE_NUMBER | Input        |                  |
    Then User verifies prefilled form
      | Field           | Value | data-dataitemid      | Locator Type | Validation Error |
      | Order Number    |       | LN_OrderNumber       | Input        |                  |
      | Result Codes    |       | LNRisk_ResultCode    | Input        |                  |
      | Risk Score      |       | LNRisk_Score         | Input        |                  |
      | Result Messages |       | LNRisk_ResultMessage | Input        |                  |
    Then User clicks on "Click Me! To Get Risk Classifier Score" link
    Then User verifies "Back Office Action is being performed." popup box appeared
    Then User verifies pop up message "A validation is being performed."
    Then User clicks on Ok button
    Then User verifies prefilled form
      | Field         | Value | data-dataitemid      | Locator Type | Validation Error |
      | Result Codes  | ER    | LNRisk_ResultCode    | Input        |                  |
      | Risk Score    | 502   | LNRisk_Score         | Input        |                  |
    Then User verifies prefilled data form input text fields
      | data-dataitemid      | Locator Type |
      | LN_OrderNumber       | Input        |
      | LNRisk_ResultMessage | Input        |


  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario:TC_005_Custom Action link triggered by Rule on the same form as Required Fields on Form
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call Form From Same/Different Form" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User verifies toast message "Data Entry has met the requirements." disappears
    Then User verifies prefilled form
      | Field          | Value          | data-dataitemid          | Locator Type | Validation Error |
      | First Name     | A              | ANNUITANT_FNAME          | Input        |                  |
      | Last Name      | BIGORNIA       | ANNUITANT_LNAME          | Input        |                  |
      | SSN            | 666-56-7633    | ANNUITANT_SSN            | Input        |                  |
      | Age            | 80             | ANNUITANT_AGE            | Input        |                  |
      | City           | CHRISTIANSBURG | ANNUITANT_CITYADDRESS    | Input        |                  |
      | ZIP            | 24073          | ANNUITANT_ZIPCODEADDRESS | Input        |                  |
      | Driver License | B66020426      | ANNUITANT_LICENSE_NUMBER | Input        |                  |
    Then User verifies prefilled form
      | Field           | Value | data-dataitemid      | Locator Type | Validation Error |
      | Order Number    |       | LN_OrderNumber       | Input        |                  |
      | Result Codes    |       | LNRisk_ResultCode    | Input        |                  |
      | Risk Score      |       | LNRisk_Score         | Input        |                  |
      | Result Messages |       | LNRisk_ResultMessage | Input        |                  |
    Then User clicks on "Click Me to Trigger Lexis Nexis Risk Classifier" link
    Then User verifies "Back Office Action is being performed." popup box appeared
    Then User verifies pop up message "A validation is being performed."
    Then User clicks on Ok button
    Then User verifies prefilled form
      | Field        | Value | data-dataitemid   | Locator Type | Validation Error |
      | Result Codes | ER    | LNRisk_ResultCode | Input        |                  |
      | Risk Score   | 502   | LNRisk_Score      | Input        |                  |
    Then User verifies prefilled data form input text fields
      | data-dataitemid      | Locator Type |
      | LN_OrderNumber       | Input        |
      | LNRisk_ResultMessage | Input        |

  @RegressionTest @RegActivityMasterHP1MVC @RegressionTestHP1
  Scenario:TC_007_Custom Action link triggered by Rule on the different form as Required Fields on Form
    Given User is on FireLight login page for TestCase "RegActivityMasterHP1MVC_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 LN Custom Action Call Form Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User verifies toast message "Data Entry has met the requirements." disappears
    Then User verifies prefilled data Form input text fields should be blank
      | data-dataitemid      | Locator Type |
      | LN_OrderNumber       | Input        |
      | LNRisk_ResultCode    | Input        |
      | LNRisk_Score         | Input        |
      | LNRisk_ResultMessage | Textarea     |
    Then User clicks "Next Page" button 1 times till last page
    Then User selects "Click Me" checkbox
    Then User Reload the page
    Then User verifies confirmation popup appears and validate the meassage "A validation is being performed."
    Then User Refresh the Page
    Then User clicks on Ok button
    Then User gets the field value for field
    Then User verifies prefilled data form input text fields
      | data-dataitemid      | Locator Type |
      | LN_OrderNumber       | Input        |
      | LNRisk_ResultCode    | Input        |
      | LNRisk_Score         | Input        |
      | LNRisk_ResultMessage | Textarea     |
