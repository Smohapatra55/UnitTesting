Feature: FireLight_Regression_AllActivityHP2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_001_Verify FLI_REQUIREMANUALREVIEW data item ID functionality with false value in it for Limited share complete signing and PSR on
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
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
    Then User clicks Link "[Close]"
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
    Then User Clicks on Complete Signing Checkbox
    Then User verifies "Complete Signing activity share request sent on" message
    Then User stores the shared link
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User clicks "X" button on share activity page
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Verifies message "Thank you for using activity share"
    Then User Verifies second message "You have successfully accepted the activity share."
    Then User delete all the cookies from browser
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_001"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
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
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Signatures Complete" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Agent On-Site Signature Approved" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Client On-Site Signature Approved" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                    |
      | Client On-Site Signature Approved | was signed by FullName Signer 'Trustee' from within City 'Pune'. |
    Then User navigates to Home page
    Then User clicks on shared Activity Tab verifies the application is displayed
    Then User Verifies Application Status as "Signatures Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Signatures Complete"
    Then User open application from recent activity
    Then User verifies "Finalize" is "current" tab
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Activity Share Accepted" on history dialog
    Then User Clicks on Continue button
    Then User verifies Submit Confirmation Message
    Then User Clicks on "Yes" button
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_002_Verify FLI_REQUIREMANUALREVIEW data item ID functionality with false value in it for Limited share Complete Signing Without Primary Agent PSR on
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
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
    Then User clicks Link "[Close]"
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
    Then User accept share URL on share activity page
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User clicks "X" button on share activity page
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_002"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
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
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Client On-Site Signature Approved" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User verifies "Signature" is "current" tab
    Then User Now Clicks on Other Action tab and  Clicks on "Share"
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User "[Remove Share]" to "newOwnerName" on share activity page
    Then User clicks "OK" on Confirmation Dialog
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Client Signatures Complete" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing without Primary Agent"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                                                                                    |
      | Activity Share Revoked | 'AUTOUser1_FLADEMO2_AUTO' has revoked sharing “Complete Signing without Primary Agent” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_002"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verify application is not displayed at Recent Activity

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_015_Verify that total upload size will not be limited if no limit is specified at Org setting
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 2 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 2 MB. Reduce file resolution to reduce file size."

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_013-Verify cumulative document upload limit is set at organization settings.
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Medical Exam - Part 2" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample4MB"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size."
    Then User Verifies Upload button is Disabled
    Then User Verifies Uploaded file is "Sample4MB" for "Other" Document type and Size Of File Does Not Appear
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verifies application is display in Locked mode
    Then User opens Menu "Other Actions  ->Documents"
    Then User Verifies Uploaded "Application" Size Of File is blank
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User Clicks on "Yes" on confirmation dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_003_Verify FLI_REQUIREMANUALREVIEW data item ID functionality with false value in it for Limited share Complete Pre-Signature Review PSR on
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
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
    Then User clicks Link "[Close]"
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Now Clicks on Other Action tab and  Clicks on "Share"
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User " Share Limited Control" to "newOwnerName" on share activity page
    Then User Select Pre Signature Review Checkbox
    Then User verifies "Complete Pre-Signature Review activity share request sent on" message
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    Then User verifies Audit History status
      | Status          | Status Description                                                                                                |
      | Activity Shared | 'AUTOUser1_FLADEMO2_AUTO' has shared Complete Pre-Signature Review for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User clicks cross button
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_003"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User open application from shared activity
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
    Then User clicks "Continue" button
    Then User Verifies Final popup after application submitted with message "You do not have permission to finalize the application. Your job is done!"
    Then User clicks on Close icon on Toast Popup
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then user clicks on other actions tab
    Then User click "History" submenu
    And User verify audit entries contains "E-Approval Process was Bypassed" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Pre-Submit Review Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review Complete"
    Then User open application from recent activity
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User should be on page "List of Required Signers"
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Trustee" under list of required signers section on signature page


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_004_Ltd Share PSR RMR False DESign True Verify Complete Signing and CS Without Primary Agent share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
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
    Then User clicks Link "[Close]"
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
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Signing"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_004"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User verifies Submit Confirmation Message
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User Reload the page
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status          | Status Description                |
      | Back Office Message | All Back Office Processing Complete. |
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Complete" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User open application from recent activity
    Then User application is "finished" and verify Popup message
    Then User clicks "Close" button on signature page
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
    Then User clicks Link "[Close]"
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
    Then User search "Deep05" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User clicks on any "1" Share Limited Control
    Then User verifies the data is present with not selected check box
      |Complete Data Entry|
      |Complete Signing Without Primary Agent|
      |Complete Signing                      |
      |Complete Pre-Signature Review         |
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
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_004"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
      | FLI_REQUIREMANUALREVIEW | Input        |
      | FLI_DECLINED_ESIGN      | Input        |
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User verifies Submit Confirmation Message
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User Reload the page
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status          | Status Description                |
      | Back Office Message | All Back Office Processing Complete. |
    Then User opens Menu "Other Actions  ->History"
    And User verify audit entries contains "Complete" on history dialog
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User open application from recent activity
    Then User application is "finished" and verify Popup message

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_005_Ltd Share PSR D ESIGN FLI Tag True Verify Complete Pre Signature Review share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User verifies Pre-Sign Review displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
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
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Pre-Signature Review"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_005"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
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
    Then User Verifies on page "Review Queue"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verify "Approve" button is "enabled"
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User verifies Dialog box Disappear
    Then User verifies Application should not appear in review queue
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_005"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User verifies Application status Text Color
    Then User select the activity from shared activity tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "The review process has completed"
    Then User verifies share audit records as "Activity was locked to begin the review process."
    Then User Closes History Dialog
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Approved"
    Then User verifies Application status Text Color
    Then User Clicks Application from Recent Activity
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User verifies Submit Confirmation Message
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_006_Ltd Share PSR D ESIGN FLI Tag False Verify Complete Pre Signature Review share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User verifies Pre-Sign Review displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
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
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Pre-Signature Review"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_006"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
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
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_006"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User select the activity from shared activity tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "The review process has completed"
    Then User verifies share audit records as "Activity was locked to begin the review process."
    Then User Closes History Dialog
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User verifies Signatures step window is displayed

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_007_Ltd Share PSR RMR False DESign True Verify Complete Signing and CS Without Primary Agent share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
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
    Then User clicks Link "[Close]"
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
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_007"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
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
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_007"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User select the activity from shared activity tab
    Then User verifies "Continue" Button should be disable
    Then User Clicks on Continue Button and Verifies same page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "The review process has completed"
    Then User verifies share audit records as "Activity was locked to begin the review process."
    Then User Closes History Dialog
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User verifies Submit Confirmation Message
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_014-Verify Cumulative upload size limit for both distributer and their Carrier
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 10 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Remaining Size is "10 MB"
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_016-Verify that documents is opening when clicking on a Custom Action Button
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User clicks on "Custom File Upload" Button
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Closes Documents window
    Then User clicks on "Custom File Upload" Button
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample4MB"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size."
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Closes Documents window
    Then User clicks on "Custom File Upload" Button
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verifies application is display in Locked mode
    Then User opens Menu "Other Actions  ->Documents"
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_023_Verify that total upload size will not be limited if no limit is specified at Org setting Using Upload Template.
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_023"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Upload Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 2 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies value "Voided Check" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Total size showing as "891.04 KB" on the document window
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "1.74 MB" on the document window
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "2.61 MB" on the document window


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_008_Ltd Share PSR Verify Complete PreSignature Review share with Revoke share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User verifies Pre-Sign Review displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
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
    Then User stores the shared link
    Then User verifies Remove Share is showing
    Then User clicks "X" button on share activity page
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "Complete Pre-Signature Review"
    Then User verifies left section "Activity Shared" audit showing
    Then User Closes History Dialog
    Then User select "email body additionalContent" email with subject "Share Request: Deep05 - Application" on gmail page and save "email link"
    Then User select "email body additionalContent" email with subject "Share Request: Deep05 - Application" on gmail page and save "body"
    Then User verify expected mailbody is "expectedmailBody"
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User select "email body additionalContent" email with subject "Share Request: Deep05 - Application" on gmail page and save "email link"
    Then User verify saved "emailLink" and "reviewerUrl" from mail are same
    Then User verify Thank you for using activity share should display
    Then User select "account email additionalContent" email with subject "accountName Accept Single Activity Share Request" on gmail page and save "body"
    Then User verify expected mailbody is "activityShareAcceptMailContent"
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_008"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Shared" on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Share Accepted" on history dialog
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Now Navigate to All Activities page
    Then User Clicks on Search Icon Next to User Dropdown
    Then User selects "FLADEMO2_AUTO0014" from drop down list
    Then User Searches for application
    Then User verifies New Application Added on All Activities Page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User open application from recent activity
    Then User clicks Link "[Close]"
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies the "Deep05_FLADEMO2_AUTO " is showing in result list
    Then User verifies Remove Share is showing
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User close the Share Activity Dialog box
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                                                                           |
      | Activity Share Revoked | 'AUTOUser1_FLADEMO2_AUTO' has revoked sharing “Complete Pre-Signature Review” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_008"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "“Complete Data Entry" not showing any more


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_009_Ltd Share PSR Verify CompleteComplete Signing Ceremony with primary agent share with Revoke share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User waits for page to load
    Then User selects Given Product "FL024 TFS 34710 TTEE Forms only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User verifies Pre-Sign Review displayed
    Then User verifies "Continue" Button should be disable
    Then User sets values for prefilled form
      | Field      | Value | data-dataitemid   | Locator Type |
      | First Name | FName | Insured_FirstName | Input        |
      | Last Name  | LNAme | Insured_LastName  | Input        |
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
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
    Then User Closes History Dialog
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_009"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
      | data-dataitemid         | Locator Type |
      | Insured_FirstName       | Input        |
      | Insured_LastName        | Input        |
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Share Accepted" on history dialog
    Then User navigates to Home page
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Now Navigate to All Activities page
    Then User Clicks on Search Icon Next to User Dropdown
    Then User selects "FLADEMO2_AUTO0015" from drop down list
    Then User Searches for application
    Then User verifies New Application Added on All Activities Page
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User open application from recent activity
    Then User clicks Link "[Close]"
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies the "Deep05_FLADEMO2_AUTO " is showing in result list
    Then User verifies Remove Share is showing
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User close the Share Activity Dialog box
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                 | Status Description                                                                                                           |
      | Activity Share Revoked | 'AUTOUser1_FLADEMO2_AUTO' has revoked sharing “Complete Signing” for this activity with 'Deep05_FLADEMO2_AUTO'. |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_009"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies shared app "“Complete Data Entry" not showing any more

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_019-Verify that documents is opening when clicking Using Client Fill or Fill & Sign
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User waits for page to load
    Then User selects Given Product "Easy Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Request Client to Fill App"
    Then User Verifies on page "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User "open" new tab in browser
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Login to External Link for "Receipant"
    Then User clicks "Attach Documents" button on page
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample4MB"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size."
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Other" Document type and Size Of File Does Not Appear
    Then User Closes Documents window
    Then User Clicks CompleteLog off Tab
    Then User clicks on submit and Log Off
    Then User "closes" new tab in browser

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_022-Verify that Documents is opening when clicking on a Upload Template button
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_022"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Upload Template Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies value "Voided Check" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Voided Check" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User clicks "Remove" link for "Voided Check" document type after uploading documents
    Then User clicks "OK" on Confirmation Dialog
    Then User Verifies Uploaded file is "Sample2.5MB" for "Voided Check" Document type and Size Of File Does Not Appear
    Then User Closes Documents window
    Then User Clicks On "Upload a Copy of Voided Check" Custom button
    Then User verifies dialog window "Documents"
    Then User Verifies value "Voided Check" for field "Select Document Type"
    Then User uploads Document "Sample4MB"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 3 MB. Reduce file resolution to reduce file size."
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User selects value "Voided Check" for field "Select Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."
    Then User Closes Documents window
    Then User Clicks on Continue when app is in Finalize step
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verifies application is display in Locked mode
    Then User opens Menu "Other Actions  ->Documents"
    Then User Verifies Uploaded file is "BlueSkyInsuranceTicketApplication" for "BlueSkyInsuranceTicketApplication" Document type and Size Of File is blank
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Voided Check" Document type and Size Of File Appears
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_010_Ltd Share PSR Verify CompleteComplete Signing Ceremony with primary agent share with Revoke share
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_010"
    Then User on Login Page enters valid username as "Ravi_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User waits for page to load
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
    Then User clicks Link "[Close]"
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
    Then User Closes History Dialog
    Then User clicks log off
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_010"
    Then User on Login Page enters valid username as "Ravi05_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User select the activity from shared activity tab
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User verifies prefilled Form
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
    Then User navigates to Home page
    Then User open shared activity
    Then User Verifies Application Status as "Signatures Complete"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_010"
    Then User on Login Page enters valid username as "Ravi_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Signatures Complete"
    Then User open application from recent activity
    Then User verifies "Finalize" is "current" tab
    Then User clicks "Continue" button
    Then User verifies Submit Confirmation Message
    Then User Clicks on "yes" on confirmation dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User clicks on Close icon on Toast Popup
    Then User verifies "Finished" button is disabled
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Activity Share Accepted" on history dialog

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_018_Verify that total upload size will not be limited if no limit is specified at Org setting For Custom Action Button.
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User clicks on "Custom File Upload" Button
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 2 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Total size showing as "891.04 KB" on the document window
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "1.74 MB" on the document window
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "2.61 MB" on the document window

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_021_Verify that Client is not able to upload more documents if Agent has used Max cumulative size limit when uploading documents on Agent side Using Client Fill or Fill & Sign
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample(1)1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample(1)1.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Closes Documents window
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User Verifies on page "Request Clients to Complete Filling and Signing Application"
    Then User enters "Owner" details on page
    Then User enters "jointowner" details on page
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User Clicks Back to App button
    Then User verifies dialog window "Pending Request" popup
    Then User store "owner passcode"
    Then User store "jointowner passcode"
    Then User clicks Close button on pending request page
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    And User login to email link with "passcode" generated on signature page from home page
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User clicks "Attach Documents" button on page
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_025_Verify that user can upload documents in Reviewer Document upload section For Post-signature Post-Submit review.
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_025"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "OK" button on signature page
    Then User clicks "Continue" button
    Then User clicks Submit link
    Then User clicks on Ok button
    Then User navigates to Home page
    Then User clicks Review Queue on Home Page
    Then User Clicks on RQ1 option under Queues
    Then User enters App Name in search box then click search Icon
    Then User clicks on "Attach Documents" link in Review Queue Page
    Then User Verifies Popup Heading As "Reviewer Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB."
    Then User Verifies Total size is not displaying any value
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample2.5MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "1.8 MB" on the document window
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5(1)MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "3.6 MB" on the document window
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User uploads Document "Sample2.5(1)MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Total size showing as "5.4 MB" on the document window
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample1.5MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "6.27 MB" on the document window
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample2.5MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "8.06 MB" on the document window
    Then User uploads Document "Sample3MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample3MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "9.39 MB" on the document window
    Then User uploads Document "Sample3MB"
    Then User clicks "Upload" button
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User Verifies Uploaded file is "Sample3MB" for "Reviewer Documents" Document type and size Of file Appears
    Then User Verifies Total size showing as "10.72 MB" on the document window
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box does not appeared


  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_017_Verify Cumulative upload size limit for both distributer and their Carrier (For Custom Action Button)
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User waits for page to load
    Then User Selects "FL Access Carrier - Automation 2" option in "CarrierID" Dropdown
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Total size showing as "1.8 MB" on the document window
    Then User selects value "Other" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample2.5MB" for "Other" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Verifies Total size showing as "3.6 MB" on the document window
    Then User uploads Document "Sample2.5(1)MB"
    Then User verifies "Cumulative Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "Addition of this file will cause the cumulative limit to be exceeded. Reduce the file resolution on this or one of the other files uploaded to proceed."
    Then User Closes Documents window

  @RegressionTest @RegAllActivityMVCHP2 @RegressionTestHP2
  Scenario: TC_020_Verify that Reamaining size displays on client side when a type of document is uploaded on Agent side (Using Client Fill or Fill & Sign)
    Given User is on FireLight login page for TestCase "RegAllActivityMVCHP2_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Documents"
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "Sample1.5MB" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User Verifies Remaining Size Shows in the Popup
    Then User Closes Documents window
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User enters "owner" details on page
    Then User enters "jointowner" details on page
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User Clicks Back to App button
    Then User clicks "Logoff" button on home page
    Then User Loads the URL generated previously for "emailLink"
    Then User Login with SSN and birth date
    Then User clicks "Attach Documents" button on page
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB."
    Then User Verifies Remaining Size Shows in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample2.5MB"
    Then User clicks "Upload" button
    Then User verify error message "Document type already uploaded." on SSN home page