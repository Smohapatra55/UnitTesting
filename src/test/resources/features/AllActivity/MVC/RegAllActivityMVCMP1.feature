Feature: FireLight_Regression_AllActivitMP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: AT_048_Product Notification Email Template
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_AT_048"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Product Notification Test" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Signatures"
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Owner"
    Then User clicks "Send Email Request" button on signature page
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User enter all required "owner" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User verifies application is display in Locked mode
    Then User select "owner complete signature" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_006_Verify FireLight Set Decline E-Sign flag to True via rule set
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Decline E-Sign True/False        | True  | FLI_DECLINED_ESIGN      | Input        |
    Then User navigates to Home page
    Then User Now Navigate to All Activities page
    Then User clicks "Advance Search" button
    Then User selects value "Wet Signature" for field "Signature Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify application "FL024 TFS 34710 TTEE Forms only" is "displayed"
    Then User clicks "Advance Search" button
    Then User selects value "e-Signature" for field "Signature Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify application "FL024 TFS 34710 TTEE Forms only" is "not displayed"


  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_010_Set Decline E-Sign flag to True via UI
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks OK to decline Electronic Signatures window
    Then User clicks "Continue" button
    Then User clicks "Submit" button
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission"
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "RQ1"
    Then User clicks "Advance Search" button
    Then User selects option from Dropdown "e-Signature" from Advanced Search dialog box
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should not appear in review queue
    Then User clicks "Advance Search" button
    Then User selects option from Dropdown "Wet Signature" from Advanced Search dialog box
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should appear in review queue


  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_009_Set Decline E-Sign flag to True via rule set
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid    | Locator Type |
      | Decline E-Sgn textbox        | True  | FLI_DECLINED_ESIGN | Input        |
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send button in pending Request
    Then User clicks button Back to app in Email request page
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User Verifies on sub page "PreSubmit"
    Then User clicks "Advance Search" button
    Then User selects value "e-Signature" for field "Signature Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should not appear in review queue
    Then User clicks  preferences tab in Review Queue Page
    Then User selects value "All" for field "Page size"
    Then User clicks on Save btn on preferences page
    Then User selects Queue as "PreSubmit"
    Then User clicks "Advance Search" button
    Then User selects value "Wet Signature" for field "Signature Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should appear in review queue
    Then User navigates to Home page from review Queue page
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid    | Locator Type |
      | Decline E-Sgn textbox        | False  | FLI_DECLINED_ESIGN | Input        |
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User clicks "Continue" button
    Then User selects "Owner" signer on signature window
    Then User selects "trustee" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5556" in TextBox "ID"
    Then User Enters "ShibaJO" in TextBox "ToName"
    Then User Enters "9877" in TextBox "SSN"
    Then User Enters "09081998" in TextBox "BirthDate"
    Then User Enters "testhexure@gmail.com" in TextBox "Email Address"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "Agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User Clicks on Request Review
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send button in pending Request
    Then User clicks button Back to app in Email request page
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User Verifies on sub page "PreSubmit"
    Then User clicks  preferences tab in Review Queue Page
    Then User selects value "All" for field "Page size"
    Then User clicks on Save btn on preferences page
    Then User selects Queue as "PreSubmit"
    Then User clicks "Advance Search" button
    Then User selects value "e-Signature" for field "Signature Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should appear in review queue
    Then User clicks "Advance Search" button
    Then User selects value "Wet Signature" for field "Signature Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should not appear in review queue
    Then User navigates to Home page from review Queue page

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_008_Verify Add New Filter Type to Review Queue
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User clicks "Advance Search" button
    Then User verify value is "All" for field "Signature Type"
    Then User Verifies options present for "Signature Type" dropdown
      | options       |
      | All           |
      | e-Signature   |
      | Wet Signature |

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_012_Verify To verify product type filter showing as per Status  criteria
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_012"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "DSB"
    Then User verifies total items showing & it's in "red"
    Then User clicks "Advance Search" button
    Then User selects value "Last Month" for field "Filter by Date"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies total items showing & it's in "red"
    Then User clicks "Advance Search" button
    Then User selects value "Sunil_ FLADEMO_Auto" for field "User"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies "0" items "showing"
    Then User clicks "Advance Search" button
    Then User selects value "Fixed Annuity" for field "Product Type"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies total items showing & it's in "red"
    Then User clicks "Advance Search" button
    Then User Enters "AZ" in TextBox "Issue State"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies "AZ" is "displayed"
    Then User clicks "Advance Search" button
    Then User Enters "Income" in TextBox "Product Name"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies "Product Name: Income" is "displayed"

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_013_To verify product type filter is available
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_013"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User clicks "Advance Search" button
    Then user verifies "checkboxes" are displayed
    Then User verifies User and Activity type search criteria is present on Advanced Search dialog box
    Then user verifies "dropDowns" are displayed
    Then User verifies Begin Date and End Date search criteria is present on Advanced Search dialog box
    Then User Verifies Default option is "month" for radio button on Advance Search dialog box
    Then User Verifies Default option is "My Activities" for User Dropdown on Advance Search dialog box
    Then User Verifies Default option is "All" for Activity Type dropdown on Advance Search dialog box
    Then User Verifies Default option is "All" for Product Type dropdown on Advance Search dialog box
    Then User Verifies Default option is "Any" for Status dropdown on Advance Search dialog box
    Then User Verifies Default option is "Last Update" for Sort dropdown on Advance Search dialog box
    Then User Verifies Default option is "All" for Signature Type dropdown on Advance Search dialog box
    Then User verifies Activity Name, Tele-Sign Application ID, Issue State, Policy Number, Product Name, Begin Date, End Date are blank
    Then User verifies the below are display in Product type dropdown
      | Field                       |
      | All                         |
      | Accident And Health         |
      | Term Life                   |
      | Fixed Indexed Annuity       |
      | Fixed Annuity               |
      | Annuity                     |
      | Pre-sale Suitability Review |
    Then User clicks on All button on Advance Search dialogue box
    Then User verifies the below are display in Product type dropdown
      | All                                  |
      | Accident And HealthMutual Fund       |
      | Term LifeAccident And Health         |
      | Fixed Indexed Annuity                |
      | Variable Annuity                     |
      | Fixed Annuity  1031 Exchanges        |
      | Annuity    Quote                     |
      | Pre-sale Suitability Review Term Life|
      | Life                                 |
      | Non-Insurance Product                |
      | Fixed Indexed Annuity                |
      | Pre-sale Suitability Review Term Life|
      | Fixed Annuity                        |
      | Multi-Year Guaranteed Annuity        |
      | Annuity                              |
      | Pre-sale Suitability Review          |
      | Corporate Forms                      |
    Then User clicks on Month button on Advance Seacrh dialogue box
    Then User select "Sunil_ FLADEMO_Auto" in the User dropdown
    Then User verifies the below are display in Product type dropdown
      | All     |
      | Annuity |
    Then User select "Sonu_ Flademo_Auto" in the User dropdown
    Then User verifies the below are display in Product type dropdown
      | All           |
      | Life          |
      | Fixed Annuity |
      | Annuity       |
    Then User clicks on All button on Advance Search dialogue box
    Then User verifies the below are display in Product type dropdown
      | All                   |
      | Mutual Funds          |
      | Accident And Health   |
      | Variable Annuity      |
      | Life                  |
      | Non-Insurance Product |
      | Fixed Annuity         |
      | Annuity               |

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_014_Searching product type using status criteria
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_014"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User Now Navigate to All Activities page
    Then User clicks "Advance Search" button
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "activities updated in the last 30 days." is displayed on search
    Then User clicks "Advance Search" button
    Then User "check" the checkbox "quarter"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "activities updated in the last 3 months." is displayed on search
    Then User clicks "Advance Search" button
    Then User selects value "Sunil_ FLADEMO_Auto" for field "SelectedUserId"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "User Sunil_ FLADEMO_Auto" is displayed on search
    Then User verify "activities updated in the last 3 months." is displayed on search
    Then User update records are displayed for "Owner: Sunil_ FLADEMO_Auto"
    Then User clicks "Advance Search" button
    Then User selects value "Fixed Annuity" for field "Product Type Filter"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "User Sunil_ FLADEMO_Auto" is displayed on search
    Then User verify "activities updated in the last 3 months." is displayed on search
    Then User update records are displayed for "Owner: Sunil_ FLADEMO_Auto"
    Then User clicks "Advance Search" button
    Then User selects value "Data Entry" for field "statusType"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "User Sunil_ FLADEMO_Auto" is displayed on search
    Then User verify "activities updated in the last 3 months." is displayed on search
    Then User update records are displayed for "Owner: Sunil_ FLADEMO_Auto"
    Then User update records are displayed for "Data Entry"
    Then User clicks "Clear" button
    Then User verify "activities updated in the last 30 days." is displayed on search
    Then User clicks "Advance Search" button
    Then User selects value "Sonu_ Flademo_Auto" for field "SelectedUserId"
    Then User Enters "Life" in TextBox "Product Name"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "User Sonu_ Flademo_Auto" is displayed on search
    Then User verify "activities updated in the last 30 days." is displayed on search
    #Defect  EAES-2659
    Then User update records are displayed for "Owner: Sonu_ Flademo_Auto"
    Then User update records are displayed for "Life"
    Then User clicks "Advance Search" button
    Then User Enters "Life" in TextBox "Product Name"
    Then User selects value "Complete" for field "statusType"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "User Sonu_ Flademo_Auto" is displayed on search
    Then User verify "activities updated in the last 30 days." is displayed on search
    Then User update records are displayed for "Owner: Sonu_ Flademo_Auto"
    Then User update records are displayed for "All Back Office Processing Complete."
    Then User update records are displayed for "Life"


  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_015_Verify Next Activity Launch can be limit when Multiple Next Activities are Present
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Alaska"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Upload & Print Docs Product"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies "Account opening is finished." dialog message
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks on "Needs Determination" in Top Menu
    Then User selects Given Product "Needs Determination Forms Linked"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies popup "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User Clicks Apply Button
    Then User verifies "new" app is created
    Then User clicks on Link Icon on data entry page
    Then User verifies the "Linked" is open and verify the name of linked activity
    Then User clicks on Linked activity name
    Then User verifies popup "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User clicks on Linked activity button
    Then User clicks on "AT Upload & Print Docs Product" activity on linked activity
    Then User verifies popup "Account opening is finished."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks on "Application" in Top Menu
    Then User selects Given Product "Lifetime Income"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Link Icon on data entry page
    Then User verifies the parent activity and product is "Upload & Print Docs Product"
    Then User clicks on "AT Upload & Print Docs Product" activity on linked activity
    Then User verifies popup "Account opening is finished."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks on "Print Forms" in Top Menu
    Then User selects Given Product "RV PRINT FORMS 2"
    Then User clicks "Create" button
    Then User clicks on Link Icon on data entry page
    Then User clicks on "AT Upload & Print Docs Product" activity on linked activity
    Then User verifies popup "Account opening is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies Continue button is disabled on data entry


  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_003_Verify Sort drop down functionality at All Activities page
    # Defect ID : DIST-2420
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_003"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User verifies Week, Month, Quarter, YTD, All, Search, advance search, export, User, Activity Type, Status and Sort are displayed
    Then User Verify Default option is "My Activities" for User Dropdown
    Then User Verifies Default option is "All" for Activity Type dropdown
    Then User Verifies Default option is "Any" for Status dropdown
    Then User Verifies Default option is "Last Update" for Sort dropdown
    Then User selects value "Activity Name" for field "drpSort"
    Then User verifies if the elements are in ascending order for Activity sort
    Then User clicks on page2 form of All Activities
    Then User Verify Default option is "My Activities" for User Dropdown
    Then User Verifies Default option is "All" for Activity Type dropdown
    Then User Verifies Default option is "Any" for Status dropdown
    Then User Verifies Default option is "Activity Name" for Sort dropdown
    Then User verifies if the elements are in ascending order for Activity sort
    Then User verifies Week, Month, Quarter, YTD, All, Search, advance search, export, User, Activity Type, Status and Sort are displayed
    Then User Verify Default option is "My Activities" for User Dropdown
    Then User Verifies Default option is "All" for Activity Type dropdown
    Then User Verifies Default option is "Any" for Status dropdown
    Then User selects value "Last Update" for field "drpSort"
    Then User verifies if the  elements are in descending order
    Then User clicks on page2 form of All Activities
    Then User verifies if the  elements are in descending order
    Then User selects value "Product Name" for field "drpSort"
    Then User verifies if the elements are in ascending order for Product sort
    Then User clicks on page2 form of All Activities
    Then User verifies Week, Month, Quarter, YTD, All, Search, advance search, export, User, Activity Type, Status and Sort are displayed
    Then User Verify Default option is "My Activities" for User Dropdown
    Then User Verifies Default option is "All" for Activity Type dropdown
    Then User Verifies Default option is "Any" for Status dropdown
    Then User verifies if the elements are in ascending order for Product sort
    Then User Clicks on Search Icon Next to User Dropdown
    Then User selects "(All)" from drop down list
    Then User selects value "Owner Name" for field "drpSort"
    Then User verifies if the elements are in ascending order by owner
    Then User clicks on last page form of All Activities
    Then User verifies Week, Month, Quarter, YTD, All, Search, advance search, export, User, Activity Type, Status and Sort are displayed
    Then User Verify Default option is "My Activities" for User Dropdown
    Then User Verifies Default option is "All" for Activity Type dropdown
    Then User Verifies Default option is "Any" for Status dropdown
    Then User verifies if the elements are in ascending order by owner
    Then User clicks on last page form of All Activities
    Then User verifies if the elements are in ascending order by owner

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_005_Verify Add New Filter Type to All Activities
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Now Navigate to All Activities page
    Then User clicks "Advance Search" button
    Then User verify value is "All" for field "Signature Type"
    Then User Verifies options present for "SignTypes" dropdown
      | options       |
      | All           |
      | e-Signature   |
      | Wet Signature |
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "activities updated in the last 30 days." is displayed on search
    Then User verify "User AUTOUser1_FLADEMO_AUTO" is displayed on search
    Then User verifies showing & it's in "red"
    Then User clicks "Advance Search" button
    Then User selects option from Dropdown "e-Signature" from Advanced Search dialog box
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify "activities updated in the last 30 days." is displayed on search
    Then User verify "User AUTOUser1_FLADEMO_AUTO" is displayed on search
    Then User verifies showing & it's in "red"
    Then User clicks "Advance Search" button
    Then User selects option from Dropdown "Wet Signature" from Advanced Search dialog box
    Then User selects value "Signatures" for field "statusType"
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verify record count is less than previous record count
    Then User verify "activities updated in the last 30 days." is displayed on search
    Then User verify "User AUTOUser1_FLADEMO_AUTO" is displayed on search
    Then User verifies showing & it's in "red"
    Then User clicks "View History" for "1st" activity
    And User verify audit entries contains "E-Signature Process Declined" on history dialog
    Then User clicks "View History" for "2nd" activity
    And User verify audit entries contains "E-Signature Process Declined" on history dialog
    Then User clicks "View History" for "3rd" activity
    And User verify audit entries contains "E-Signature Process Declined" on history dialog

  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_007_Verify Set Decline E-Sign flag to True via UI
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup New
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks OK to decline Electronic Signatures window
    Then User navigates to Home page
    Then User clicks "ok" on Confirmation Dialog
    Then User clicks "All Activities" Tab
    Then User clicks "Advance Search" button
    Then User selects option from Dropdown "Wet Signature" from Advanced Search dialog box
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should appear in Search page
    Then User clicks "Advance Search" button
    Then User selects option from Dropdown "e-Signature" from Advanced Search dialog box
    Then User clicks "Search" button on Advanced Dialog Box
    Then User verifies Application should not appear in Search page


  @RegressionTest @RegAllActivityMVCMP1 @RegressionTestMP1P2
  Scenario: TC_011_Verify To verify product type filter is available and related search criteria is working  for Advanced Search of Review Queue page
    Given User is on FireLight login page for TestCase "RegAllActivityMVCMP1_TC_011"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User clicks "Advance Search" button
    Then user verifies "checkboxes" are displayed
    Then User Verifies Default option is "All" for radio button on Advance Search dialog box
    Then User Verifies Default option is "All Users" for User Dropdown on Advance Search dialog box
    Then User Verifies Default option is "All Activities" for Activity Type dropdown on Advance Search dialog box
    Then User Verifies Default option is "All" for Product Type dropdown on Advance Search dialog box
    Then User Verifies Default option is "All Statuses" for Status dropdown on Advance Search dialog box
    Then User Verifies Default option is "Create Date" for Sort dropdown on Advance Search dialog box
    Then User Verifies Default option is "All" for Signature Type dropdown on Advance Search dialog box
    Then User verifies User and Activity type search criteria is present on Advanced Search dialog box
    Then user verifies "dropDowns" are visible
    Then User verifies Activity Name, Tele-Sign Application ID, Issue State, Policy Number, Product Name, Begin Date, End Date are blank
    Then User verifies the below are display in Product type dropdown
      | Field   |
      | All     |
      | Annuity |
    Then User clicks "Cancel" button on Advanced Dialog Box
    Then User selects Queue as "DSB"
    Then User clicks "Advance Search" button
    Then User verifies the below are display in Product type dropdown
      | Field         |
      | All           |
      | Annuity       |
      | Fixed Annuity |
    Then User clicks "Cancel" button on Advanced Dialog Box
    Then User selects Queue as "Reviewer"
    Then User clicks "Advance Search" button
    Then User verifies the below are display in Product type dropdown
      | Field     |
      | All       |
      | Annuity   |
      | Term Life |
