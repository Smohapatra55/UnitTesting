Feature: FireLight_Regression_AllActivityHP2_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_013-Verify cumulative document upload limit is set at organization settings.
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Wizard Product- Whitepages"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB.Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample4MB"
    Then User clicks "Upload" button
    Then User verifies toast message "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size." in React Page
    Then User Verifies Uploaded file is "Sample4MB" for "Other" Document type and Size Of File Does Not Appear
    Then User Clicks on Button "Close"
    Then User clicks on "close" link
    Then User clicks "Continue" button
    Then User Clicks on Button "Yes"
    Then User verifies application is display in Locked mode
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Signature page
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User Verifies Total size Shows Blank
    Then User Verifies Remaining Size Shows Blank
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB.Cumulative file size to be maximum of 5 MB."
    Then User Clicks on Button "Close"


  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_014-Verify Cumulative upload size limit for both distributer and their Carrier
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB.Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User Clicks on Button "Close"
    Then User verifies Page heading "Annuity Wizard" with form name "Client Data" for data entry flow
    Then User Clicks on Button "Upload "
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User Clicks on Button "Close"
    Then User Navigates to Home Page

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_001_Verify FLI_REQUIREMANUALREVIEW data item ID functionality with false value in it for Limited share complete signing and PSR on
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User Verifies Data Entry Met Toast popup is show
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | false | FLI_REQUIREMANUALREVIEW | Input        |
    Then User verifies "REVIEW" Tab from NavBar disappears
    Then User Now Clicks on Other Action tab and  Clicks on "Share"
    Then User verifies Share My Activities Dialog box is showing
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User Clicks on Complete Signing Checkbox
    Then User verifies "Complete Signing activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User clicks "X" button on share activity page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_001"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_001"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User verifies "REVIEW" Tab from NavBar disappears
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Trustee" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : AutoUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AutoUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Signatures Complete" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Agent On-Site Signature Approved" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Client On-Site Signature Approved" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                    |
      | Client On-Site Signature Approved | was signed by FullName Signer 'Trustee' from within City 'Pune'. |
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Signatures Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Signatures Complete"
    Then User open application from recent activity
    Then User verifies "FINALIZE" current tab
    Then User verifies toast message "Finished 2 of 3 Steps."
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Activity Share Accepted" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History status
      | Status                        | Status Description          |
      | Agent On-Site Signature Approved | was signed by Agent |
    Then User clicks cross button
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Reload the page
    Then User verifies application is "finished" with toast popup

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_023_Verify that total upload size will not be limited if no limit is specified at Org setting Using Upload Template React
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_023"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Upload Template Product WIZ" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "template forms with document tags: [Voided Check]." popup showing, Close Popup
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 2 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies value "Voided Check" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Total size showing as "891 KB" on the document window
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "1.74 MB" on the document window
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "2.61 MB" on the document window

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_024_VVerify that user can upload documents in Reviewer Document upload section in pre signature review.
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_024"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React ESign Product" for application
    Then User selects Optional Forms "React LN Signer with Document Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User Verifies Your name TextBox has "agentName"
    Then User Verifies Your Email TextBox has "agentEmail"
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Verifies Passcode is displayed
    Then User Clicks on Send Email Request
    Then User should be on page "Email Requests Sent"
    Then User clicks on Back To App button
    Then User Notes the Passcode from Pending Request dialog
    Then User Notes the Passcode from Pending Request dialog
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks on "Cancel Request" link
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User clicks on "Attach Documents" link in Review Queue Page
    Then User Verifies Popup Heading As "Reviewer Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB."
    Then User Verifies Total size is not displaying any value
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample2.5MB" for "Reviewer Documents" Document type and Size Of File Appears at Reviewer Docs
    Then User Verifies Total size showing as "1.8 MB" on the reviewer document window
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "3.6 MB" on the reviewer document window
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "5.4 MB" on the reviewer document window


  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_002_Verify FLI_REQUIREMANUALREVIEW data item ID functionality with false value in it for Limited share Complete Signing Without Primary Agent PSR on
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User Verifies Data Entry Met Toast popup is show
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Now Clicks on Other Action tab and  Clicks on "Share"
    Then User verifies Share My Activities Dialog box is showing
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User verifies "newOwnerName" is showing after search
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User Clicks on Primary Agent Checkbox from Shared Limited Control
    Then User verifies "Complete Signing without Primary Agent activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    Then User verifies Audit History status
      | Status          | Status Description                                                         |
      | Activity Shared | has shared “Complete Signing without Primary Agent” for this activity with |
    Then User clicks cross button
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_002"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User Verifies data entry percentage is "100%"
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Trustee" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies "Agent : AutoUser1" button should be disabled
    Then User clicks "Back To Application" button
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Client On-Site Signature Approved" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks on Close icon on Toast Popup
    Then User Now Clicks on Other Action tab and  Clicks on "Share"
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "OK" on Confirmation Dialog
    Then User clicks "X" button on share activity page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Client Signatures Complete" on history dialog
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_002"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User verifies application is not displayed in shared activity


  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_021_Verify that Client is not able to upload more documents if Agent has used Max cumulative size limit when uploading documents on Agent side Using Client Fill or Fill & Sign
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Form&Wiz Product"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB.Cumulative file size to be maximum of 5 MB."
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "DocumentType"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Clicks on Button "Close"
    Then User Close the Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User enters "Owner" details on page
    Then User clicks "Generate Link Without Email" button on signature page
    And User verifies link is generated and store it
    Then User Clicks Back to App button
    Then User verifies dialog window "Pending Requests"
    Then User stores "secondary signer" passcode as "owner"
    Then User Clicks on Button "Close"
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "receipantLink(url)"
    Then User Logs in with "ownerPasscode"
    Then User clicks "Attach Documents" button on page
    Then User selects value "Medical Exam - Part 2" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_004_Ltd Share PSR RMR False DESign True Verify Complete Signing and CS Without Primary Agent share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User sets values for prefilled form
      | Field                      | Value | data-dataitemid    | Locator Type |
      | Decline E-Sign True/False: | True  | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Signing" check box
    Then User verifies "Complete Signing activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status          | Status Description                                                                                     |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared “Complete Signing” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_004"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies "first" "SIGNATURES" navbar tab showing "minus-circle" icon
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status              | Status Description                   |
      | Back Office Message | All Back Office Processing Complete. |
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Complete" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Submit Requested" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Submitted" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User open application from recent activity
    Then User navigates to Home page
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Continue button Enabled
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User sets values for prefilled form
      | Field                      | Value | data-dataitemid    | Locator Type |
      | Decline E-Sign True/False: | True  | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User search "Deep05" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User clicks on Share Limited Control
    Then User verifies the data is present with not selected check box
      | Complete Data Entry                    |
      | Complete Signing Without Primary Agent |
      | Complete Signing                       |
      | Complete Pre-Signature Review          |
    Then User select "Complete Signing Without Primary Agent" check box
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing without Primary Agent"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_004"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
        Then User Verifies "second" "SIGNATURES" navbar tab showing "minus-circle" icon
    Then User verifies prefilled Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Complete" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status              | Status Description                   |
      | Back Office Message | All Back Office Processing Complete. |
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Submit Requested" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Submitted" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User open application from recent activity
    Then User application is "finished" and verify Popup message

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_003_Verify FLI_REQUIREMANUALREVIEW data item ID functionality with false value in it for Limited share Complete Pre-Signature Review PSR on
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Now Clicks on Other Action tab and  Clicks on "Share"
    Then User verifies Share My Activities Dialog box is showing
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User Select Pre Signature Review Checkbox
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User clicks "X" button on share activity page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status          | Status Description                                                                                                  |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared “Complete Pre-Signature Review” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User Loads the URL generated by previous actions "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_003"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User Verifies data entry percentage is "100%"
    Then User verifies prefilled data form text fields
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
    Then User Clicks on Continue Button and Verifies same page
    Then User verifies "Continue" Button should be disable
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "E-Approval Process was Bypassed"
    Then User clicks cross button
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History status
      | Status          | Status Description                                                                                                  |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared “Complete Pre-Signature Review” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User clicks cross button
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Pre-Submit Review Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review Complete"
    Then User open application from recent activity
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User should be on page "List of Required Signers"
    Then User Verifies Signer "Owner"
    Then User Verifies Signer "Trustee"

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_005_Ltd Share PSR D ESIGN FLI Tag True Verify Complete Pre Signature Review share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User verifies Pre-Sign Review is displayed
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                      | Value | data-dataitemid    | Locator Type |
      | Decline E-Sign True/False: | True  | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Pre-Signature Review" check box
    Then User verifies "Complete Pre-Signature Review activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Pre-Signature Review"
    Then User verifies left section "Activity Shared" audit showing
    Then User close the Share Activity Dialog box
    Then User clicks log off
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_005"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100%"
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Send Request to Reviewer(s)" E-Review
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Clicks on Send Email Request
    Then User should be on page "Email Requests Sent"
    Then User clicks on Back To App button
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User Loads external link as generated and Login with passcode
    Then User Verifies on page "Review Queue"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verify "Approve" button is "enabled"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User verifies heading contains Application Name and It should be in "red"
    Then User Enters Optional Note as "Application Approved through external reviewer link. Thanks!"
    Then User verifies confirmation popup is appear
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_005"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User select the activity from shared activity tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "The review process has completed"
    Then User verifies share audit records as "Activity was locked to begin the review process."
    Then User close the Share Activity Dialog box
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User open application from recent activity
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Close the Popup
    Then User clicks "yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_006_Ltd Share PSR D ESIGN FLI Tag False Verify Complete Pre Signature Review share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies Pre-Sign Review is displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                      | Value | data-dataitemid    | Locator Type |
      | Decline E-Sign True/False: | False | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Pre-Signature Review" check box
    Then User verifies "Complete Pre-Signature Review activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Pre-Signature Review"
    Then User verifies left section "Activity Shared" audit showing
    Then User close the Share Activity Dialog box
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_006"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User Verifies data entry percentage is "100%"
    Then User verifies "REVIEW" Tab is showing near "DATA ENTRY" tab
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
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
    Then User verifies PDF "DisplayApplication" is generated
    Then User verify "Approve" button is "enabled"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User verifies heading contains Application Name and It should be in "red"
    Then User Enters Optional Note as "Application Approved through external reviewer link. Thanks!"
    Then User verifies confirmation popup is appear
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_006"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User select the activity from shared activity tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "The review process has completed"
    Then User verifies share audit records as "Activity was locked to begin the review process."
    Then User close the Share Activity Dialog box
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "List of Required Signers"

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_007_Ltd Share PSR RMR False DESign True Verify Complete Signing and CS Without Primary Agent share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | True  | FLI_REQUIREMANUALREVIEW | Input        |
    Then User sets values for prefilled form
      | Field                      | Value | data-dataitemid    | Locator Type |
      | Decline E-Sign True/False: | True  | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Signing Without Primary Agent" check box
    Then User verifies "Complete Signing without Primary Agent activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing without Primary Agent"
    Then User verifies left section "Activity Shared" audit showing
    Then User verifies Audit History status
      | Status          | Status Description                                                                                                           |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared “Complete Signing without Primary Agent” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User clicks cross button
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_007"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
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
    Then User Verifies on page "Review Queue"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verify "Approve" button is "enabled"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User verifies heading contains Application Name and It should be in "red"
    Then User Enters Optional Note as "Application Approved through external reviewer link. Thanks!"
    Then User verifies confirmation popup is appear
    Then User verifies Application should not appear in review queue
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_007"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User select the activity from shared activity tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User Verifies "first" "SIGNATURES" navbar tab showing "minus-circle" icon
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "The review process has completed"
    Then User verifies share audit records as "Pre-Submit Review: Approved"
    Then User verifies Audit History statuses
      | Status                     | Status Description                                                 |
      | Review Complete            | The review process has completed.                                  |
      | Review Approval Email Sent | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Activity Approved          | Application Approved through external reviewer link. Thanks!       |
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies Popup message as "Application will be submitted."
    Then User Verifies Popup message as "No further edits will be allowed."
    Then User Verifies Popup message as "Are you sure?"
    Then User clicks on Close icon on Toast Popup
    Then User clicks "yes" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_008_Ltd Share PSR Verify Complete PreSignature Review share with Revoke share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies Pre-Sign Review is displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Pre-Signature Review" check box
    Then User verifies "Complete Pre-Signature Review activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status          | Status Description                                                                                                  |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared “Complete Pre-Signature Review” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User clicks log off
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_008"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User Verifies data entry percentage is "100%"
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                  | Status Description                                                                             |
      | Activity Share Accepted | 'Deep05_FLADEMO2_AUTO' has accepted the activity share request from 'AUTOUser1_FLADEMO2_AUTO'. |
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Now Navigate to All Activities page
    Then User provides the first login username as "AUTOUser1_FLADEMO2_AUTO" and clicks on search
    Then User selects clicks on "AUTOUser1_FLADEMO2_AUTO" in list
    Then User verifies New Application Added on All Activities Page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies the "Deep05_FLADEMO2_AUTO " is showing in result list
    Then User verifies "Complete Pre-Signature Review activity share request sent on" message
    Then User verifies Remove Share is showing
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User verifies the "Deep05_FLADEMO2_AUTO " is not showing in result list
    Then User verifies "Disappeared" message
    Then User verifies "[Remove Share]" is not showing
    Then User close the Share Activity Dialog box second
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                                                                           |
      | Activity Share Revoked | 'AUTOUser1_FLADEMO2_AUTO' has revoked sharing “Complete Pre-Signature Review” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_008"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "Complete Data Entry" not showing any more

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_009_Ltd Share PSR Verify Complete Signing Ceremony with primary agent share with Revoke share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies Pre-Sign Review is displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Signing" check box
    Then User verifies "Complete Signing activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing"
    Then User verifies left section "Activity Shared" audit showing
    Then User verifies Audit History statuses
      | Status          | Status Description                                                                                     |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared “Complete Signing” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_009"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100%"
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                  | Status Description                                                                             |
      | Activity Share Accepted | 'Deep05_FLADEMO2_AUTO' has accepted the activity share request from 'AUTOUser1_FLADEMO2_AUTO'. |
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Now Navigate to All Activities page
    Then User provides the first login username as "AUTOUser1_FLADEMO2_AUTO" and clicks on search
    Then User selects "FLADEMO2_AUTO0015" from drop down list
    Then User verifies New Application Added on All Activities Page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies the "Deep05_FLADEMO2_AUTO " is showing in result list
    Then User verifies "Complete Signing activity share request sent on" message
    Then User verifies Remove Share is showing
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "OK" Revoke User Share Request dialog box
    Then User close the Share Activity Dialog box second
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                                                              |
      | Activity Share Revoked | 'AUTOUser1_FLADEMO2_AUTO' has revoked sharing “Complete Signing” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_009"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "Complete Data Entry" not showing any more

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_010_Ltd Share PSR Verify Complete Signing Ceremony with primary agent share with Revoke share
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_010"
    Then User on Login Page enters valid username as "Ravi_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User waits for page to load
    Then User selects Given Product "FL024 TFS 34710 TTEE Product"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User verifies result is displayed or not
    Then User select "Complete Signing" check box
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing"
    Then User verifies left section "Activity Shared" audit showing
    Then User close the Share Activity Dialog box
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_010"
    Then User on Login Page enters valid username as "Ravi05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User verifies prefilled data Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Trustee" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then User verifies page change by clicking next arrow
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : Ravinder Singh" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : Ravinder Singh"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Signatures Complete" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Agent On-Site Signature Approved" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Client On-Site Signature Approved" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                    |
      | Client On-Site Signature Approved | was signed by FullName Signer 'Trustee' from within City 'Pune'. |
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Signatures Complete"
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_010"
    Then User on Login Page enters valid username as "Ravi_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Signatures Complete"
    Then User open application from recent activity
    Then User verifies toast message of "Finished 2 of 3 Steps. Please Continue."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Share Accepted" on history dialog
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User verifies toast message "Application is finished." on Signature page


  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_011_Verify Audit History for NIGO Submittals- Application Activity
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_011"
    Then User on Login Page enters valid username as "NIGO_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Section Break Product1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User clicks red bubble icon
    Then User verifies data fields checkbox are not selected
      | data-dataitemid       | Locator Type |
      | Individual            | checkbox     |
      | Joint                 | checkbox     |
      | Trust                 | checkbox     |
      | Corporate             | checkbox     |
      | Non-Qualified Account | checkbox     |
    Then User Verifies Continue button Enabled
    Then User select the checkbox for required fields
      | Individual            |
      | Joint                 |
      | Trust                 |
      | Corporate             |
      | Non-Qualified Account |
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks initials check box and enters "DM"
    Then User clicks "Ok" on Confirmation Dialog
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Next Page" button 3 times till last page
    Then User clicks initials check box and enters "DM"
    Then User clicks "Ok" on Confirmation Dialog
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 3 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "agent" signer on signature window
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "AgentName"  for field "Agent" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent 2" button on Signature Tab
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "AgentName"  for field "Agent" for To Signature tab
    Then User sets value "1234"  for field "Agent ID" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies toast message of "Finished 2 of 3 Steps. Please Continue."
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User clicks "yes" on Confirmation Dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Signature page
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                        |
      | NIGO Enabled Submitted | submitted with active group setting 'Allow Not in Good Order Submittals'. |
    Then User navigate to home page
    Then User Log Off from current Application


  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_012_Verify Audit History for NIGO Submittals- Needs Determination Activity
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_012"
    Then User on Login Page enters valid username as "NIGO_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Need Determination- For Automation script" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User verifies toast message of "The Needs Determination has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User clicks red bubble icon
    Then User verifies prefilled data Form text fields
      | data-dataitemid         | Locator Type |
      | Owner_FirstName       | Input        |
      | Owner_LastName        | Input        |
    Then User Verifies Continue button Enabled
    Then User fills values for prefilled form
      | Field      | Value   | data-dataitemid | Locator Type |
      | First name | OwnerFN | Owner_FirstName | Input        |
      | Last Name  | OwnerLN | Owner_LastName  | Input        |
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "agent" signer on signature window
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "AgentName"  for field "Agent" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User clicks "yes" on Confirmation Dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                        |
      | NIGO Enabled Submitted | submitted with active group setting 'Allow Not in Good Order Submittals'. |
    Then User navigate to home page
    Then User Log Off from current Application

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_015-Verify that total upload size will not be limited if no limit is specified at Org setting
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Wizard Product- Whitepages"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 2 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User verifies "Maximum File Size Exceeded" popup showing
    Then User verifies toast message "The selected file is larger than the maximum of 2 MB. Reduce file resolution to reduce file size." in React Page

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_016-Verify that documents is opening when clicking on a Custom Action Button
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_016"
    Then User on Login Page enters valid username as "Autouser1_flademo" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wizard"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User Clicks On "Custom File Upload" On Data Entry Page
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB.Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User clicks "Close" button
    Then User clicks on Close icon on Toast Popup
    Then User Clicks On "Custom File Upload" On Data Entry Page
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample4MB"
    Then User clicks "Upload" button
    Then User verifies "Maximum File Size Exceeded" popup showing
    Then User verifies toast message "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size." in React Page
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User clicks "Close" button
    Then User clicks on Close icon on Toast Popup
    Then User Clicks On "Custom File Upload" On Data Entry Page
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User verifies "Cumulative Maximum File Size Exceeded" popup showing
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User clicks "Close" button
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verifies application is display in Locked mode
    Then User verifies toast message "Finished 1 of 3 Steps."
    Then User opens Menu "Other Actions  ->Documents"
    Then User Verifies Uploaded file is "BlueSkyInsuranceTicketApplication" for "BlueSkyInsuranceTicketApplication" Document type and Size Of File is blank
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User clicks "Close" button
    Then User clicks "Continue" button
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Application is finished."

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_018_Verify that total upload size will not be limited if no limit is specified at Org setting For Custom Action Button.
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User Clicks On "Custom File Upload" On Data Entry Page
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 2 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Total size showing as "891 KB" on the document window
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "1.74 MB" on the document window
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "2.61 MB" on the document window

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_019-Verify that documents is opening when clicking Using Client Fill or Fill & Sign
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Addendum Product- Forms&Wiz"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User clicks Close button on pending request page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User "open" new tab in browser
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Login to External Link for "Receipant"
    Then User clicks "Attach Documents" button on page
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample4MB"
    Then User clicks "Upload" button
    Then User verifies "Maximum File Size Exceeded" popup showing
    Then User verifies toast message "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size." in React Page
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User verifies "Cumulative Maximum File Size Exceeded" popup showing
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page
    Then User Closes Documents Window
    Then User Clicks CompleteLog off Tab
    Then User Clicks on Submit and logoff button
    Then User "closes" new tab in browser

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_020-Verify that Reamaining size displays on client side when a type of document is uploaded on Agent side (Using Client Fill or Fill & Sign)
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Form&Wiz Product"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup and stores the remaining Size
    Then User Closes Documents Window
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User set value "Owner Test" for field "Name"
    Then User set value "testhexure@gmail.com" for field "Email"
    Then User set value "1234" for field "Last 4 Digits of SSN/Government ID"
    Then User set value "01/01/1980" for field "* Birth Date"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User clicks Close button on pending request page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User "open" new tab in browser
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Login to External Link for "Receipant"
    Then User clicks "Attach Documents" button on page
    Then User verifies dialog window "Documents"
    Then User Compares the Remaining Size
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User verify error message "Document type already uploaded."

  @RegressionTest @RegAllActivityReactHP2 @RegressionTestHP2
  Scenario: TC_022-Verify that 'Documents' is opening when clicking on a 'Upload Template button'.
    Given User is on FireLight login page for TestCase "RegAllActivityReactHP2_TC_022"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Upload Template Product WIZ" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on Close icon on Toast Popup
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB.Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies value "Voided Check" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Voided Check" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User clicks "Remove" button for application "Voided Check" on select documents to print page
    Then User verify document for "Sample2.5MB" does not exists on select documents to print page
    Then User clicks "Close" button
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Document Type"
    Then User uploads Document "Sample4MB"
    Then User clicks "Upload" button
    Then User verifies "Maximum File Size Exceeded" popup showing
    Then User verifies toast message "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size." in React Page
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies value "Illustration" for field "Document Type"
    Then User selects value "Medical Exam - Part 2" for field "Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Medical Exam - Part 2" Document type and Size Of File Appears
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User selects value "Voided Check" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Voided Check" Document type and Size Of File Appears
    Then User selects value "Other" for field "Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User verifies "Cumulative Maximum File Size Exceeded" popup showing
    Then User verifies toast message "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed." in React Page
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User clicks "Close" button
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "OK" button on signature page
    Then User verifies application is display in Locked mode
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User Verifies Uploaded file is "BlueSkyInsuranceTicketApplication" for "BlueSkyInsuranceTicketApplication" Document type and Size Of File is blank
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User clicks "Close" button
    Then User clicks "Continue" button
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Application is finished"
