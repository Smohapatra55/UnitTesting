Feature: FireLight_Regression_ActivityMasterCP1_React_TestCases

  This feature will verify FireLight Admin Test Cases of Medium P1 P2

  @RegressionAdmin @RegAdminAllActivityMVCMP1
  Scenario: AT_046_Product Notification Product Configuration Deployment
    Given User is on FireLight login page for TestCase "RegAdminAllActivityMVCMP1_AT_046"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Enters "Notification Deploy" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User clicks on product "Notification Deploy" under Product List
    Then User "select" checkbox "Allow Product Notification"
    Then User Enters "Test Message for Product Notification Notification Deploy" in Text Field "Message"
    Then User select "Start Date" as 3 "previous" days from current date
    Then User select "End Date" as 3 "next" days from current date
    Then User clicks "Save" button
    Then User click on "Home" and select "" form menu list
    Then User clicks "Deployments" Tab
    Then User selects "Product Configuration" from "Synchronization Scope" dropdown
    Then User selects "FL Access Carrier - Automation" from "Organization" dropdown
    Then User clicks "Load Deployment Information" button
    Then User "select" checkbox "Notification Deploy" from list
    Then User Enters "Deploying for product notify" in Text Field "Reason"
    Then User clicks "Deploy Now" button
    Then User clicks "ok" on Confirmation Dialog in Admin App
    Then User verify "deployment successful" message in "DeployMessage" field on Admin app
    Then User click on "Home" and select "" form menu list
    Then User clicks "Deployments" Tab
    Then User selects "Distributor Product Configuration" from "Synchronization Scope" dropdown
    Then User selects "FL Access Brokerage - Automation" from "Organization" dropdown
    Then User clicks "Load Deployment Information" button
    Then User "select" checkbox "Notification Deploy" from list
    Then User Enters "Distributor Deploying for product notify" in Text Field "Reason"
    Then User clicks "Deploy Now" button
    Then User clicks "ok" on Confirmation Dialog in Admin App
    Then User verify "deployment successful" message in "DeployMessage" field on Admin app
    Then User click on "Home" and select "" form menu list
    Then User clicks "Products" Tab
    Then User Enters "Notification Deploy" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User clicks on product "Notification Deploy" under Product List
    Then User Enters "" in Text Field "Message"
    Then User "uncheck" checkbox "Allow Product Notification"
    Then User clicks "Save" button

  @RegressionAdmin @RegAdminAllActivityMVCMP1
  Scenario: AT_057_Verify New Product Notification related fields in Admin Product Setup
    Given User is on FireLight login page for TestCase "RegAdminAllActivityMVCMP1_AT_057"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Enters "Easy" in Text Field "Search Product"
    Then User Clicks on Search icon
    Then User clicks on product "Easy Signing Distributor" under Product List
    Then User Verifies checkbox "Allow Product Notification" is "unchecked"
    Then User verifies "Msg" is "disabled" field
    Then User verifies "datepicker" is "disabled" field
    Then User verifies "datepicker1" is "disabled" field
    Then User "select" checkbox "Allow Product Notification"
    Then User verifies "Msg" is "not disabled" field
    Then User verifies "datepicker" is "not disabled" field
    Then User verifies "datepicker1" is "not disabled" field
    Then User Enters "Test Notification For Product" in Text Field "Message"
    Then User select "Start Date" as 3 "previous" days from current date
    Then User select "End Date" as 3 "next" days from current date
    Then User clicks "Save" button
    Then User Enters "" in Text Field "Message"
    Then User "uncheck" checkbox "Allow Product Notification"
    Then User clicks "Save" button
    Then User verifies "Product saved." message without any error

  @RegressionAdmin @RegAdminAllActivityMVCMP1
  Scenario: TC_004_Verify that Single file label name is added
    Given User is on FireLight login page for TestCase "RegAdminAllActivityMVCMP1_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User verifies Single and Cumulative Label is showing
    Then User Verifies options present for "ddlCumMaxSize" dropdown
      | options    |
      | Null       |
      | 5       |
      | 10       |
      | 15       |
      | 20       |
      | 25       |
      | 30       |
      | 35       |
      | 40       |
      | 45       |
      | 50       |
    Then User selects value "Null" for field "ddlCumMaxSize"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User selects value "5" for field "ddlCumMaxSize"
    Then User verifies Invalid Selection message "Cumulative size should be greater than single file size!"
    Then User clicks Ok popup button
    Then User Verifies value "Null" for field "ddlCumMaxSize"
    Then User selects value "15" for field "ddlCumMaxSize"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Reload the page
    Then User Clicks on Tab "Activity"
    Then User verifies Single and Cumulative Label is showing
    Then User selects value "15" for field "ddlMaxSize"
    Then User verifies Invalid Selection message "Cumulative size should be greater than single file size!"
    Then User clicks Ok popup button
    Then User Verifies value "Null" for field "ddlCumMaxSize"
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegressionAdmin @RegAdminAllActivityMVCMP1
  Scenario: AT_041_AVerify admin side Product Notification settings are working
    Given User is on FireLight Admin login page for TestCase "RegAdminAllActivityMVCMP1_AT_041"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Searches for application
    Then User clicks on product "Product Notification Test" under Product List
    Then User verifies Availability of fields under tab
      | Type     | Value    |
      | textbox  | text     |
      | checkbox | checkbox |
    Then User verifies fields depends on particular field
      | Name                                      | ToCheckName                                  |
      | SelectedProduct.EnableProductNotification | SelectedProduct.ProductNotificationMessage   |
      | SelectedProduct.EnableProductNotification | SelectedProduct.ProductNotificationStartDate |
      | SelectedProduct.EnableProductNotification | SelectedProduct.ProductNotificationEndDate   |
    Then User selects Allow Notification checkbox
    Then User clicks "Save Product Config" button
    Then User Verifies product error message "Please enter notification message."
    Then User Enter 400 characters in the MessageBox
    Then User clicks "Save Product Config" button
    Then User verifies the "Please enter notification message." error message is not showing
    Then User selects the "14" date from "start date" date picker
    Then User clicks "Save Product Config" button
    Then User Verifies product error message "Please enter start/end date."
    Then User selects the "18" date from "end date" date picker
    Then User clicks "Save Product Config" button
    Then User verifies the "Please enter start/end date." error message is not showing
    Then User Enter 405 characters in the MessageBox
    Then User clicks "Save Product Config" button
    Then User Verifies product error message "Notification message cannot be longer than 400 characters."
    Then User Enter 400 characters in the MessageBox
    Then User verifies the "Notification message cannot be longer than 400 characters." error message is not showing
    Then User selects the "13" date from "end date" date picker
    Then User clicks "Save Product Config" button
    Then User Verifies product error message "End Date must be greater than Start Date."
    Then User selects the "14" date from "end date" date picker
    Then User clicks "Save Product Config" button
    Then User Verifies product error message "End Date must be greater than Start Date."
    Then User selects the "18" date from "end date" date picker
    Then User clicks "Save Product Config" button
    Then User Enter 41 characters in the MessageBox
    Then User clicks "Save Product Config" button
    Then User save "newMessageValue" in Admin App
    Then User validates the data in Product History tab
    Then User Searches for application second time
    Then User clicks on product "Elite Term" under Product List
    Then User verifies allow notification is not checked
    Then User verifies fields depends on particular field
      | Name                                      | ToCheckName                                  |
      | SelectedProduct.EnableProductNotification | SelectedProduct.ProductNotificationMessage   |
      | SelectedProduct.EnableProductNotification | SelectedProduct.ProductNotificationStartDate |
      | SelectedProduct.EnableProductNotification | SelectedProduct.ProductNotificationEndDate   |
    Then User selects Allow Notification checkbox
    Then User enters "Checking for product notify message" in the MessageBox
    Then User selects the "10" date from "start date" date picker
    Then User selects the "15" date from "end date" date picker
    Then User clicks "Save Product Config" button
    Then User verifies "Product saved." message without any error

  @RegressionAdmin @RegAdminAllActivityMVCMP1
  Scenario: AT_041_B Revert Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminAllActivityMVCMP1_AT_041"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Searches for application
    Then User clicks on product "Product Notification Test" under Product List
    Then User Verifies checkbox is checked or unchecked and unchecks it
    Then User clicks "Save Product Config" button
    Then User Searches for application second time
    Then User clicks on product "Elite Term" under Product List
    Then User Verifies checkbox is checked or unchecked and unchecks it
    Then User clicks "Save Product Config" button
    Then User clicks "Log Off" from Menu options
