Feature: FireLight_Regression_SystemMasterHP1_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegSystemMasterHP1React @RegressionTestHP1
  Scenario: TC_001-Validate that Create New User Transfer Activity Email New User actions are executed from Custom  Action Multiple Action Button and access to FireLight is available with passcode
    Given User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Concierge Paper Workflow Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
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
    Then User verifies "Activity has a pending transfer of ownership." popup showing
    Then User clicks on "close" link
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
    Then User clicks on "close" link
    Then User Clicks on Button "Yes"
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                                    | Status Description          |
      | Transfer Activity Email Sent               | 'AUTOUser1' sent an email containing a link of the transferred activity to 'Gaurav Shankar' at address 'testhexure@gmail.com'. |
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegSystemMasterHP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Concierge Paper Workflow Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User sets values for prefilled form
      | Field         | Value                | data-dataitemid           | Locator Type |
      | Map Code      | 1234                 | FLI_NEW_USER_MAP_CODE     | Input        |
      | Role Code     | 5655                 | FLI_NEW_USER_ROLE_CODE    | Input        |
      | Email address | testhexure@gmail.com | FLI_NEW_USER_EMAIL        | Input        |
      | Full Name     | Horse                | FLI_NEW_USER_NAME         | Input        |
      | Date Of Birth | 10/10/1950           | FLI_NEW_USER_DOB          | Input        |
      | SSN           | 1234                 | FLI_NEW_USER_SSN_LASTFOUR | Input        |
    Then User Clicks On "Create User, Transfer, Email Custom Action (Concierge Paper Workflow)" On Data Entry Page
    Then User verifies "Activity has a pending transfer of ownership." popup showing
    Then User clicks on "close" link
    Then User verify "Read Only" is displayed on data entry page
    Then User opens Menu "Other Actions  ->Cancel Transfer"
    Then User verifies application in Edit mode pending request text is not display
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                                    | Status Description          |
      | Message Center Notification              | An email was sent to 'Gaurav Shankar' at address 'testhexure@gmail.com' with this message 'Application transfer cancelled |
    Then User Logs Off from current Application
