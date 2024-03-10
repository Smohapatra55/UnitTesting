Feature:  FireLight_Admin_Tests

  This feature will verify FireLight Admin Tests

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_004_Verify new field added on All activity pages
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_004"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Selects "RV CUSIP APP PRODUCT 1" in Product Table
    Then User verifies "SelectedProduct_CUSPID" TextBox has Prefilled Value "RVPD001"
    Then User Clicks on toolbar "Product Config"
    Then User click on "Activities" link on Package page
    Then User selects "Application" from list Activities
    Then User verifies "HideProductCUSIPIDs" TextBox has Prefilled Value "RVPD001,RVPD007"
    Then User Clicks on toolbar "Product Config"
    Then User click on "Products" link on Package page
    Then User Selects "RV CUSIP ILLUSTRATION PRODUCT 2" in Product Table
    Then User verifies "SelectedProduct_CUSPID" TextBox has Prefilled Value "RVPD006"
    Then User Clicks on toolbar "Product Config"
    Then User click on "Activities" link on Package page
    Then User selects "Illustration" from list Activities
    Then User verifies "HideProductCUSIPIDs" TextBox has Prefilled Value "RVPD006"
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User verify "RV CUSIP APP PRODUCT 1" product not showing
    Then User clicks on home menu
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Alabama"
    Then User verify "RV CUSIP ILLUSTRATION PRODUCT 2" product not showing

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_007_Verify the Hide CUSIP ID functionality for Carrier/Distributor
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_007"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Annuity"
    Then User verify "RV CUSIP APP PRODUCT 2" product not showing

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_002_Verify user is able add a new product
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Clicks on Add New Product Link
    Then User Enters "" in Text Field "Product Name"
    Then User clicks "Save Product Config" button
    Then User Verifies error message for Product name "The product name cannot be blank."
    Then User Enters "Selenium_Delete_Test" in Text Field "Product Name"
    Then User Selects "" option in "ProductTypeFilter" Dropdown
    Then User clicks "Save Product Config" button
    Then User Verifies error message "The product type filter cannot be blank."
    Then User Selects "1031 Exchanges" option in "ProductTypeFilter" Dropdown
    Then User "uncheck" checkbox "Any State"
    Then User Verifies checkbox "Any State" is "unchecked"
    Then User "select" checkbox "All State"
    Then User clicks "Save" button
    Then User Clicks and Deletes product "Selenium_Delete_Test"
    Then User verifies dialog window "Delete Confirmation"
    Then User Clicks on Button "Yes"
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_005_Verify the Hide CUSIP ID functionality for Account Opening Activity
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_005"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV CUSIP ACCOUNT OPENING 1"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field               | Value   | data-dataitemid                 | Locator Type |
      | Next Activity State | 1       | FLI_NEXT_ACTIVITY_JURISDICTION  | Input        |
      | Product CuspID      | RVPD001 | FLI_NEXT_ACTIVITY_PRODUCT_CUSIP | Input        |
      | Activity Acord Type | 103     | FLI_NEXT_ACTIVITY_ACORDTYPE     | Input        |
    Then User Clicks on Continue button
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies "Account opening is finished." dialog message
    Then User Verifies "Apply" button Enabled
    Then User clicks on "APPLY" link of data entry met Toast popup
    Then Verify User directly land on "New Application - RV CUSIP APP PRODUCT 1" Application
    Then User verifies Page heading "RV test wizard 1" with form name "Custom list" for data entry flow
    Then User Verifies data entry percentage is "100%"
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV CUSIP ACCOUNT OPENING 1"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User Clicks on Continue button
    Then User clicks "ok" on Confirmation Dialog
    Then User clicks on "APPLY" link of data entry met Toast popup
    Then User Select Application from activity selection menu
    Then User verifies "Create New Application" window showing

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_006_Verify the Hide CUSIP ID functionality for Illustration Activity
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_006"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV CUSIP ILLUSTRATION PRODUCT 1"
    Then User clicks "Application" button
    Then User Verifies data entry percentage is "100%"
    Then User verifies "New Illustration - RV CUSIP ILLUSTRATION PRODUCT 1" created successfully
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User verify "RV CUSIP ILLUSTRATION PRODUCT 2" product not showing

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_001_Verify Copy Group Functionality on Admin Groups to create new groups
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "Hex_FLB01"
    Then User clicks "Copy Group" button
    Then User verifies dialog window "Select Group Settings to Copy"
    Then User Verifies Group role name is disabled
    Then User Enters "DuplicateZDBhati" in TextBox "txtGrpName"
    Then User Enters "Hex_RoleFLB2" in TextBox "ExistingGroupsModel_ExternalRoleCodesString"
    Then User "select" checkbox "Include Activity Access"
    Then User "select" checkbox "Include Product Access"
    Then User "select" checkbox "Include Case Access"
    Then User Verifies checkbox "Include Activity Access" is "selected"
    Then User Verifies checkbox "Include Product Access" is "selected"
    Then User Verifies checkbox "Include Case Access" is "selected"
    Then User clicks on save button
    Then User verifies "SelectedUserGroup_Name" TextBox has Prefilled Value "DuplicateZDBhati"
    Then User verifies "ExternalRoleCodesString" TextBox has Prefilled Value "Hex_RoleFLB2"
    Then User clicks on "App" tab
    Then User "select" checkbox "FirmID Visibility"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User "select" checkbox "Enable User Share"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Case Access" button
    Then User "select" checkbox "Case All"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "DeepHex2_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FirmManagement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User Clicks and Deletes product "DuplicateZDBhati"
    Then User verifies dialog window "Delete Confirmation"
    Then User Clicks on Button "Yes"
    Then User verifies "SelectedUserGroup_Name" TextBox has "DuplicateZDBhati" is not displayed under name box
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_003_Verify_on Wizard designer page option Set Page Order is renamed as Set Page Workflow
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Wizard Library" Tab
    Then User Enters "Section Break Wiz" in Text Field "Section Search"
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "Section Break Wiz"
    Then User Clicks on Wizard Designer Link
    Then User Verifies Default option is "Section Break Wiz" for Wizard Dropdown
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Verifies Section Break "Client Data"
    Then User Verifies "Add Section Break" Button in Admin Page
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1255"
    Then User Clicks on "OK" Button in Admin Page
    Then User clicks on save wizard button
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1256"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Error Message "Section breaks cannot be next to each other"
    Then User Double Clicks on "Section Break 1256"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Clicks on "Remove Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1256" Does not Exist
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Verifies Default option is "Section Break Wiz" for Wizard Dropdown
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Double Clicks on "Section Break 1255"
    Then User Enters "AccelQ SB" in TextBox "titletextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Section Break "AccelQ SB"
    Then User Clicks on "OK" Button in Admin Page
    Then User clicks on save wizard button
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Verifies Section Break "AccelQ SB"
    Then User Double Clicks on "AccelQ SB"
    Then User Clicks on "Remove Section Break" Button in Admin Page
    Then User Verifies Section Break "AccelQ SB" Does not Exist
    Then User Clicks on "OK" Button in Admin Page
    Then User clicks on save wizard button
    Then User Clicks on Page Option "Set Page Workflow"
    Then User MouseHover to Info Icon
    Then User Verifies Icon Heading "Section Breaks"
    Then User Verifies Following Elements
      | Section Break can be placed between two pages or last in the order.      |
      | Double click on Section Break icon to edit the Text and Name values.     |
      | Double click on Section Break to remove it from page workflow.           |
      | Maximum limit is 75 characters for Section Break Text and Name fields.   |
      | Duplicate Section Break Text and Name within the wizard are not allowed. |
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1257"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1258"

  @RegAdminHP1 @RegressionAdmin
  Scenario: TC_017_Verify Copy Group Functionality on Admin Groups to create new groups with selecting all settings
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User verifies "btnCopyGroup" is "not disabled" field
    Then User clicks "Create New " button
    Then User verifies "btnCopyGroup" is "disabled" field
    Then User Enters "BhatiFirm" in TextBox "SelectedUserGroup_Name"
    Then User Enters "DummyTestRC" in TextBox "SelectedUserGroup_IllustServicesRole"
    Then User selects value "Orange (Firm2)" for field "ddlFirmList"
    Then User Enters "DCopyTest" in TextBox "ExternalRoleCodesString"
    Then User clicks on save button
    Then User verifies "BhatiFirm" is "displayed" on groups page
    Then User clicks "App" button
    Then User "select" checkbox "Allow Passcode Email"
    Then User "select" checkbox "Auto Email Passcode"
    Then User "select" checkbox "Enable Decline E Sign Email"
    Then User "select" checkbox "Enable Multi-Life"
    Then User "select" checkbox "Enable Multiple Open Activities"
    Then User "select" checkbox "Enable Tele-sign"
    Then User "select" checkbox "Enabled Tele-sign Download Forms"
    Then User "select" checkbox "Enable Tele-sign Email Link"
    Then User "select" checkbox "Enabled-Sign Generate link"
    Then User "select" checkbox "Enable Custom Print Override"
    Then User "select" checkbox "Enable Print NIGO"
    Then User "select" checkbox "Enable APPS"
    Then User "select" checkbox "Enable ExamOne"
    Then User "select" checkbox "Enable Auto Submit"
    Then User "select" checkbox "Enable HTTP Redirect on Submit"
    Then User Enters "https://www.gexure.com" in TextBox "HTTPRedirectURL"
    Then User "select" checkbox "Enable Distributor Testing View"
    Then User "select" checkbox "Enable Override Date"
    Then User "select" checkbox "Enable Test Mode"
    Then User "select" checkbox "Enable CRM Preferences"
    Then User "select" checkbox "Enable Training"
    Then User "select" checkbox "Enable All activities user share"
    Then User "select" checkbox "Enable obfuscation"
    Then User clicks on save button
    Then User clicks "Admin" button
    Then User verifies "Firm2_DCopyTest" is "displayed" on groups page
    Then User "select" checkbox "Enable View Fees"
    Then User "select" checkbox "Enable view Utilities"
    Then User "select" checkbox "Enable Read Only User Admin Access"
    Then User "select" checkbox "Enable Common Tags Utilities"
    Then User "select" checkbox "Enable view Utilities"
    Then User "select" checkbox "Enable Firm Management"
    Then User clicks on save button
    Then User clicks "Review Queue" button
    Then User "select" checkbox "Enable manual Queue move"
    Then User "select" checkbox "Enable Assign reviewer button"
    Then User "select" checkbox "Enable Application PDF Link"
    Then User clicks on save button
    Then User clicks "Activity Access" button
    Then User "select" checkbox "Check/uncheck all Activity"
    Then User clicks on save button
    Then User clicks "Product Access" button
    Then User "select" checkbox "Check/Uncheck all Product"
    Then User "select" checkbox "Enable State Refinement"
    Then User clicks on save button
    Then User clicks "Case Access" button
    Then User "select" checkbox "Check/Uncheck all Cases"
    Then User clicks on save button
    Then User clicks "Debugging Tools" button
    Then User "select" checkbox "Enable Creation of Rule Traces"
    Then User "select" checkbox "Enable Viewing of Rule Traces"
    Then User "select" checkbox "Enable Viewing of API Insights Traces"
    Then User "select" checkbox "Enable Viewing of Application Data"
    Then User clicks on save button
    Then User clicks "Training" button
    Then User "select" checkbox "Attaching Supplemental Documents to an Activity"
    Then User "select" checkbox "eSignatures - Remote Sign"
    Then User "select" checkbox "Use the CRM Button"
    Then User clicks on save button
    Then User clicks "Copy Group" button
    Then User verifies dialog window "Select Group Settings to Copy"
    Then User clicks on save button
    Then User verify error message "Please enter Group name" is displayed on groups page
    Then User Enters "CopyofBhatiFirm1" in TextBox "NewGroupName"
    Then User clicks on save button
    Then User verify error message "Please select any Group options to Copy" is displayed on groups page
    Then User select all checkboxes on groups page
    Then User clicks on save button
    Then User verifies "CopyofBhatiFirm1" is "displayed" on groups page
    Then User clicks on "CopyofBhatiFirm1" group in the list
    Then User Verifies checkbox "Allow Passcode Email" is "selected"
    Then User Verifies checkbox "Auto Email Passcode" is "selected"
    Then User Verifies checkbox "Enable Decline E Sign Email" is "selected"
    Then User Verifies checkbox "Enable Multi-Life" is "selected"
    Then User Verifies checkbox "Enable Multiple Open Activities" is "selected"
    Then User Verifies checkbox "Enable Tele-sign" is "selected"
    Then User Verifies checkbox "Enabled Tele-sign Download Forms" is "selected"
    Then User Verifies checkbox "Enable Tele-sign Email Link" is "selected"
    Then User Verifies checkbox "Enabled-Sign Generate link" is "selected"
    Then User Verifies checkbox "Enable Custom Print Override" is "selected"
    Then User Verifies checkbox "Enable Print NIGO" is "selected"
    Then User Verifies checkbox "Enable APPS" is "selected"
    Then User Verifies checkbox "Enable ExamOne" is "selected"
    Then User Verifies checkbox "Enable Auto Submit" is "selected"
    Then User Verifies checkbox "Enable HTTP Redirect on Submit" is "selected"
    Then User verify "HTTPRedirectURL" is set to "https://www.gexure.com" on signature page
    Then User Verifies checkbox "Enable Distributor Testing View" is "selected"
    Then User Verifies checkbox "Enable Override Date" is "selected"
    Then User Verifies checkbox "Enable Test Mode" is "selected"
    Then User Verifies checkbox "Enable CRM Preferences" is "selected"
    Then User Verifies checkbox "Enable Training" is "selected"
    Then User Verifies checkbox "Enable All activities user share" is "selected"
    Then User Verifies checkbox "Enable obfuscation" is "selected"
    Then User clicks "Admin" button
    Then User Verifies checkbox "Enable View Fees" is "selected"
    Then User Verifies checkbox "Enable view Utilities" is "selected"
    Then User Verifies checkbox "Enable Read Only User Admin Access" is "selected"
    Then User Verifies checkbox "Enable Common Tags Utilities" is "selected"
    Then User Verifies checkbox "Enable view Utilities" is "selected"
    Then User Verifies checkbox "Enable Firm Management" is "selected"
    Then User clicks "Review Queue" button
    Then User Verifies checkbox "Enable manual Queue move" is "selected"
    Then User Verifies checkbox "Enable Assign reviewer button" is "selected"
    Then User Verifies checkbox "Enable Application PDF Link" is "selected"
    Then User clicks "Activity Access" button
    Then User Verifies checkbox "Check/uncheck all Activity" is "selected"
    Then User clicks "Product Access" button
    Then User Verifies checkbox "Check/Uncheck all Product" is "selected"
    Then User Verifies checkbox "Enable State Refinement" is "selected"
    Then User clicks "Case Access" button
    Then User Verifies checkbox "Check/Uncheck all Cases" is "unchecked"
    Then User clicks "Debugging Tools" button
    Then User Verifies checkbox "Enable Creation of Rule Traces" is "selected"
    Then User Verifies checkbox "Enable Viewing of Rule Traces" is "selected"
    Then User Verifies checkbox "Enable Viewing of API Insights Traces" is "selected"
    Then User Verifies checkbox "Enable Viewing of Application Data" is "selected"
    Then User clicks "Training" button
    Then User Verifies checkbox "Attaching Supplemental Documents to an Activity" is "selected"
    Then User Verifies checkbox "eSignatures - Remote Sign" is "selected"
    Then User Verifies checkbox "Use the CRM Button" is "selected"
    Then User clicks on "CopyofBhatiFirm1" group in the list
    Then User Clicks and Deletes product "CopyofBhatiFirm1"
    Then User verifies dialog window "Delete Confirmation"
    Then User Verify Alert Message "Are you sure you want to delete CopyofBhatiFirm1 Group?"
    Then User Clicks on Button "Yes"
    Then User verifies "CopyofBhatiFirm1" is "not displayed" on groups page
    Then User clicks on "BhatiFirm" group in the list
    Then User Clicks and Deletes product "BhatiFirm"
    Then User verifies dialog window "Delete Confirmation"
    Then User Clicks on Button "Yes"
    Then User verifies "BhatiFirm" is "not displayed" on groups page
