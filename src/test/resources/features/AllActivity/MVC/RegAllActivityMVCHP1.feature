Feature: FireLight_Regression_AllActivityHP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_002_Pop-Up Message Enhancement- GIACT Validation being performed-Forms and Wizard_MVC
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call FORM" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on GIACT Lookup button
    Then User verifies GIACT pop up message

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_003_Pop-Up Message Enhancement-Generic validation-Forms
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV Lexis Nexis" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User clicks on Lexis Nexis call button
    Then User verifies Lexis Nexis pop up message

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_001_Verify products are appearing based on Product Type selected
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_001"
    Then User on Login Page enters valid username as "Sunil05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
   Then User verifies all options are in Alphabetical Orders except "All" and "Select Product Type"
    Then User verifies "All" option is present in dropdown
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Annuity"
    Then User verifies "Annuity" is present on left side with each product
    Then User Now Navigate to Preferences page
    Then User verifies all options are in Alphabetical Orders and "Select Product Type" is at 0th index and "All" is at 1st index in list
    Then User verifies "All" is present in Default Product Type
    Then User verifies "Alabama" is selected in Default Jurisdiction
    Then User selects "All" from default Product type
    Then User verifies "English" is selected in locale
    Then User clicks on Save btn on preferences page
    Then User navigates to Home page
    Then User clicks "Application" Tab
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User verifies the list of products is displayed
    Then User Now Navigate to Preferences page
    Then User selects "Annuity" from default Product type
    Then User clicks on Save btn on preferences page
    Then User navigates to Home page
    Then User clicks "Application" Tab
    Then User verifies "English" is selected in locale
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "Annuity" is present in Product Type
    Then User verifies the list of products is displayed
    Then User selects Product Type Dropdown "Life"
    Then User verifies the list of products is displayed
    Then User Now Navigate to All Activities page
    Then User filter date to All
    Then User navigates to New Activity Tab
    Then User clicks on "Print Forms" on new Activity
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User navigates to New Activity Tab
    Then User clicks on "Fee Inquiry" on new Activity
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User verifies "All" option is present in dropdown
    Then User navigates to New Activity Tab
    Then User clicks on "Account Opening" on new Activity
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User verifies "All" option is present in dropdown
    Then User navigates to New Activity Tab
    Then User clicks on "Illustration" on new Activity
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User verifies "All" option is present in dropdown
    Then User navigates to New Activity Tab
    Then User clicks on "Generic Post Issue" on new Activity
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User verifies "All" option is present in dropdown
    Then User navigates to New Activity Tab
    Then User clicks on "Needs Determination" on new Activity
    Then User verifies "Alabama" is selected in Jurisdiction
    Then User verifies "English" is selected in locale
    Then User verifies "All" option is present in dropdown

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_013_Verify New Group setting Allow Share Limited Control functionality for Complete Data Entry  share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_013"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field      | Value         | data-dataitemid   | Locator Type |
      | First Name | UserFirstName | Insured_FirstName | Input        |
      | Last Name  | UserLastName  | Insured_LastName  | Input        |
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field    | Value | data-dataitemid                    | Locator Type |
      | Zip Code | 98765 | Insured_ResidentialAddress_Zipcode | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "Sunil05" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User clicks on Share Limited Control
    Then User verifies the data is present with unchecked check box
      | Complete Data Entry                    |
      | Complete Signing Without Primary Agent |
      | Complete Signing                       |
      | Complete Pre-Signature Review          |
    Then User selects "Complete Signing Without Primary Agent" check box
    Then User verifies "Complete Signing without Primary Agent activity share request sent" is present in Share my activities popup
    Then User verifies "Shared Link : https://flqa.insurancetechnologies.com/" is present in Share my activities popup
    Then User verifies link "[Remove Share]" is present in Share my activities popup
    Then User stores the shared link
    Then User select "email body additionalContent" email with subject "Share Request: Sunil05 - Application" on gmail page and save "body"
    Then User verify expected mailbody is "expectedmailBody"
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing without Primary Agent"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User close the Share Activity Dialog box
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_013"
    Then User on Login Page enters valid username as "Sunil05_FLADEMO" and password and clicks Login button
    Then User verify application is not displayed at Shared Activity
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_013"
    Then User on Login Page enters valid username as "Sunil05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid                    | Locator Type |
      | Insured_FirstName                  | Input        |
      | Insured_LastName                   | Input        |
      | Insured_ResidentialAddress_Zipcode | Input        |
    Then User sets values for prefilled form
      | Field      | Value         | data-dataitemid   | Locator Type |
      | First Name | UserFirstName | Insured_FirstName | Input        |
      | Last Name  | UserLastName  | Insured_LastName  | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Clicks Back to Application
    Then User navigate to home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Now Navigate to All Activities page
    Then User selects "Deep05_FLADEMO_Auto" from "User" dropdown
    Then User verify application "shared activity" is "displayed"
    Then User Opens application by clicking on view button
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid                    | Locator Type |
      | Insured_FirstName                  | Input        |
      | Insured_LastName                   | Input        |
      | Insured_ResidentialAddress_Zipcode | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "trustee" signer on signature window
    Then User verifies "Agent : Deep05" is Disabled on page
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies "Agent : Deep05" is Disabled on page
    Then User Clicks Back to Application
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_013"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                                        |
      | Activity Share Accepted           | 'Sunil05_FLADEMO_AUTO' has accepted the activity share request from 'Deep05_FLADEMO_Auto' |
      | User Viewed Activity              | was viewed through the Application Data tool by Sunil05_FLADEMO_AUTO                      |
      | Client On-Site Signature Approved | was signed by FullName Signer '<SignerType>' from within City 'Pune'.                     |
    Then User Verifies Continue button Enabled
    Then User verifies application is display in Locked mode
    Then User clicks "Continue" button
    Then User verifies "Agent : Deep05" is enabled on page
    Then User Clicks Back to Application
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies "Shared Link : https://flqa.insurancetechnologies.com/" is not present in Share my activities popup
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies the "Sunil05_FLADEMO_AUTO" is showing in result list
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User select "email body additionalContent" email with subject "Deep05 has revoked the Application (Complete Signing without Primary Agent) share request" on gmail page and save "body"
    Then User verify expected mailbody is "expectedmailBody1"
    Then User close the Share Activity Dialog box second
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                  | Status Description                                                                                                                |
      | Activity Share Accepted | 'Sunil05_FLADEMO_AUTO' has accepted the activity share request from 'Deep05_FLADEMO_Auto'.                                        |
      | Activity Share Revoked  | 'Deep05_FLADEMO_Auto' has revoked sharing “Complete Signing without Primary Agent” for this activity with 'Sunil05_FLADEMO_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_013"
    Then User on Login Page enters valid username as "Sunil05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "Complete Signing Without Primary Agent" not showing any more

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_012_Verify New Group setting Allow Share Limited Control functionality for Complete Data Entry  share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_012"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Tab is active
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field         | Value      | data-dataitemid | Locator Type |
      | Date of Birth | 03/09/2000 | Owner_DOB       | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "Ravi" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User clicks on Share Limited Control
    Then User verifies the data is present with unchecked check box
      |Complete Data Entry|
      |Complete Signing Without Primary Agent|
      |Complete Signing                      |
      |Complete Pre-Signature Review         |
    Then User selects "Complete Data Entry" check box
    Then User verifies "Shared Link : https://flqa.insurancetechnologies.com/" is present in Share my activities popup
    Then User verifies link "[Remove Share]" is present in Share my activities popup
    Then User stores the shared link
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Data Entry"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User close the Share Activity Dialog box
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_012"
    Then User on Login Page enters valid username as "Ravi05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "Complete Data Entry" not showing any more
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_012"
    Then User on Login Page enters valid username as "Ravi05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User verifies prefilled Form
      | data-dataitemid | Locator Type |
      | Owner_DOB       | Input        |
    Then User Verifies Continue button is disabled
    Then User navigate to home page
    Then User Now Navigate to All Activities page
    Then User provides the first login username as "Deep05_FLADEMO_Auto" and clicks on search
    Then User selects clicks on "Deep05_FLADEMO" in list
    Then User Clicks on View Button on All Activity
    Then User Verifies Continue button is disabled
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_012"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status          | Status Description                |
      | Activity Share Accepted | 'Ravi05_FLADEMO_AUTO' has accepted the activity share request from 'Deep05_FLADEMO_Auto'. |
      | User Viewed Activity |  was viewed through the Application Data tool by Ravi05_FLADEMO_AUTO. |
    Then User Verifies Continue button Enabled
    Then User verifies prefilled Form
      | data-dataitemid | Locator Type |
      | Owner_DOB       | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Shared Link : https://flqa.insurancetechnologies.com/" is not present in Share my activities popup
    Then User verifies the "Ravi05_FLADEMO_AUTO " is showing in result list
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User verifies Dialog box Disappear
    Then User close the Share Activity Dialog box
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status          | Status Description                |
      | Activity Share Revoked | 'Deep05_FLADEMO_Auto' has revoked sharing “Complete Data Entry” for this activity with 'Ravi05_FLADEMO_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_012"
    Then User on Login Page enters valid username as "Ravi05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "“Complete Data Entry" not showing any more

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_008_Individual Addendums Generate per Form based on Soft Limits Forms Only
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Addendum Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User opens "Page 1" Required for Form "SoftLimitForm1" FormOnly MVC
    Then User sets values for prefilled form
      | Field                  | Value          | data-dataitemid      | Locator Type |
      | First Name             | 1234567890ABCD | Owner_FirstName      | Input        |
      | Last name              | 0987654321DCBA | Owner_LastName       | Input        |
      | Joint Owner First name | ABCD1234567890 | JointOwner_FirstName | Input        |
      | Joint Owner Last name  | DCBA0987654321 | JointOwner_LastName  | Input        |
    Then User opens "Page 1" Required for Form "SoftLimitForm2" FormOnly MVC
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                | Locator Type |
      | Owner Email ID      | QWERTY     | FLI_OWNER_EMAIL                | Input        |
      | Owner Address       | 12345QWERT | Owner_Address                  | Input        |
      | Joint Owner Address | Q          | JointOwner_EmpDetails_Address1 | Input        |
      | Joint Owner Email   | 09876ABCD  | JointOwner_Email               | Input        |
    Then User opens "Page 1" Required for Form "SoftLimitForm3" FormOnly MVC
    Then User sets values for prefilled form
      | Field                        | Value            | data-dataitemid            | Locator Type |
      | First name                   | QWERTY1234567    | Owner_FirstName            | Input        |
      | Joint Owner First name       | 12345QWERT67890  | JointOwner_FirstName       | Input        |
      | Joint Owner Household Income | ABCDEFGQWERTYUIO | JointOwner_HouseholdIncome | Input        |
      | Owner Household Income       | 09876ABCDQWERTYU | Owner_HouseholdIncome      | Input        |
    Then User opens "Page 1" Required for Form "SoftLimitForm4" FormOnly MVC
    Then User sets values for prefilled form
      | Field                | Value  | data-dataitemid     | Locator Type |
      | Owner Comments       | O1234  | Owner_Comments      | textarea     |
      | Joint Owner Comments | JO5678 | JointOwner_Comments | textarea     |
    Then User Now Clicks on Other Action tab and  Clicks on "Display/Print PDF"
    Then User Verifies check-uncheck all is "checked"
    And User verify document "SoftLimitForm1" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm2" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm3" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm4" exists in Select Documents to Print Dialog Box
    And User verify document "Validation Report" exists in Select Documents to Print Dialog Box
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies pdf text in "PrintPdf" document
      | See #1, Addendum - SoftLimitForm1 |
      | See #2, Addendum - SoftLimitForm1 |
      | See #3, Addendum - SoftLimitForm1 |
      | Addendum - SoftLimitForm1         |
      | Reference ID                      |
      | Overflow Content                  |
      | Addendum - SoftLimitForm1         |
      | Addendum - SoftLimitForm3         |
      | Application Validation Report     |
    Then User verifies pdf text not present in Pdf For AuditReport
      | Addendum - SoftLimitForm2 |
      | Addendum - SoftLimitForm4 |
    Then User verifies pdf document contains 7 pages
    Then User clicks "Back to Application" button on select documents to print page
    Then User clicks "Close" button on data entry page
    Then User opens "Page 1" Required for Form "SoftLimitForm2" FormOnly MVC
    Then User sets values for prefilled form
      | Field               | Value       | data-dataitemid                | Locator Type |
      | Owner Email ID      | QWERTY12345 | FLI_OWNER_EMAIL                | Input        |
      | Owner Address       | 123QWERTY45 | Owner_Address                  | Input        |
      | Joint Owner Address | QBC13452634 | JointOwner_EmpDetails_Address1 | Input        |
      | Joint Owner Email   | 76AD@fg.com | JointOwner_Email               | Input        |
    Then User opens "Page 1" Required for Form "SoftLimitForm4" FormOnly MVC
    Then User sets values for prefilled form
      | Field                | Value       | data-dataitemid     | Locator Type |
      | Owner Comments       | O124abcdefg | Owner_Comments      | textarea     |
      | Joint Owner Comments | JO578abcdef | JointOwner_Comments | textarea     |
      | Joint Owner Comments | JO578abcdef | JointOwner_Comments | textarea     |
    Then User Now Clicks on Other Action tab and  Clicks on "Display/Print PDF"
    Then User Verifies check-uncheck all is "checked"
    And User verify document "SoftLimitForm1" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm2" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm3" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm4" exists in Select Documents to Print Dialog Box
    And User verify document "Validation Report" exists in Select Documents to Print Dialog Box
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verifies pdf text in "PrintPdf" document
      | See #1, Addendum - SoftLimitForm1  |
      | See #2, Addendum - SoftLimitForm1  |
      | See #3, Addendum - SoftLimitForm1  |
      | See #4, Addendum - SoftLimitForm1  |
      | Addendum - SoftLimitForm1          |
      | Reference ID                       |
      | Overflow Content                   |
      | Application Validation Report      |
      | See #5, Addendum - SoftLimitForm2  |
      | See #6, Addendum - SoftLimitForm2  |
      | See #7, Addendum - SoftLimitForm2  |
      | See #8, Addendum - SoftLimitForm2  |
      | Addendum - SoftLimitForm2          |
      | Reference ID                       |
      | Overflow Content                   |
      | See #1, Addendum - SoftLimitForm3  |
      | See #3, Addendum - SoftLimitForm3  |
      | See #9, Addendum - SoftLimitForm3  |
      | See #10, Addendum - SoftLimitForm3 |
      | Addendum - SoftLimitForm3          |
      | Reference ID                       |
      | Overflow Content                   |
      | Addendum - SoftLimitForm4          |
      | Application Validation Report      |
      | See #11, Addendum - SoftLimitForm4 |
      | See #12, Addendum - SoftLimitForm4 |
      | Addendum - SoftLimitForm4          |
      | Reference ID                       |
    Then User verifies pdf document contains 9 pages

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario: TC_011_Verify New Group settings as Disable Share Full Control & Allow Limited Share functionality on App side
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_011"
    Then User on Login Page enters valid username as "NIGO_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User clicks "Other Actions" button
    Then User verifies "share" option is not present in the other actions submenu
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_011"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "Ravi" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User verifies Username and Code is displayed in the first column
    Then User verifies "Share Full Control" is displayed in the second column
    Then User verifies "Share Limited Control" is displayed in the third column
    Then User verifies "Share Read Only" is displayed in the fourth column
    Then User close the Share Activity Dialog box
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_011"
    Then User on Login Page enters valid username as "Admin_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "Ravi" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User verifies Username and Code is displayed in the first column
    Then User verifies Share Full Control is not displayed in the second column
    Then User verifies "Share Limited Control" is displayed in the third column
    Then User verifies "Share Read Only" is displayed in the fourth column
    Then User close the Share Activity Dialog box
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_011"
    Then User on Login Page enters valid username as "Deependra_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "AutoUser1" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User verifies Username and Code is displayed in the first column
    Then User verifies Share Full Control is not displayed in the second column
    Then User verifies Share Limited Control is not displayed in the third column
    Then User verifies "Share Read Only" is displayed in the fourth column
    Then User close the Share Activity Dialog box
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog

  @RegressionTest @RegAllActivityMVCHP1 @RegressionTestHP1
  Scenario:TC_010_Allow Client Protection at Form Level
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Form Protection MVC Product"
    Then User selects Optional Forms "Agent Protected Form"
    Then User selects Optional Forms "Client Protected Form"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "This application has one or more template forms with document tags: [Policy, Electronic Debit Authorization]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "62 %"
    Then User verifies "Continue" Button should be disable
    Then User clicks "Expand" button
    Then User verifies "Agent Protected,Public Protected" form is displayed
    Then User verifies "Client Protected" form is not displayed
    Then User close menu form
    Then User clicks "dataEntry percentage" button
    Then User verifies Validation error "forms" showing all "Client Protected,Agent Protected,Public Protected,Required"
    Then User verifies Client Protected fields are disabled
    Then User Clicks close Icon
    Then User sets values for prefilled form
      | Field              | Value        | data-dataitemid   | Locator Type |
      | Agent First Name   | AgentFName   | Agent_FirstName    | Input        |
      | Agent Last Name    | AgentLName   | Agent_LastName    | Input        |
      | Insured First Name | InsuredFName | Insured_FirstName | Input        |
    Then User should be on page "Public Protected Form with required fields"
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value        | data-dataitemid   | Locator Type |
      | Owner First Name   | OwnerFName   | Owner_FirstName   | Input        |
      | Owner Last Name    | OwnerLName   | Owner_LastName    | Input        |
    Then User should be on page "Agent Protected Form with required fields"
    Then User clicks "Next Page" button 2 times till last page
    Then User should be on page "Agent Protected Template Form"
    Then User clicks "State Notice Upload" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Policy" for field "Select Document Type"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
    Then User Closes Documents window
    Then User "This application has one or more template forms with document tags: [Electronic Debit Authorization]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User clicks "dataEntry percentage" button
    Then User verifies Validation error "forms" showing all "Client Protected,Required"
    Then User Go to Other Action and Clicks Display Print PDF
    Then User verifies "Application Form" for "Client Protected Template Form" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Form" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Form with required fields" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Template Form" is "Readonly"
    Then User verifies "Application Form" for "Client Protected Form" is "Readonly"
    Then User verifies "Application Form" for "Client Protected Form with required fields" is "Readonly"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | Public Protected Form with required fields |
      | AgentFName                                 |
      | AgentLName                                 |
      | OwnerFName                                 |
      | OwnerLName                                 |
      | InsuredFName                               |
      | Agent Protected Form with required fields  |
      | Agent Protected Form                       |
      | PDF BOOKMARK SAMPLE                        |
      | Sample Bookmark File                       |
      | Application Validation Report              |
      | Application Name                           |
      | Errors                                     |
      | Reminders                                  |
    Then User Verifies "Client Protected Form" is not present in PDF
    Then User Verifies "Client Protected Form with required fields" is not present in PDF
    Then User Verifies "Client Protected Template Form" is not present in PDF
    Then User verifies pdf document contains 8 pages
    Then User clicks button Back to app
    Then User "This application has one or more template forms with document tags: [Electronic Debit Authorization]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User Clicks "Other Action" Button
    Then User Clicks on "Request Client to Fill & Sign"
    Then User enters "insured" details on page
    Then User enters "owner" details on page
    Then User select "owner" checkbox on ReactApp page
    Then User Clicks on "Generate Link Without Email" Button
    And User verifies link is generated and store it
    Then User Clicks "Back to App" Button
    Then Pending request box with "Insured" is displayed on data entry page
    Then Pending request box with "Owner" is displayed on data entry page
    Then User Notes the Passcode for "Insured" on data entry page
    Then User Notes the Passcode for "Owner" on data entry page
    Then User clicks on "Send Reminder to" "Insured" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigate to home page
    Then User verifies Application status as "Pending Client Request"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "NewrecipientLink"
    Then User Logs in with "ownerPasscode"
    Then User Verifies Sign application button is not visible
    Then User "This application has one or more template forms with document tags: [Electronic Debit Authorization]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User clicks "Expand" button
    Then User verifies "Client Protected,Public Protected" form is displayed
    Then User verifies "Agent Protected" form is not displayed
    Then User close menu form
    Then User opens "Page 1" Required for Form "Client Protected Template Form"
    Then User clicks "Voided Check" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Electronic Debit Authorization" for field "Select Document Type"
    Then User uploads Document "E2E-TC05-pdfFile"
    Then User clicks "Upload" button
    Then User Closes Documents window
    Then User should be on page "Client Protected Template Form"
    Then User opens "Page 1" Required for Form "Client Protected Form with required fields"
    Then User sets values for prefilled form
      | Field              | Value       | data-dataitemid          | Locator Type |
      | Owner Phone number | 1234567890  | Owner_Mobile_PhoneNumber | Input        |
      | Owner SSN          | 123-12-1234 | Owner_SSN                | Input        |
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Display/Print PDF" from review queue
    Then User verifies pdf text in "PrintPdf" document
      | Public Protected Form with required fields |
      | AgentFName                                 |
      | AgentLName                                 |
      | InsuredFName                               |
      | Application Validation Report              |
      | Application Name                           |
      | Errors                                     |
      | Reminders                                  |
      | Client Protected Form                      |
      | Client Protected Form with required fields |
      | Welcome to Smallpdf                        |
    Then User Verifies "Agent Protected Form" is not present in PDF
    Then User Verifies "Agent Protected Form with required fields" is not present in PDF
    Then User Verifies "Client Protected Template Form" is not present in PDF
    Then User verifies pdf document contains 9 pages
    Then User Clicks on Sign application button
    Then User clicks on Ok button
    Then User Clicks Sign Activity button
    Then User verify arrow point to "Agent Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Client Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "insuredPasscode"
    Then User Clicks Sign Activity button
    Then User verify arrow point to "Public Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Agent Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Client Protected Form" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Client Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP1_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Continue" button
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

