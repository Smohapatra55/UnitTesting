Feature: FireLight_Regression_SystemMasterHP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegSystemMasterHP1MVC @RegressionTestHP1
  Scenario: TC_002-Validate in Forms that Create New User Transfer Activity Email New User actions are excecuted from Custom  Action Multiple Action Button and access to FireLight is available with passcode
    Given User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Concierge Paper Workflow" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User sets values for prefilled form
      | Field         | Value                | data-dataitemid           | Locator Type |
      | Map Code      | 1234                 | FLI_NEW_USER_MAP_CODE     | Input        |
      | Role Code     | 5655                 | FLI_NEW_USER_ROLE_CODE    | Input        |
      | Email address | testhexure@gmail.com | FLI_NEW_USER_EMAIL        | Input        |
      | Full Name     | Horse                | FLI_NEW_USER_NAME         | Input        |
      | Date Of Birth | 10/10/1950           | FLI_NEW_USER_DOB          | Input        |
      | SSN           | 1234                 | FLI_NEW_USER_SSN_LASTFOUR | Input        |
    Then User Clicks On "Create User, Transfer, Email Custom Action (Concierge Paper Workflow)" On Data Entry Page
    Then reload the app
    Then User verifies "Application has a pending transfer of ownership." dialog message
    Then User clicks Close button on pending request page
    Then User verify "Read Only" is displayed on data entry page
    Then User select "passcode application" email with subject "Passcode Application AppName" on gmail page and save "body"
    Then User verify expected mailbody is "expectedPasscodeMailBody"
    Then User select "mail" email with subject "AppName - Activity Transferred" on gmail page and save "body"
    Then User verify expected mailbody is "expectedLinkMailBody"
    Then User select "complete signature" email with subject "AppName - Activity Transferred" on gmail page and save "email link"
    Then User select "passcode application" email with subject "Passcode Application AppName" on gmail page and save "passcode"
    Then User Loads the URL generated previously for "emailLink"
    Then User Logs in with "passCode"
    Then User sets values for prefilled form
      | Field         | Value                | data-dataitemid           | Locator Type |
      | Map Code      | 2222                 | FLI_NEW_USER_MAP_CODE     | Input        |
      | Role Code     | 3333                 | FLI_NEW_USER_ROLE_CODE    | Input        |
      | Email address | testhexure@gmail.com | FLI_NEW_USER_EMAIL        | Input        |
      | Full Name     | Horsee               | FLI_NEW_USER_NAME         | Input        |
      | Date Of Birth | 05/05/1950           | FLI_NEW_USER_DOB          | Input        |
      | SSN           | 5555                 | FLI_NEW_USER_SSN_LASTFOUR | Input        |
    Then User opens "Page 1" Required for Form "Application222"
    Then User selects value "Aunt" for field "JointOwner_Relationship"
    Then User sets values for prefilled form
      | Field           | Value      | data-dataitemid | Locator Type |
      | FirstName       | abcd       | Owner_FirstName | Input        |
      | LastName        | efgh       | Owner_LastName  | Input        |
      | Contract_Number | testhexure | Contract_Number | Input        |
    Then User clicks on "close" link
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User clicks Close button on pending request page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                                    | Status Description          |
      | Transfer Activity Email Sent               | 'AUTOUser1' sent an email containing a link of the transferred activity to 'Gaurav Shankar' at address 'testhexure@gmail.com'. |
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Concierge Paper Workflow" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User sets values for prefilled form
      | Field         | Value                | data-dataitemid           | Locator Type |
      | Map Code      | 1234                 | FLI_NEW_USER_MAP_CODE     | Input        |
      | Role Code     | 5655                 | FLI_NEW_USER_ROLE_CODE    | Input        |
      | Email address | testhexure@gmail.com | FLI_NEW_USER_EMAIL        | Input        |
      | Full Name     | Horse                | FLI_NEW_USER_NAME         | Input        |
      | Date Of Birth | 10/10/1950           | FLI_NEW_USER_DOB          | Input        |
      | SSN           | 1234                 | FLI_NEW_USER_SSN_LASTFOUR | Input        |
    Then User Clicks On "Create User, Transfer, Email Custom Action (Concierge Paper Workflow)" On Data Entry Page
    Then User verifies "Application has a pending transfer of ownership." dialog message
    Then User clicks Close button on pending request page
    Then User verify "Read Only" is displayed on data entry page
    Then User opens Menu "Other Actions  ->Cancel Transfer"
    Then User verifies application in Edit mode pending request text is not display
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                                    | Status Description          |
      | Message Center Notification              | An email was sent to 'Gaurav Shankar' at address 'testhexure@gmail.com' with this message 'Application transfer cancelled |
    Then User Logs Off from current Application

  @RegressionTest @RegSystemMasterHP1MVC @RegressionTestHP1
  Scenario: TC_015-New Section Break functionality works with group setting Allow Not In Good Order Submittals. Which means, when NIGO is enabled, and if the user want to submit the application with errors, they are allowed to do so. But movement from one page to another within the wizard is restricted based on the section breaks present in the wizard
    Given User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_015"
    Then User on Login Page enters valid username as "NIGO_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Section Break Product1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User Verifies Next Button does not Exist
    Then User clicks "Expand" button
    Then User close menu form
    Then User opens "Client Data" Optional for Form "SB Client Data"
    Then User close menu form
    Then User clicks on Joint Owner radio button
    Then User clicks on Yes Radio button of "Existing Policies Radio Button" in form page
    Then User Verifies Next Button Exists
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Owner" for data entry flow
    Then User Reload the page
    Then User Clicks Expand form menu
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User Clicks Continue
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User Verifies Signer "Insured"
    Then User Verifies Signer "Owner"
    Then User Verifies Signer "Agent"
    Then User Verifies Signer "AdditionalAgent"


  @RegressionTest @RegSystemMasterHP1MVC @RegressionTestHP1
  Scenario: TC_010-Navigation Link does not jump to a disabled page due to conditions of section break.
    Given User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Section Break Product1" for application
    Then User selects Optional Forms "Test Wiz DSB"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on link "Click to Navigate to- Test Form LN and Other tests" on Test Workflow Separator Page
    Then User "The requested page is not available." popup showing, Close Popup
    Then User clicks "Expand" button
    Then User close menu form
    Then User Clicks on link "Click to Navigate to- Test Wiz DSB" on Test Workflow Separator Page
    Then User "The requested page is not available." popup showing, Close Popup
    Then User Clicks on link "Click to Navigate to page 7" on Test Workflow Separator Page
    Then User "The requested page is not available." popup showing, Close Popup
    Then User verifies Page heading "Test Workflow Separator" with form name "Client Data" for data entry flow
    Then User Clicks on link "Navigate to external link" on Test Workflow Separator Page
    Then User verifies URL is redirected to "https://www.google.com/"
    Then User Navigates Back By Clicking on Back Button
    Then User clicks on home menu
    Then User open application from recent activity
    Then User clicks on Joint Owner radio button
    Then User clicks on Yes Radio button of "Existing Policies Radio Button" in form page
    Then User clicks "Expand" button
    Then User Clicks on form "Owner" Required for Form Menu "SB Owner"
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User Verifies Next Button Exists
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Joint Owner" for data entry flow
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Beneficiary" for data entry flow
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Parents" for field "Relationship to Owner"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User clicks on previous button
    Then User verifies Page heading "Test Workflow Separator" with form name "Joint Owner" for data entry flow
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User Clicks on Next Button
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Agent" for data entry flow
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | AgentFirstName |
      | Last Name  | AgentLastName  |
    Then User Clicks on Next Button
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User sets values for prefilled form
      | Field           | Value           | data-dataitemid | Locator Type |
      | Enter some text | Enter some text | Test Textbox    | Input        |
    Then User clicks "Expand" button
    Then User Clicks on form "Payment Details" Required for Form Menu "Section break last"
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User clicks "Expand" button
    Then User Clicks on form "Client Data" Required for Form Menu "SB Client Data"
    Then User Clicks on link "Click to Navigate to- Test Form LN and Other tests" on Test Workflow Separator Page
    Then User clicks "Expand" button
    Then User Clicks on form "Custom list Wiz" Required for Form Menu "Test Wiz DSB"
    Then User verifies Page heading "Test Wiz DSB" with form name "Custom list" for data entry flow
    Then User clicks "Expand" button
    Then User Clicks on form "Client Data" Required for Form Menu "SB Client Data"
    Then User Clicks on link "Click to Navigate to page 7" on Test Workflow Separator Page
    Then User verifies Page heading "Test Workflow Separator" with form name "Riders" for data entry flow

  @RegressionTest @RegSystemMasterHP1MVC @RegressionTestHP1
  Scenario: TC_014-Section Break in App workflow When section breaks are present on a wizard its heading appears first and then pages within the section break appears indented
    Given User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Section Break Product1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User Verifies Next Button does not Exist
    Then User clicks "Expand" button
    Then User verifies "Client Data" on "SB Client Data" is displaying in "red" color
    Then User opens "Client Data" Optional for Form "SB Client Data"
    Then User clicks on Joint Owner radio button
    Then User clicks on Yes Radio button of "Existing Policies Radio Button" in form page
    Then User Verifies Next Button Exists
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Owner" for data entry flow
    Then User Clicks Expand form menu
    Then User verifies "SB Owner" Main Form is displayed
    Then User Clicks on form "Owner" Required for Form Menu "SB Owner"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User Verifies Next Button Exists
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Joint Owner" for data entry flow
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Beneficiary" for data entry flow
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Parents" for field "Relationship to Owner"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User Verifies Next Button does not Exist
    Then User clicks on previous button
    Then User verifies Page heading "Test Workflow Separator" with form name "Joint Owner" for data entry flow
    Then User clicks "Expand" button
    Then User Verifies on form "Custom list Form" Required for Form Menu "Test Form DSB" is Disabled
    Then User close menu form
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User Clicks on Next Button
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Agent" for data entry flow
    Then User Now clicks on Data Entry Percentage, Error Menu list should appear, Click on First Green Office Use only Field "Test Workflow Separator/Agent - This field is required. (OFFICE USE ONLY)"
    Then User verifies Page heading "Test Workflow Separator" with form name "Agent" for data entry flow
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | AgentFirstName |
      | Last Name  | AgentLastName  |
    Then User Clicks on Next Button
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User sets values for prefilled form
      | Field           | Value           | data-dataitemid | Locator Type |
      | Enter some text | Enter some text | Test Textbox    | Input        |
    Then User Verifies Next Button does not Exist
    Then User clicks "Expand" button
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User Clicks on form "Payment Details" Required for Form Menu "Section break last"
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Form DSB" with form name "Custom list Form" for data entry flow
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User selects value "1" for field "Trigger Require field"
    Then User clicks "Expand" button
    Then User Clicks on form "Owner" Required for Form Menu "SB Owner"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User sets values for prefilled form
      | Field       | Value   | data-dataitemid  | Locator Type |
      | Middle Name | OwnerMN | Owner_MiddleName | Input        |
    Then User clicks "Expand" button
    Then User verifies "Client Data" on "SB Client Data" is not displaying in "red" color
    Then User verifies "Owner" on "SB Owner" is not displaying in "red" color
    Then User verifies "Joint Own" on "Owner Details" is not displaying in "red" color
    Then User verifies "Agent" on "Section Break Agent" is not displaying in "red" color

  @RegressionTest @RegSystemMasterHP1MVC @RegressionTestHP1
  Scenario: TC_016-Section Break in Account Opening workflow Next button is disabled unless data entry is complete
    Given User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Section Break Account Opening"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User Verifies Next Button does not Exist
    Then User clicks "Expand" button
    Then User verifies "Client Data" on "SB Client Data" is displaying in "red" color
    Then User opens "Client Data" Optional for Form "SB Client Data"
    Then User clicks on Joint Owner radio button
    Then User clicks on Yes Radio button of "Existing Policies Radio Button" in form page
    Then User Verifies Next Button Exists
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Owner" for data entry flow
    Then User Clicks Expand form menu
    Then User verifies "SB Owner" Main Form is displayed
    Then User Clicks on form "Owner" Required for Form Menu "SB Owner"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User Verifies Next Button Exists
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Joint Owner" for data entry flow
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Beneficiary" for data entry flow
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User Verifies Next Button does not Exist
    Then User clicks on previous button
    Then User verifies Page heading "Test Workflow Separator" with form name "Joint Owner" for data entry flow
    Then User clicks "Expand" button
    Then User Verifies on form "Custom list Form" Required for Form Menu "Test Form DSB" is Disabled
    Then User close menu form
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User Clicks on Next Button
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Workflow Separator" with form name "Agent" for data entry flow
    Then User Now clicks on Data Entry Percentage, Error Menu list should appear, Click on First Green Office Use only Field "Test Workflow Separator/Agent - This field is required. (OFFICE USE ONLY)"
    Then User verifies Page heading "Test Workflow Separator" with form name "Agent" for data entry flow
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | AgentFirstName |
      | Last Name  | AgentLastName  |
    Then User Clicks on Next Button
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User sets values for prefilled form
      | Field           | Value           | data-dataitemid | Locator Type |
      | Enter some text | Enter some text | Test Textbox    | Input        |
    Then User Verifies Next Button does not Exist
    Then User clicks "Expand" button
    Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
    Then User Clicks on form "Payment Details" Required for Form Menu "Section break last"
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User Clicks on Next Button
    Then User verifies Page heading "Test Form DSB" with form name "Custom list Form" for data entry flow
    Then User clicks "Expand" button
    Then User Clicks on form "Ancillary Form" Required for Form Menu "Section break last"
    Then User selects value "1" for field "Trigger Require field"
    Then User clicks "Expand" button
    Then User Clicks on form "Owner" Required for Form Menu "SB Owner"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User sets values for prefilled form
      | Field       | Value   | data-dataitemid  | Locator Type |
      | Middle Name | OwnerMN | Owner_MiddleName | Input        |
    Then User clicks "Expand" button
    Then User verifies "Client Data" on "SB Client Data" is not displaying in "red" color
    Then User verifies "Owner" on "SB Owner" is not displaying in "red" color
    Then User verifies "Joint Own" on "Owner Details" is not displaying in "red" color
    Then User verifies "Agent" on "Section Break Agent" is not displaying in "red" color