Feature: FireLight_Regression_ActivityMasterMP1P2_React_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: AT_001_Other Actions_Disable View Documents_History_Activity Summary_Request
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_AT_001"
    Then User on Login Page enters valid username as "Autouser2_Flademo2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Auto Prod Forms+Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Other Actions" button
    Then User verify option "Rename/Summary" is "Not Shown" in other actions menu
    Then User verify option "History" is "Not shown" in other actions menu
    Then User verify option "Documents" is "Not shown" in other actions menu
    Then User verify option "Requests" is "Not shown" in other actions menu
    Then User clicks "Other Actions" button
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User Clicks on Decline E-Review
    Then User Clicks OK
    Then User clicks "Other Actions" button
    Then User verify option "Rename/Summary" is "Not Shown" in other actions menu
    Then User verify option "History" is "Not shown" in other actions menu
    Then User verify option "Documents" is "Not shown" in other actions menu
    Then User verify option "Requests" is "Not shown" in other actions menu

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: AT_002_Disable Transfer data items to next activity_Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_AT_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "SKS Need Determination Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User verifies toast message of "The Needs Determination has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens "New Page" Optional for Form "SKS Need Determination"
    Then User fills values for prefilled form
      | Field      | Value      | data-dataitemid     | Locator Type |
      | First name | Sunil      | Owner_FirstName     | Input        |
      | Last Name  | Sharma     | Owner_LastName      | Input        |
      | Last Name  | 40         | Owner_Age           | Input        |
      | Last Name  | 04/04/1982 | Owner_DOB           | Input        |
      | Last Name  | Deep       | Annuitant_FirstName | Input        |
      | Last Name  | Bhati      | Annuitant_LastName  | Input        |
      | Last Name  | 35         | Annuitant_Age       | Input        |
      | Last Name  | 11/11/1989 | Annuitant_DOB       | Input        |
    Then User opens "Page 1" Optional for Form "SKS Need Determination Form"
    Then User Clicks on Continue button
    Then User clicks "Yes" button
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User selects Given Product "ND Next Activity Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User fills values for prefilled form
      | Field      | Value      | data-dataitemid     | Locator Type |
      | First name | Sunil      | Owner_FirstName     | Input        |
      | Last Name  | Sharma     | Owner_LastName      | Input        |
      | Last Name  | 40         | Owner_Age           | Input        |
      | Last Name  | 04/04/1982 | Owner_DOB           | Input        |
      | Last Name  | Deep       | Annuitant_FirstName | Input        |
      | Last Name  | Bhati      | Annuitant_LastName  | Input        |
      | Last Name  | 35         | Annuitant_Age       | Input        |
      | Last Name  | 11/11/1989 | Annuitant_DOB       | Input        |
    Then User clicks on Linked Icon on Top border of the form
    Then User clicks on Linked activity name
    Then User verifies popup "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User selects Given Product "ND Next Activity Forms And Wizards" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User fills values for prefilled form
      | Field      | Value      | data-dataitemid     | Locator Type |
      | First name | Sunil      | Owner_FirstName     | Input        |
      | Last Name  | Sharma     | Owner_LastName      | Input        |
      | Last Name  | 40         | Owner_Age           | Input        |
      | Last Name  | 04/04/1982 | Owner_DOB           | Input        |
      | Last Name  | Deep       | Annuitant_FirstName | Input        |
      | Last Name  | Bhati      | Annuitant_LastName  | Input        |
      | Last Name  | 35         | Annuitant_Age       | Input        |
      | Last Name  | 11/11/1989 | Annuitant_DOB       | Input        |

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: AT_003_Lock Transferred dataitems_Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_AT_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "SKS Need Determination Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "The Needs Determination has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens "New Page" Optional for Form "SKS Need Determination"
    Then User fills values for prefilled form
      | Field      | Value      | data-dataitemid     | Locator Type |
      | First name | Sunil      | Owner_FirstName     | Input        |
      | Last Name  | Sharma     | Owner_LastName      | Input        |
      | Last Name  | 40         | Owner_Age           | Input        |
      | Last Name  | 04/04/1982 | Owner_DOB           | Input        |
      | Last Name  | Deep       | Annuitant_FirstName | Input        |
      | Last Name  | Bhati      | Annuitant_LastName  | Input        |
      | Last Name  | 35         | Annuitant_Age       | Input        |
      | Last Name  | 11/11/1989 | Annuitant_DOB       | Input        |
    Then User opens "Page 1" Optional for Form "SKS Need Determination Form"
     Then User verifies prefilled data Form
      | data-dataitemid     | Locator Type |
      | Owner_FirstName     | Input        |
      | Owner_LastName      | Input        |
      | Owner_Age           | Input        |
      | Owner_DOB           | Input        |
      | Annuitant_FirstName | Input        |
      | Annuitant_LastName  | Input        |
      | Annuitant_Age       | Input        |
      | Annuitant_DOB       | Input        |
    Then User Clicks on Continue button
    Then User clicks "Yes" button
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User selects Given Product "ND Next Activity Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks Link "[Close]"
    Then User verifies prefilled data Form is filled
      | data-dataitemid     | Locator Type |
      | Owner_FirstName     | Input        |
      | Owner_LastName      | Input        |
      | Owner_Age           | Input        |
      | Owner_DOB           | Input        |
      | Annuitant_FirstName | Input        |
      | Annuitant_LastName  | Input        |
      | Annuitant_Age       | Input        |
      | Annuitant_DOB       | Input        |
    Then User clicks on Linked Icon on Top border of the form
    Then User clicks on Linked activity name
    Then User verifies popup "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User selects Given Product "ND Next Activity Forms And Wizards" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled data Form
      | data-dataitemid     | Locator Type |
      | Owner_FirstName     | Input        |
      | Owner_LastName      | Input        |
      | Owner_Age           | Input        |
      | Owner_DOB           | Input        |
      | Annuitant_FirstName | Input        |
      | Annuitant_LastName  | Input        |
      | Annuitant_Age       | Input        |
      | Annuitant_DOB       | Input        |


  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: TC_013_Verify Transfer functionality for Form+Wiz application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime income" for application
    Then User clicks "Create" button
    Then User enters new Activity name as "ATY Lifetime income"
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "94%"
    Then User opens Menu "Other Actions  ->Transfer"
    Then User verifies "Transfer Activity" Dialog box appears
    Then User enters "newOwnerName" on transfer activity page
    Then User clicks "Search" button on transfer activity page
    Then User selects "newOwnerName" on transfer activity page
    Then User verify transfer message on transfer activity page
    Then User clicks "X" button on transfer activity page
    Then User navigate to home page
    Then User verifies "newActivityName" is visible on Activities list
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_013"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User verifies "newActivityName" is visible on Activities list
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies "newActivityName" is not showing in Activity list

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: TC_001_Verify forms only package for Optional forms message
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Form&Wiz Product" for application
    Then User clicks "Create" button
    Then User verifies the note on Activity Application Form
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User Now Clicks on Other Action tab and  Clicks on "Rename/Summary"
    Then User enters new Activity name as "Lifetime Income AT_01" in react
    Then User clicks on "RENAME" link
    Then User clicks "CLOSE" button
    Then User navigates to Home page
    Then User clicks on "Ok Popup" link
    Then User verifies New Activity Name is visible on Activities list
    Then User Now Navigate to All Activities page
    Then User verifies New Application Added on All Activities Page

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: TC_002_Verify when user select 'Copy Activity' option
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "LifeTime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Other Actions" button
    Then User Verifies "Copy Activity" is enabled in Other Action
    Then User clicks on "Copy Activity" in other actions tab
    Then User verifies all content of Copy Activity popup
    Then User Clicks on "Cancel" on confirmation dialog
    Then User opens "Client Data" Required for Form "Annuity Wizard"
    Then User verifies Page heading "Annuity Wizard" with form name "Client Data" for data entry flow
    Then User selects radio button "Joint" for "Owner Type"
    Then User enter "Replacement Questions1" data in required fields
    Then User stores Data Entry Data
    Then User clicks "Other Actions" button
    Then User Verifies "Copy Activity" is enabled in Other Action
    Then User clicks on "Copy Activity" in other actions tab
    Then User verifies all content of Copy Activity popup
    Then User Clicks on "OK" on confirmation dialog
    Then User Verifies Data Entry Percentage
    Then User navigates to Home page
    Then User verifies New Activity Name is visible on Activities list
    Then User Now Navigate to All Activities page
    Then User verifies New Application Added on All Activities Page
    Then User navigates to Home page
    Then User clicks "Print Forms" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV PRINT FORMS 2" for application
    Then User clicks "Create" button
    Then User clicks "Other Actions" button
    Then User verify option "Copy Activity" is "Not Shown" in other actions menu

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: TC_004_Auto Save Immediately Save Unsaved Data related to Current Hard Save
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User stores Data Entry percentage
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field                  | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox |            | PlanType_NonQualified | Check Box    |
      | Contact number         | 1234567890 | Contract_Number       | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks on Next button on form
    Then User verifies toast message "Data Entry has met the requirements."
    Then User Refresh the Page
    Then User verifies toast message "Data Entry has met the requirements."
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User clicks "Back To Application" button
    Then User verifies toast message "Please Continue."
    Then User Clicks on Other Action Tab and verify "Unlock" option Showing
    Then User click "Unlock" submenu
    Then User clicks "Unlock Activity" button on data entry page
    Then User navigate to home page
    Then User open application from recent activity
    Then User verifies toast message "Data Entry has met the requirements."
    Then User opens "Page 1" Optional for Form "Fees and Expense Disclosure Sample"
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 12/15/1996 | Client_DOB      | Input        |
    Then User navigate to home page
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User open application from recent activity
    Then User verifies toast message "Data Entry has met the requirements."
    Then User opens "Page 1" Optional for Form "Fees and Expense Disclosure Sample"
    Then User Verifies Data entered at External page is displaying at main application
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 12/15/1996 | Client_DOB      | Input        |

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: TC_003_Verify activities will be displayed in the Recent Activity or All Activities list with manual approval
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "DSB Illustration" for application
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User stores the name of the application
    Then User navigate to home page
    Then User Verifies all button on activity changes popup and clicks on "no" button
    Then User Verifies Application name is "not showing" in new Activity list
    Then User Now Navigate to All Activities page
    Then User verifies New Activity is "Added" on All Activities page
    Then User navigate to home page
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "DSB Illustration" for application
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User stores the name of the application
    Then User navigate to home page
    Then User Verifies all button on activity changes popup and clicks on "yes" button
    Then User enters new "Illustration" name first time
    Then User clicks "save" button
    Then User Now Navigate to All Activities page
    Then User Verifies Application name is "showing" in new Activity list
    Then User navigate to home page
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks Expand form menu
    Then User clicks on page1 form of application222
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User Navigates to Home Page
    Then User verifies New Activity Name is visible on Activities list
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Clicks on View Button on All Activity
    Then User verifies prefilled data form input text fields of Application222
      | data-dataitemid                  | Locator Type |
      | Owner_FirstName                  | Input        |
      | Owner_LastName                   | Input        |
      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner_DOB                        | Textarea     |

  @RegressionTest @RegActivityMasterMP1P2React @RegressionTestMP1P2
  Scenario: TC_005_Auto Save Immediately Save Unsaved Data related to Current Hard Save
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2React_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User stores Data Entry percentage
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User stores Data Entry percentage
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies value "Illustration" for field "Document Type"
    Then User clicks "Close" button
    Then User Verifies Data entered at External page is displaying at main application
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User selects check box "Optional Form"
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies PDF "PrintPdf" is generated
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field                  | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox |            | PlanType_NonQualified | Check Box    |
      | Contact number         | 1234567890 | Contract_Number       | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks on Next button on form
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks on Next button on form
    Then User verifies toast message "Data Entry has met the requirements."
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Next Page" button 3 times till last page
    Then User clicks initials check box and enters "JB"
    Then User clicks "Ok" on Confirmation Dialog
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Back To Application" button
    Then User verifies toast message "Please Continue."
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User clicks "Close" button
    Then User Clicks on Other Action Tab and verify "Unlock" option Showing
    Then User click "Unlock" submenu
    Then User clicks "Unlock Activity" button on data entry page
    Then User navigate to home page
    Then User open application from recent activity
    Then User verifies toast message "Data Entry has met the requirements."
    Then User opens Menu "Other Actions  ->Transfer"
    Then User verifies "Transfer Activity" Dialog box appears
    Then User enters "Deep" in Search Field on transfer activity page
    Then User clicks "Search" button on transfer activity page
    Then User selects value by 1 index on transfer activity page
    Then User verify transfer message on transfer activity page
    Then User clicks "X" button on transfer activity page
    Then User navigate to home page
    Then User open application from recent activity
    Then User clicks "X" button on transfer activity page
    Then User Verifies Data entered at External page is displaying at main application
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks on Next button on form
    Then User Verifies Data entered at External page is displaying at main application
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks on Next button on form
    Then User Verifies Data entered at External page is displaying at main application
      | Field                  | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox |            | PlanType_NonQualified | Check Box    |
      | Contact number         | 1234567890 | Contract_Number       | Input        |
    Then User clicks on Next button on form
    Then User Verifies Data entered at External page is displaying at main application
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks on Next button on form
    Then User Verifies Data entered at External page is displaying at main application
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User Verifies data entry percentage is "100%"