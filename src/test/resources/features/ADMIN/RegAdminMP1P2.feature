Feature: FireLight_Regression_Admin_P1P2_TestCases

  This feature will verify FireLight Complete Application Regression Tests of Admin Medium P1P2

  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_001-Verify Forms Only Mode when Forms Only Application is created
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_001"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AutoUser1_Fladist" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Need Determination FL024" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "87 %"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid | Locator Type |
      | First Name | FName | Owner_FirstName | Input        |
      | Last Name  | LNAme | Owner_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User should be on page "List of Required Signers for AppName"
    Then User Clicks Back to Application
    Then User verifies application is display in Locked mode
    Then User Verifies backward arrow for navigation is shown
    Then User verifies page change by clicking next arrow
    Then User clicks "Other Actions" button
    Then User verify option "Rename/Summary" is "shown" in other actions menu
    Then User clicks on "Rename/Summary" in other actions tab
    Then User clicks on close Activity Summary dialog box
    Then User clicks "Other Actions" button
    Then User verify option "Display/Print PDF" is "shown" in other actions menu
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User clicks "Back to Application" button on select documents to print page
    Then User clicks "Other Actions" button
    Then User verify option "History" is "shown" in other actions menu
    Then User clicks on "History" in other actions tab
    Then User clicks on close history dialog box
    Then User clicks "Other Actions" button
    Then User verify option "Documents" is "shown" in other actions menu
    Then User clicks on "Documents" in other actions tab
    Then User clicks on close Document dialog box
    Then User clicks "Other Actions" button
    Then User verify option "Transfer" is "shown" in other actions menu
    Then User clicks on "Transfer" in other actions tab
    Then User clicks "X" button on transfer activity page
    Then User verify option "Share" is "shown" in other actions menu
    Then User verify option "Unlock Application" is "shown" in other actions menu
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User clicks on "Cancel" link
    Then User clicks "Continue" button
    Then User selects "Agent : AUTOUser1D" button on Signature Tab
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "Ok" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User Clicks Back to Application
    Then User verifies toast message "Finished 1 of 3 Steps. Client signatures are needed."
    Then User clicks "Continue" button
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Re-Sign" button on Signature Tab
    Then User clicks "ok" on Confirmation Dialog
    Then User selects "owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User Clicks Back to Application
    Then User clicks "Continue" button
    Then User selects "Agent : AUTOUser1D" button on Signature Tab
    Then User selects "Sign Now" button on Signature Tab
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User Verifies "Apply" button Enabled

  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_002_Verify Forms and Wiz Mode when Forms and Wiz Application is created
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_002"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "DSB New Account Opening" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User Clicks Back to Application
    Then User verifies application is display in Locked mode
    Then User verifies toast message "Finished 1 of 3 Steps. Agent and Client signatures are needed."
    Then User clicks "Other Actions" button
    Then User verify option "Rename/Summary" is "shown" in other actions menu
    Then User clicks on "Rename/Summary" in other actions tab
    Then User clicks "Close" button
    Then User clicks "Other Actions" button
    Then User verify option "Display/Print PDF" is "shown" in other actions menu
    Then User clicks on "Display/Print PDF" in other actions tab
    Then User clicks "Close" button
    Then User clicks "Other Actions" button
    Then User verify option "History" is "shown" in other actions menu
    Then User clicks on "History" in other actions tab
    Then User clicks on close history dialog box
    Then User clicks "Other Actions" button
    Then User verify option "Documents" is "shown" in other actions menu
    Then User clicks on "Documents" in other actions tab
    Then User clicks "Close" button
    Then User clicks "Other Actions" button
    Then User verify option "Transfer" is "shown" in other actions menu
    Then User clicks on "Transfer" in other actions tab
    Then User clicks "Close" button
    Then User opens Menu "Other Actions  ->Unlock"
    Then User clicks on "Cancel" link
    Then User clicks "Continue" button
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "Ok" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User Clicks Back to Application
    Then User verifies toast message "Finished 1 of 3 Steps. Client signatures are needed."
    Then User clicks "Continue" button
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Re-Sign" button on Signature Tab
    Then User clicks "ok" on Confirmation Dialog
    Then User selects "owner" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "TestOwner" City as "TestCity" Then perform Signature and click I Consent
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message "Finished 2 of 3 Steps. Please Continue."
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Account opening is finished."

  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_003_Verify  Rule Set name  displaying on Rules Window
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Rule Sets" Tab
    Then User Verifies Heading "Rule Sets - FL Access Carrier - Automation 3"
    Then User Enters "FL024 Needs Determination Linked to Forms Only App" in Text Field "Search Rule Set"
    Then User Click on Search icon
    Then User select rule set from list
    Then User select rules window
    Then User verifies rule set name "FL024 Needs Determination Linked to Forms Only App" is displayed

  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_004_Products Page UI changes
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User clicks on product "1111" under Product List
    Then User selects "Prospectus" from "ProductLink" dropdown
    Then User Enters "google.com" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User selects "Buyer's Guide" from "ProductLink" dropdown
    Then User Enters "yahoo.com" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User selects "" from "ProductLink" dropdown
    Then User Enters "yahoo.com" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User Verifies product error message "Please select link name."
    Then User selects "Prospectus" from "ProductLink" dropdown
    Then User Enters "" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User Verifies product error message "Please enter URL value."
    Then User selects "" from "ProductLink" dropdown
    Then User Enters "" in Text Field "ProductLinkURL"
    Then User clicks "Save" button


  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_005_Verify Package History after rule set replacement
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Packages" Tab
    Then User click on "Replace Form/Wizard/Rule Set in Package" link on Package page
    Then User verifies "Form/Wizard in Package" is displayed
    Then User verifies "Rule Set in Package" is displayed
    Then User clicks on "Rule Set in Package" tab on Package page
    Then User Enters "RV Test rule set 1" into the Text field of rule set to replace
    Then User "select" checkbox "RVTestPackage1"
    Then User "select" checkbox "RVTestPackage2"
    Then User Enters "RV Test rule set 2" into the Text field of replace with rule set
    Then User click "Replace Rule Set" button
    Then User Verifies toast message
    Then User click "Yes" button
    Then User Verifies message as "Rule Set replaced in package(s)."
    Then User Reload the page
    Then User Enters "RV Test Package 1" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User click on "Package History" link on Package page
    Then User verify "RV Test rule set 1 rule set removed via Replace Tool" is displayed
    Then User verify "RV Test rule set 2 rule set added via Replace Tool" is displayed
    Then User Enters "RV Test Package 2" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User click on "Package History" link on Package page
    Then User verify "RV Test rule set 1 rule set removed via Replace Tool" is displayed
    Then User verify "RV Test rule set 2 rule set added via Replace Tool" is displayed
    Then User click "Designer" from Menu options
    Then User click on "Form Designer" link on Package page
    Then User selects "RV Test Form 1 | RV Test Form 1 | " Form Designer list
    Then User verify "RV Test rule set 2" is present in Default Primary Rule Set
    Then User click on "View in Library" link on Package page
    Then User Enters "RV Test Form 1" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User clicks on "Form History" tab on Package page
    Then User verifies "Primary Rule Set updated via Replace tool" is display
    Then User verifies "RV Test rule set 1" is display
    Then User verifies "RV Test rule set 2" is display
    Then User click "Designer" from Menu options
    Then User click on "Form Designer" link on Package page
    Then User selects "RV Test Form 2 | RV Test Form 2 | " Form Designer list
    Then User verify "" is present in Default Primary Rule Set
    Then User click "Designer" from Menu options
    Then User click on "Wizard Designer" link on Package page
    Then User Selects "RV test wizard 1" in Wizard
    Then User verify "RV Test rule set 2" is present in Default Primary Rule Set in Wizard
    Then User Clicks on Page Option "View in Library"
    Then User Enters "RV test wizard 1" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "RV test wizard 1"
    Then User clicks on "Wizard History" tab on Package page
    Then User verifies "Primary Rule Set updated via Replace tool" is display
    Then User verifies "RV Test rule set 1" is display
    Then User verifies "RV Test rule set 2" is display
    Then User click "Designer" from Menu options
    Then User click on "Wizard Designer" link on Package page
    Then User Selects "RV test wizard 2" in Wizard
    Then User verify "" is present in Default Primary Rule Set in Wizard
    Then User Clicks on toolbar "Product Config"
    Then User click on "Packages" link on Package page
    Then User click on "Replace Form/Wizard/Rule Set in Package" link on Package page
    Then User clicks on "Rule Set in Package" tab on Package page
    Then User Enters "RV Test rule set 2" into the Text field of rule set to replace
    Then User "select" checkbox "RV Test Package01"
    Then User "select" checkbox "RV Test Package02"
    Then User Enters "RV Test rule set 1" into the Text field of replace with rule set
    Then User click "Replace Rule Set" button
    Then User click "Yes" button
    Then User Reload the page


  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_006_Verify Primary Rule set on Package window
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Packages" Tab
    Then User click on "Replace Form/Wizard/Rule Set in Package" link on Package page
    Then User verifies "Form/Wizard in Package" is displayed
    Then User verifies "Rule Set in Package" is displayed
    Then User clicks on "Form/Wizard in Package" tab on Package page
    Then User Enter "RV test wizard 1 | RV test wizard 1 | " into the Text field of rule set to replace
    Then User "select" checkbox "RV Test Package 1"
    Then User "select" checkbox "RV Test Package 2"
    Then User Enter "RV test wizard 3 | RV test wizard 3 | " into the Text field of replace with rule set
    Then User click "Replace Form/Wizard" button
    Then User Verifies toast message for replace form and wizard
    Then User click "ok" button
    Then User Reload the page
    Then User Enters "RV Test Package 1" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User click on "Package History" link on Package page
    Then User verify "RV test wizard 1 form removed" is displayed
    Then User verify "RV test wizard 3 form added" is displayed
    Then User Enters "RV Test Package 2" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User click on "Package History" link on Package page
    Then User verify "RV test wizard 1 form removed" is displayed
    Then User verify "RV test wizard 3 form added" is displayed
    Then User Clicks on toolbar "Product Config"
    Then User click on "Packages" link on Package page
    Then User click on "Replace Form/Wizard/Rule Set in Package" link on Package page
    Then User clicks on "Form/Wizard in Package" tab on Package page
    Then User Enter "RV test wizard 3 | RV test wizard 3 | " into the Text field of rule set to replace
    Then User "select" checkbox "RV Test Package 01"
    Then User "select" checkbox "RV Test Package 02"
    Then User Enter "RV test wizard 1 | RV test wizard 1 | " into the Text field of replace with rule set
    Then User click "Replace Form/Wizard" button
    Then User click "ok" button
    Then User Reload the page

  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_007_Verify Primary Rule set on Package window
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Packages" Tab
    Then User click on "Replace Form/Wizard/Rule Set in Package" link on Package page
    Then User verifies "Form/Wizard in Package" is displayed
    Then User verifies "Rule Set in Package" is displayed
    Then User clicks on "Form/Wizard in Package" tab on Package page
    Then User Enter "RV Test Form 1 | RV Test Form 1 | " into the Text field of rule set to replace
    Then User "select" checkbox "RVTestPackage01"
    Then User "select" checkbox "RVTestPackage02"
    Then User Enter "RV Test Form 3 | RV Test Form 3 | " into the Text field of replace with rule set
    Then User click "Replace Form/Wizard" button
    Then User Verifies toast message for replace form and wizard
    Then User click "ok" button
    Then User Reload the page
    Then User Enters "RV Test Package 1" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User click on "Package History" link on Package page
    Then User verify "RV test wizard 1 form removed" is displayed
    Then User verify "RV test wizard 3 form added" is displayed
    Then User Enters "RV Test Package 2" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User click on "Package History" link on Package page
    Then User verify "RV test wizard 1 form removed" is displayed
    Then User verify "RV test wizard 3 form added" is displayed
    Then User Clicks on toolbar "Product Config"
    Then User click on "Packages" link on Package page
    Then User click on "Replace Form/Wizard/Rule Set in Package" link on Package page
    Then User clicks on "Form/Wizard in Package" tab on Package page
    Then User Enter "RV Test Form 3 | RV Test Form 3 | " into the Text field of rule set to replace
    Then User "select" checkbox "RV Test Package 01"
    Then User "select" checkbox "RV Test Package 02"
    Then User Enter "RV Test Form 1 | RV Test Form 1 | " into the Text field of replace with rule set
    Then User click "Replace Form/Wizard" button
    Then User click "ok" button
    Then User Reload the page


  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_008_Creating Sales Agreement
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_008"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Sales Agreements" Tab
    Then User Selects "Product for Script" in Sales Agreement Table
    Then User verifies Product for Script status should be display "False"
    Then User Select "FL Access Carrier - Automation" in Selling Org Tab
    Then User verifies selling Org "FL Access Carrier - Automation" not contain star at the end
    Then User "Select" "All" state
    Then User Selects "FL024_Auto Pkg_DO NOT ALTER" in Package
    Then User Clicks on "btnRight" in admin APP
    Then User clicks "Save Sales Agreement" button
    Then User verifies Product for Script status should be display "True"
    Then User verifies selling Org "FL Access Carrier - Automation*" contain star at the end
    Then User Select "FL Access Brokerage - Automation" in Selling Org Tab
    Then User "Select" "All" state
    Then User Selects "FL024_Auto Pkg_DO NOT ALTER" in Package
    Then User clicks "Save Sales Agreement" button
    Then User verifies Product for Script status should be display "True"
    Then User verifies selling Org "FL Access Brokerage - Automation*" contain star at the end
    Then User Verifies Sales Agreement saved
    Then User Selects "Product for Script" in Sales Agreement Table
    Then User Click on Page Option "X"
    Then User Verify Alert Message "Are you sure you want to delete Product for Script Sales Agreement?"
    Then User Clicks on yes Confirmation dialog
    Then User verifies Product for Script status should be display "False"
    Then User verifies selling Org "FL Access Brokerage - Automation" not contain star at the end
    Then User Select "FL Access Carrier - Automation" in Selling Org Tab
    Then User Selects "Product for Script" in Sales Agreement Table
    Then User Click on Page Option "X"
    Then User Clicks on yes Confirmation dialog
    Then User verifies Product for Script status should be display "False"
    Then User verifies selling Org "FL Access Carrier - Automation" not contain star at the end


  @RegressionAdmin  @RegAdminMP1P2
  Scenario: TC_009_Verify existing functionality to delete Sales Agreement
    Given User is on FireLight Admin login page for TestCase "RegAdminMP1P2_TC_009"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Sales Agreements" Tab
    Then User Selects "Auto Multi SA" in Sales Agreement Table
    Then User verifies Product for Script status should be display "False"
    Then User Select "FL Access Carrier - Automation" in Selling Org Tab
    Then User verifies selling Org "FL Access Carrier - Automation" not contain star at the end
    Then User "Select" "All" state
    Then User Selects "FL024_Auto Pkg_DO NOT ALTER" in Package
    Then User Clicks on "btnRight" in admin APP
    Then User clicks "Save Sales Agreement" button
    Then User Verifies Sales Agreement saved
    Then User verifies Product for Script status should be display "True"
    Then User verifies selling Org "FL Access Carrier - Automation*" contain star at the end
    Then User click on Manage Sales Agreement button in Admin App
    Then User Verifies Default option is "(New)" for Saved Batches
    Then User clicks on Rename link
    Then User verifies "Cancel" should be display
    Then User verifies "Copy Agreement" should be display
    Then User verifies "Delete Agreement" should be display
    Then User verifies "Save Batch" should be display
    Then User Select Selling Org
    Then User click on save batch button
    Then User Verifies error message of saved batch
    Then User Enters "Save Batch 1" in TextBox "txtBatch"
    Then User Verifies "FL Access Carrier - Automation*" selling orgs should be selected
    Then User click on save batch button
    Then User clicks on copy batch
    Then User Verify Copy Alert Message
    Then User clicks on copy confirmation button
    Then User Select "FL Access Carrier - Automation" in Selling Org Tab
    Then User verifies Product for Script status should be display "True"
    Then User verifies selling Org "FL Access Carrier - Automation*" contain star at the end
    Then User click on Manage Sales Agreement button in Admin App
    Then User selects value "Save Batch 1" for field "ddlBatchList"
    Then User Reload the page
    Then User Selects "Auto Multi SA" in Sales Agreement Table
    Then User Select "FL Access Carrier - Automation" in Selling Org Tab
    Then User click on Manage Sales Agreement button in Admin App
    Then User selects value "Save Batch 1" for field "ddlBatchList"
    Then User clicks on copy batch
    Then User clicks on copy confirmation button
    Then User click on Manage Sales Agreement button in Admin App
    Then User selects value "Save Batch 1" for field "ddlBatchList"
    Then User clicks on delete batch from manage sales agreement
    Then User clicks on delete agreement confirmation button
    Then User Reload the page
    Then User Selects "Auto Multi SA" in Sales Agreement Table
    Then User Clicks on Sales Agreement Page Option "X"
    Then User Verify Alert Message "Are you sure you want to delete Auto Multi SA Sales Agreement?"
    Then User Clicks on yes Confirmation dialog
    Then User Reload the page
    Then User Selects "Auto Multi SA" in Sales Agreement Table
    Then User Verifies Manage Sales Agreement is disabled
    Then User verifies Product for Script status should be display "False"
    Then User Select "FL Access Carrier - Automation" in Selling Org Tab
    Then User verifies selling Org "FL Access Carrier - Automation" not contain star at the end
