Feature: FireLight_Regression_EmailHP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_002_Validate the email delivery and replacement text
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Joint Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User verifies "FromName" TextBox value as "agentName"
    Then User verifies "FromEmail" TextBox value as "agentEmail"
    Then User Clicks Send Email request Button
    Then User select "joint owner complete filling application" email with subject "AppName - Please complete filling your Application" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"
    Then User Loads the URL generated previously for "URL"
    Then User Verifies Heading "Welcome"
    Then User verify page title is "External Signatures"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_001_Validate the email delivery and replacement text
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User Verifies Heading "Client Signature Choice for Owner"
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Heading "Send Email To Signer To Request Signatures"
    Then User enter all required "owner" details for sending mail on signature window
    Then User verifies "FromName" TextBox value as "agentName"
    Then User verifies "FromEmail" TextBox value as "agentEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "owner complete signature" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"
    Then User Loads the URL generated previously for "URL"
    Then User Login to External Link for "Primary Owner"
    Then User Clicks Sign Activity button
    Then User Clicks Agree Document Checkbox
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks on OK In Congratulation field Button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "agent email" email with subject "AppName Status Update - Client Signature" on gmail page and save "body"
    Then User verify expected mailbody is "statusUpdateMailContent"
    Then User select "signer download application" email with subject "Print or download your signed Application." on gmail page and save "email link"
    Then User verify expected mailbody is "printMailContent"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User selects "Agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Heading "Send Email To Signer To Request Signatures"
    Then User enter all required "agent" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "owner complete signature additionalContent" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify expected mailbody is "signatureReadymailContent"
    Then User Loads the URL generated previously for "URL"
    Then User Verifies Heading "Welcome"
    Then User verify page title is "External Signatures"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_003_Validate the email delivery and replacement text
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "agent" on signature window
    Then User should be on page "Agent Signature Choice for Agent"
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User Refresh the Page
    Then User application is "finished" and verify Popup message
    Then User clicks "Close" button on signature page
    Then User select "signer download application" email with subject "Print or download your signed Application." on gmail page and save "email link"
    Then User verify expected mailbody is "printMailContent"
    Then User Loads the URL generated previously for "URL"
    Then User Verifies Heading "Welcome"
    Then User verify page title is "External Signatures"
    Then User select "signer download application additionalContent" email with subject "Print or download your Application." on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"
    Then User select "email body" email with subject "Application Completed AppName" on gmail page and save "body"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_004_Validate the email delivery and replacement text
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_004"
    Then User on Login Page enters valid username as "CEUSER2_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User select "user email" email with subject "AppName Status Update: Ready for your signature" on gmail page and save "body"
    Then User verify expected mailbody is "printStatusUpdateContent"
    Then User selects "agent" on signature window
    Then User should be on page "Agent Signature Choice for Agent"
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User Refresh the Page
    Then User application is "finished" and verify Popup message
    Then User clicks "Close" button on signature page
    Then User select "signer download application" email with subject "Print or download your signed Application AppName." on gmail page and save "email link"
    Then User verify expected mailbody is "printMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_005_Validate the email delivery and replacement text for the Email Template Client Signed and Declined the Application
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User Verifies Heading "Client Signature Choice for Owner"
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Heading "Send Email To Signer To Request Signatures"
    Then User enter all required "owner" details for sending mail on signature window
    Then User verifies "FromName" TextBox value as "agentName"
    Then User verifies "FromEmail" TextBox value as "agentEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "owner complete signature" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"
    Then User Loads the URL generated previously for "URL"
    Then User Login to External Link for "Primary Owner"
    Then User Clicks Sign Activity button
    Then User Clicks Agree Document Checkbox
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Decline" button on signature page
    Then User Add some text to the Message body "I don't want to sign so.." and Click on Send button
    Then User should be on page "Declined Signature"
    Then User clicks "Exit" button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User select "agent email" email with subject "AppName Status Update - Client Signature" on gmail page and save "body"
    Then User verify expected mailbody is "statusUpdateMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_008_Validate the email delivery and replacement text for the Email Template Auto Submit Email
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_008"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI" for application
    Then User selects Optional Forms "Need Determination Wiz"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "Request Signers for AppName"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "agent" on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent: Dist05" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Ok" button
    Then User application is "finished" and verify Popup message
    Then User clicks "Close" button on signature page
    Then User select "agent email additionalContent" email with subject "Automatic Submission Notification" on gmail page and save "body"
    Then User verify expected mailbody is "printMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_010_Validate the email delivery and replacement text for the Email Templates User Share Request Single ActivityAccept User Share Single ActivityRevoke User Share Single Activity
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_010"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Form&Wiz Product" for application
    Then User selects Optional Forms "Application222"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then user clicks on other actions tab
    Then User click "Share" submenu
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User "Share Read Only" to "newOwnerName" on share activity page
    Then User verify "Read Only" share message on share activity page
    Then User clicks "X" button on share activity page
    Then User select "account email additionalContent" email with subject "Share Request: accountName - Application" on gmail page and save "email link"
    Then User verify expected mailbody is "activityShareMailContent"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "URL"
    Then User verify Thank you for using activity share should display
    Then User select "account email additionalContent" email with subject "accountName Accept Single Activity Share Request" on gmail page and save "body"
    Then User verify expected mailbody is "activityShareAcceptMailContent"
    Then User delete all the cookies from browser
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User Verifies data entry percentage is "98%"
    Then user clicks on other actions tab
    Then User click "Share" submenu
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "OK" on Confirmation Dialog
    Then User select "account email additionalContent" email with subject "userName has revoked the Application (Read Only) share request" on gmail page and save "body"
    Then User verify expected mailbody is "activityShareRevokeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_014_Validate the email delivery and replacement text for the Email Templates 1 Pre-Submit Review Queue Request Pre and Post Signature Pre Signature 2 PreSubmit Review Queue Approve Pre and Post Signature Pre Signature 3 Pre-Submit Reviewer Completed Application4 Passcode Notification
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React ESign Product" for application
    Then User selects Optional Forms "React LN Signer with Document Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Clicks on Send Email Request
    Then User should be on page "Email Requests Sent"
    Then User clicks on Back To App button
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigates to Home page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | VARIABLE ANNUITY APPLICATION |
      | JOINT OWNER |
    Then User verify "Approve" button is "enabled"
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User Logs Off from current Application
    Then User select "reviewer email additionalContent" email with subject "Please review the following Application" on gmail page and save "email link"
    Then User verify expected mailbody is "reviewApplicationMailContent"
    Then User select "passcode application" email with subject "Passcode Application AppName" on gmail page and save "body"
    Then User verify expected mailbody is "passcodeApplicationMailContent"
    Then User select "user email" email with subject "AppName Status Update - Reviewer Signature" on gmail page and save "body"
    Then User verify expected mailbody is "reviewStatusUpdateMailContent"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User select "reviewer1 email" email with subject "Application Completed" on gmail page and save "body"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_009_Validate the email delivery and replacement text for the Email Templates User Share RequestAll ActivitiesAccept User Share All Activities Revoke User Share All Activities
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_009"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User clicks "Share Cases" button on All Activities Page
    Then User enters "newOwnerName" on all activity page
    Then User clicks "Search" button on All Activities Page
    Then User selects "newOwnerNameFull" with "Share Full Control" on all activity page
    Then User verify "Full Control" share message for user "newOwnerNameFull" on all activity page
    Then User clicks "X" button on share activity page
    Then User select "account email additionalContent" email with subject "mailCurrentDate All Activities Share Request: accountName" on gmail page and save "email link"
    Then User verify expected mailbody is "activityShareMailContent"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "URL"
    Then User verify Thank you for using activity share should display
    Then User select "account email additionalContent1" email with subject "accountName Accept All Activities Share Request at mailCurrentDate" on gmail page and save "body"
    Then User verify expected mailbody is "activityAcceptMailContent"
    Then User delete all the cookies from browser
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User clicks "Share Cases" button on All Activities Page
    Then User enters "newOwnerName" on all activity page
    Then User clicks "Search" button on All Activities Page
    Then User "[Remove Share]" to "accountName" on share activity page
    Then User clicks "OK" on Confirmation Dialog
    Then User select "account email additionalContent2" email with subject "userName Revoked All Activities Share Request at mailCurrentDate" on gmail page and save "body"
    Then User verify expected mailbody is "activityRevokeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_006_Validate the email delivery and replacement text for the Email Template Declined E-Signature
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Jurisdiction1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    And User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User select "email body" email with subject "E-Signature Process Declined AppName" on gmail page and save "body"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_015_Validate the email delivery and replacement text for the Email Templates 1 Pre-Submit Review Queue Request Pre and Post Signature Post Signature 2 Pre-Submit Review Queue Approve Pre and Post Signature Post Signature 3 PostSubmit Review Queue Request 4 PostSubmit Review Queue Approve 5 Passcode Notification
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User selects "agent" on signature window
    Then User should be on page "Agent Signature Choice for Agent"
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User Clicks on Request Review
    Then User should be on page "Electronic Review"
    Then User clicks "Send request to reviewer" E-Review
    Then User should be on page "Send Email To Reviewer(s)"
    Then User verifies "FromName" TextBox value as "agentName"
    Then User verifies "FromEmail" TextBox value as "agentEmail"
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Verifies Passcode is displayed
    Then User Clicks on Send Email Request
    Then User should be on page "Email Requests Sent"
    Then User clicks on Back To App button
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigates to Home page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | Investment Profile |
      | Investment Prioritization  |
    Then User verifies pdf document contains 4 pages
    Then User verify "Approve" button is "enabled"
    Then User verify "Reject" button is "enabled"
    Then User verify "MoreInfo" button is "enabled"
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User Logs Off from current Application
    Then User select "reviewer email additionalContent" email with subject "Please review the following Application" on gmail page and save "email link"
    Then User verify expected mailbody is "reviewApplicationMailContent"
    Then User select "passcode application reviewer1" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User verify expected mailbody is "passcodeApplicationMailContent"
    Then User select "user email" email with subject "AppName Status Update - Reviewer Signature" on gmail page and save "body"
    Then User verify expected mailbody is "reviewStatusUpdateMailContent"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User open application from recent activity
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User Clicks "Close_PendingRequest" Button
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "RQ1"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | Investment Profile |
      | Investment Prioritization  |
    Then User verifies pdf document contains 4 pages
    Then User selects Queue as "RQ1"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verify "Approve" button is "enabled"
    Then User verify "Reject" button is "enabled"
    Then User verify "MoreInfo" button is "enabled"
    Then User clicks "Approve Application Button" from review queue
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies Application should not appear in review queue page
    Then User Log Off from current Application
    Then User select "account email additionalContent1" email with subject "Review Approval" on gmail page and save "body"
    Then User verify expected mailbody is "reviewApprovalMailContent"
    Then User select "reviewer1 email" email with subject "Application Completed" on gmail page and save "body"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_007_Validate the email delivery and replacement text for the Email Template Template Upload Email
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "99 %"
    Then User "This application has one or more template forms with document tags: [Voided Check]. Please upload the related documents from Other Actions -> Documents." popup showing, Close Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies Your name TextBox has "agentName"
    Then User Verifies Your Email TextBox has "agentEmail"
    Then User enters "insured" details on page
    Then User enters "Owner" details on page
    Then User Clicks "Send Email request" Button
    Then User select "agent email additionalContent" email with subject "Required Template Upload Notification" on gmail page and save "body"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_011_Validate the email delivery and replacement text for the Email Template Pending Signature Request Pre-Sale
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_011"
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
    Then User should be on page "List of Required Signers"
    Then User selects "Owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Your name TextBox has "fromName"
    Then User Verifies Your Email TextBox has "fromEmail"
    Then User set value "Owner Test" for field "Signer Name"
    Then User set value "testhexure@gmail.com" for field "Signer Email"
    Then User set value "1234" for field "* Signer Last 4 Digits of SSN/Government ID"
    Then User set value "11/11/1999" for field "* Signer Birth Date"
    Then User clicks "Send Email Request" button on signature page
    Then User select "owner complete signature" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_012_Validate the email delivery and replacement text for the Email Template Client Request to Fill Pre-Sale
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "DSB New Account Opening" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies Your name TextBox has "fromName"
    Then User Verifies Your Email TextBox has "fromEmail"
    Then User Selects the Signer Type as "Joint Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Send Email Request" button on signature page
    Then User select "owner complete signature" email with subject "AppName - Please complete your Account Opening" on gmail page and save "email link"
    Then User verify expected mailbody is "completeMailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_013_Validate the email delivery and replacement text for the Email Template Download Completed Pre-Sale
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_013"
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
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Account opening is finished."
    Then User clicks on Close icon on Toast Popup
    Then User select "owner download application" email with subject "Print or download your signed Account Opening AppName" on gmail page and save "email link"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_016_Validate the email delivery and replacement text for the Email Template PreSubmit Review Queue Decline Pre and Post Signature Pre Signature
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React ESign Product" for application
    Then User selects Optional Forms "React LN Signer with Document Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User should be on page "Send Email To Reviewer(s)"
    Then User Verifies Your name TextBox has "FromName"
    Then User Verifies Your Email TextBox has "FromEmail"
    Then User Clicks on Add to Reviewer link
    Then User sets value "Sunil Sharma"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to Sunil Sharma at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigates to Home page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | VARIABLE ANNUITY APPLICATION |
      | JOINT OWNER  |
    Then User verifies pdf document contains 5 pages
    Then User verify "Approve" button is "enabled"
    Then User verify "Reject" button is "enabled"
    Then User verify "MoreInfo" button is "enabled"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User lets the default message and clicks on Reject button
    Then User select "agent email" email with subject "AppName Status Update - Reviewer Signature" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_017_Validate the email delivery and replacement text for the Email Template Pre-Submit Review Queue Decline Pre and Post Signature Post Signature
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks "Sign Now" button on signature page
    Then User set value "1234" for field "ID Number"
    Then User set value "Owner Test" for field "Name"
    Then User set value "testhexure@gmail.com" for field "Email Address"
    Then User set value "1234" for field "Last 4 Digits of SSN/Government ID"
    Then User set value "11/11/1999" for field "Birth Date"
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "TestOwner" City as "TestCity" Then perform Signature and click I Consent
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User Clicks on Request Review
    Then User should be on page "Electronic Review"
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User Verifies Your name TextBox has "FromName"
    Then User Verifies Your Email TextBox has "FromEmail"
    Then User Clicks on Add to Reviewer link
    Then User sets value "Sunil Sharma"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to Sunil Sharma at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigates to Home page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | Investment Profile|
      | Investment Prioritization  |
    Then User verifies pdf document contains 4 pages
    Then User verify "Approve" button is "enabled"
    Then User verify "Reject" button is "enabled"
    Then User verify "MoreInfo" button is "enabled"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User lets the default message and clicks on Reject button
    Then User select "agent email" email with subject "AppName Status Update - Reviewer Signature" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_019_Validate the email delivery and replacement text for the Email template Review Queue More Info Reply PreSubmit
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React ESign Product" for application
    Then User selects Optional Forms "React LN Signer with Document Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User should be on page "Send Email To Reviewer(s)"
    Then User Verifies Your name TextBox has "FromName"
    Then User Verifies Your Email TextBox has "FromEmail"
    Then User Clicks on Add to Reviewer link
    Then User sets value "Sunil Sharma"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to Sunil Sharma at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigates to Home page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | VARIABLE ANNUITY APPLICATION |
      | JOINT OWNER  |
    Then User verifies pdf document contains 5 pages
    Then User verify "Approve" button is "enabled"
    Then User verify "Reject" button is "enabled"
    Then User verify "MoreInfo" button is "enabled"
    Then User clicks on more info button
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User verify pop up message displays progress as "1" out of "4" steps on signature page
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Clicks on Close link at bottom of the popup
    Then User select "agent email" email with subject "Reviewer – More Info Received: AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_018_Validate the email delivery and replacement text for the Email Template PostSubmit Review Queue Decline
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks Submit link
    Then User verifies Submit Confirmation Message
    Then User Clicks on "Yes" button
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "RQ1"
    Then User enters App Name in search box then click search Icon
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | Investment Profile|
      | Investment Prioritization  |
    Then User verifies pdf document contains 4 pages
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User lets the default message and clicks on Reject button
    Then User select "agent email additionalContent" email with subject "Review Rejected" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent"

  @RegressionTest @RegEmailHP1MVC @RegressionTestHP1
  Scenario: TC_020_Validate the email delivery and replacement text for the Email Template Review Queue More Info Reply PostSubmit
    Given User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks Submit link
    Then User clicks Lock and Review Order
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks on Close icon on Toast Popup
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "RQ1"
    Then User enters App Name in search box then click search Icon
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | Investment Profile|
      | Investment Prioritization  |
    Then User verifies pdf document contains 4 pages
    Then User clicks on more info button
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User clicks on more info button
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegEmailHP1MVC_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Review: Info Requested"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Clicks on Close link at bottom of the popup
    Then User select "agent email" email with subject "Reviewer – More Info Received: AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent"
