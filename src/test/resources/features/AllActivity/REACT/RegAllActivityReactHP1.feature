Feature: FireLight_Regression_AllActivityHP1_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegAllActivityHP1React @RegressionTestHP1
  Scenario: TC_002_Pop-Up Message Enhancement- GIACT Validation being performed-Forms and Wizard_MVC
    Given User is on FireLight login page for TestCase "RegAllActivityHP1React_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on GIACT Lookup button
    Then User verifies GIACT pop up message

  @RegressionTest @RegAllActivityHP1React @RegressionTestHP1
  Scenario: TC_003_Pop-Up Message Enhancement-Generic validation-Forms
    Given User is on FireLight login page for TestCase "RegAllActivityHP1React_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lexis Nexis Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User clicks on Lexis Nexis call button
    Then User verifies Lexis Nexis pop up message

  @RegressionTest @RegAllActivityHP1React @RegressionTestHP1
  Scenario: TC_005_Verify WizardForm  Application created via Copy As Is and Copy With Changes retains original firm info and case details while logging with another user.
    Given User is on FireLight login page for TestCase "RegAllActivityHP1React_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wiz and Forms" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies prefilled form
      | Field                       | Value              | data-dataitemid                  | Locator Type | Validation Error                            |
      | Firm Name                   | HexTest Firm Name  | FLI_FIRM_NAME                    | Input        |                                             |
      | FLI_CURRENT_FIRM_NAME       | HexTest Firm Name  | FLI_CURRENT_FIRM_NAME            | Input        |                                             |
    Then User Logs Off from the current Application and clicks "OK" on Confirmation Dialog
    Then User is on FireLight login page for TestCase "RegAllActivityHP1React_TC_005"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User Now Navigate to All Activities page
    Then User Clicks on Search Icon Next to User Dropdown
    Then User selects "FLADEMO_AUTO0024" from drop down list
    Then User Searches for application
    Then User clicks Copy button on All Activity Page
    Then User clicks "Copy As Is" button
    Then User Clicks on "OK" on confirmation dialog
    Then User Verifies Toast Popup message as "Data Entry has" and closes it
    Then User verifies prefilled form
      | Field                 | Value  | data-dataitemid       | Locator Type | Validation Error |
      | Firm Name             | D-Firm | FLI_FIRM_NAME         | Input        |                  |
      | FLI_CURRENT_FIRM_NAME | D-Firm | FLI_CURRENT_FIRM_NAME | Input        |                  |
    Then User navigates to Home page
    Then User clicks on "Ok" button on incomplete activity pop up dialog
    Then User Now Navigate to All Activities page
    Then User Clicks on Search Icon Next to User Dropdown
    Then User selects "FLADEMO_AUTO0024" from drop down list
    Then User Searches for application
    Then User clicks Copy button on All Activity Page
    Then User clicks "Copy with Changes" button
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User verifies prefilled form for Forms Only Application
      | Field                       | Value              | data-item-id                     | Locator Type |
      | Firm Name                   | D-Firm             | FLI_FIRM_NAME                    | Input        |
      | FLI_CURRENT_FIRM_NAME       | D-Firm             | FLI_CURRENT_FIRM_NAME            | Input        |

  @RegressionTest @RegAllActivityHP1React @RegressionTestHP1
  Scenario: TC_009_Individual Addendums Generate per Form based on Soft Limits
    Given User is on FireLight login page for TestCase "RegAllActivityHP1React_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Addendum Product- Forms&Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User fills soft Limit form data
      | Value          | data-dataitemid      |Locator Type |
      | 1234567890ABCD | Owner_FirstName      |Input        |
      | 0987654321DCBA | Owner_LastName       |Input        |
      | ABCD1234567890 | JointOwner_FirstName |Input        |
      | DCBA0987654321 | JointOwner_LastName  |Input        |
    Then User clicks "Expand" button
    Then User Clicks on form "Page 1" Required for Form Menu "SoftLimitForm2"
    Then User fills soft Limit form data
      | Value      | data-dataitemid                |Locator Type |
      | QWERTY     | FLI_OWNER_EMAIL               |Input         |
      | 12345QWER | Owner_Address                  |Input        |
      | 09876ABCD  | JointOwner_Email               |Input        |
      | Q          | JointOwner_EmpDetails_Address1 |Input        |
    Then User clicks "Expand" button
    Then User Clicks on form "Page 1" Required for Form Menu "SoftLimitForm3"
    Then User fills soft Limit form data
      | Value            | data-dataitemid            |Locator Type |
      | QWERTY1234567    | Owner_FirstName            |Input        |
      | 12345QWERT67890  | JointOwner_FirstName       |Input        |
      | 09876ABCDQWERTYU | Owner_HouseholdIncome      |Input        |
      | ABCDEFGQWERTYUIO | JointOwner_HouseholdIncome |Input        |
    Then User clicks "Expand" button
    Then User Clicks on form "Page 1" Required for Form Menu "SoftLimitForm4"
    Then User fills soft Limit form data
      | Value  | data-dataitemid     |Locator Type |
      | O1234  | Owner_Comments      |textarea          |
      | JO5678 | JointOwner_Comments |textarea          |
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies the Select Documents to Print Dialog box
    Then User verifies Check Uncheck all
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | See #1, Addendum - SoftLimitForm1 |
      | See #2, Addendum - SoftLimitForm1 |
      | See #3, Addendum - SoftLimitForm1 |
      | See #4, Addendum - SoftLimitForm1 |
      | Addendum - SoftLimitForm1 |
      | Reference ID |
      | Overflow Content |
      | See #1, Addendum - SoftLimitForm3 |
      | See #3, Addendum - SoftLimitForm3 |
    Then User verifies pdf document contains 7 pages
    Then User verifies pdf text not present in Pdf For AuditReport
      | Addendum - SoftLimitForm2 |
      | Addendum - SoftLimitForm4 |
    Then User clicks "Expand" button
    Then User Clicks on form "Page 1" Required for Form Menu "SoftLimitForm2"
    Then User fills soft Limit form data
      | Value            | data-dataitemid                |Locator Type|
      | 1234567890ABCD   |  FLI_OWNER_EMAIL               |Input         |
      | 12345QWERT67890  | Owner_Address                  |Input         |
      | QWERTY123456744    | JointOwner_Email               |Input         |
      | ABCDEFGQWERTYUIO | JointOwner_EmpDetails_Address1 |Input         |
    Then User clicks "Expand" button
    Then User Clicks on form "Page 1" Required for Form Menu "SoftLimitForm4"
    Then User fills soft Limit form data
      | Value       | data-dataitemid     | Locator Type |
      | O124abcdefg | Owner_Comments      | textarea     |
      | JO578abcdef | JointOwner_Comments | textarea     |
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies the Select Documents to Print Dialog box
    Then User verifies Check Uncheck all
    And User verify document "SoftLimitForm1" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm2" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm3" exists in Select Documents to Print Dialog Box
    And User verify document "SoftLimitForm4" exists in Select Documents to Print Dialog Box
    And User verify document "Validation Report" exists in Select Documents to Print Dialog Box
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | See #1, Addendum - SoftLimitForm1 |
      | See #2, Addendum - SoftLimitForm1 |
      | See #3, Addendum - SoftLimitForm1 |
      | See #4, Addendum - SoftLimitForm1 |
      | Addendum - SoftLimitForm1 |
      | Reference ID |
      | Overflow Content |
      | See #5, Addendum - SoftLimitForm2 |
      | See #6, Addendum - SoftLimitForm2 |
      | See #7, Addendum - SoftLimitForm2 |
      | See #8, Addendum - SoftLimitForm2 |
      | Addendum - SoftLimitForm2 |
      | Reference ID |
      | Overflow Content |
      | See #1, Addendum - SoftLimitForm3 |
      | See #3, Addendum - SoftLimitForm3 |
      | See #9, Addendum - SoftLimitForm3 |
      | See #10, Addendum - SoftLimitForm3 |
      | Addendum - SoftLimitForm3 |
      | Reference ID |
      | Overflow Content |
      | See #11, Addendum - SoftLimitForm4 |
      | See #12, Addendum - SoftLimitForm4 |
      | Addendum - SoftLimitForm4 |
      | Reference ID |
      | Overflow Content |
    Then User verifies pdf document contains 9 pages
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" on signature window
    Then User clicks on Sign Now button
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User should be on page "Capture Electronic Signature"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "agent" signer on signature window
    Then User clicks on Sign Now button
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    Then User verifies toast message of "Finished 2 of 3 Steps. Please Continue."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User verifies the Select Documents to Print Dialog box

  @RegressionTest @RegAllActivityHP1React @RegressionTestHP1
  Scenario: TC_011_Verify New Group settings as Disable Share Full Control & Allow Limited Share functionality on App side
    Given User is on FireLight login page for TestCase "RegAllActivityHP1React_TC_011"
    Then User on Login Page enters valid username as "Deependra_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "EITS Wizard Product" for application
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User Now Clicks on Other Action tab
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "AutoUser1" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User verifies Username and Code is displayed in the first column
    Then User verifies "Share Full Control" is displayed in the second column
    Then User verifies Share Limited Control is not displayed in the third column
    Then User verifies "Share Read Only" is displayed in the fourth column
    Then User close the Share Activity Dialog box second
    Then User Logs Off from current Application