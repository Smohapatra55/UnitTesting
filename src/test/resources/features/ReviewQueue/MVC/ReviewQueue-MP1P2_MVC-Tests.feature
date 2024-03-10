Feature: FireLight_Regression_ReviewQueueMP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_004-Pre-Submit Review Verify Prevention of Unlock Activity when Locked by Reviewer For REACT UI
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Firm Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks on "Cancel" link
    Then User verifies application is display in Locked mode
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading As "Activity Summary"
    Then User Verifies "Status" as "Pending Pre-Submit Review"
    Then User Verifies tab "Unlock"
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User verify option "Unlock" is "shown" in other actions menu
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User verifies unlock button is now enabled
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "In Pre-Submit Review"
    Then User open application from recent activity
    Then User verifies dialog window "Pending Requests"
    Then User Verifies Final popup after application submitted with message "Application is locked for review."
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User Verifies "Unlock" is Disabled in Other Action
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading As "Activity Summary"
    Then User Verifies "Status" as "In Pre-Submit Review"
    Then User Verifies Unlock is disable
    Then User Clicks on Button "Close"

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_006- Verify unlock option in Activity Summary dialog if activity  has been locked for review by the reviewer.
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_006"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Review Queue Automation 3" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "In Signatures"
    Then User Verifies Unlock is enable and displayed
    Then User Clicks on Icon Cross in Activity Summary
    Then User clicks "Other Actions" button
    Then User verify option "Unlock Application" is "shown" in other actions menu
    Then User Verifies "Unlock Application" is enabled in Other Action
    Then User clicks "Other Actions" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "In Review"
    Then User Verifies Unlock is not Visible
    Then User Clicks on Icon Cross in Activity Summary
    Then User clicks "Other Actions" button
    Then User Verifies Unlock is not Visible
    Then User Navigates to Home Page
    Then User verifies Application status as "In Review"
    Then User open application from recent activity
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "In Review"
    Then User Verifies Unlock is not Visible
    Then User Clicks on Icon Cross in Activity Summary
    Then User clicks "Other Actions" button
    Then User Verifies Unlock is not Visible
    Then User clicks "Other Actions" button

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_005- Post Signature Review Verify Prevention of Unlock Activity when locked by Reviewer for Generic Post Issue in REACT UI
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Generic Post Issue" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "PI Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks on "close" link
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading As "Activity Summary"
    Then User Verifies "Status" as "In Signatures"
    Then User Verifies Button "Unlock" is displayed and Enabled
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User verify option "Unlock" is "shown" in other actions menu
    Then User Verifies "Unlock" is enabled in Other Action
    Then User clicks "Other Actions" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies Request Review and Submit Button
    Then User Clicks on Request Review
    Then User should be on page "Electronic Review"
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name     | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks on "Cancel" link
    Then User verifies application is display in Locked mode
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading As "Activity Summary"
    Then User Verifies "Status" as "Pending Pre-Submit Review"
    Then User Verifies Button "Unlock" is displayed and Enabled
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User verify option "Unlock" is "shown" in other actions menu
    Then User Verifies "Unlock" is enabled in Other Action
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User verifies unlock button is now enabled
    Then User verifies Approve button is now enabled
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "In Pre-Submit Review"
    Then User open application from recent activity
    Then User verifies dialog window "Pending Requests"
    Then User Verifies Final popup after application submitted with message "Application is locked for review."
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User Verifies "Unlock" is Disabled in Other Action
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading As "Activity Summary"
    Then User Verifies "Status" as "In Pre-Submit Review"
    Then User Verifies Unlock is disable
    Then User Clicks on Button "Close"

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_010-Verify user not proceed to signing ceremony once Pre-Signature review Rejected
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_010"
    Then User on Login Page enters valid username as "RVUser_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV PDF link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "DATA ENTRY" current tab
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User "SSM" Your name TextBox
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User clicks on Close icon on Toast Popup
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks on "Cancel" link
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies unlock button is now enabled
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User lets the default message and clicks on Reject button
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_010"
    Then User on Login Page enters valid username as "RVUser_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Data Entry"
    Then User open application from recent activity
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_011-Verify user not proceed to signing ceremony once Pre-Signature review Approved
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_011"
    Then User on Login Page enters valid username as "RVUser_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV PDF link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "DATA ENTRY" current tab
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User "SSM" Your name TextBox
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User clicks on Close icon on Toast Popup
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks on "Cancel" link
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies unlock button is now enabled
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_011"
    Then User on Login Page enters valid username as "RVUser_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User open application from recent activity
    Then User Verifies Continue button is disabled
    Then User verifies toast message of "You do not have permission to finalize the application.Your job is done!"
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue Button and Verifies same page

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_012-Verify Continue button is disabled when there are signers available
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_012"
    Then User on Login Page enters valid username as "RVUser_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV PDF link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Reload the page
    Then User Verifies Review Tab is not There in Browser
    Then User clicks "Continue" button
    Then User Verifies Continue button is disabled
    Then User verifies "You do not have permission to finalize the application.Your job is done!" popup is showing
    Then User Clicks on Continue Button and Verifies same page

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_013-Verify Continue button is disabled when there is no signers available
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_013"
    Then User on Login Page enters valid username as "RVUser_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV No Signer Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User sets values for prefilled form
      | Field                            | Value | data-dataitemid         | Locator Type |
      | Require Manual Review True/False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Reload the page
    Then User Verifies Review Tab is not There in Browser
    Then User clicks "Continue" button
    Then User Verifies Continue button is disabled
    Then User Verifies Final popup after application submitted with message "You do not have permission to finalize the application. Your job is done!"
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue Button and Verifies same page

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_009-Verify Search Filters are Maintained on Review Queue
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_009"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Automation Review Queue Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User verifies Submit Confirmation Message
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Copy Activity"
    Then User Verifies popup "Copy Activity"
    Then User Enters "Copy_ofnewProductName" in TextBox "Name"
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User verifies Submit Confirmation Message
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks on Close icon on Toast Popup
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Review"
    Then User verifies Application status as "Pending Review" For "Copy_ofnewProductName"
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Reviewer Product" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User verifies Submit Confirmation Message
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->Copy Activity"
    Then User Verifies popup "Copy Activity"
    Then User Enters "Copy_ofsecondNewProductName" in TextBox "Name"
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User verifies Submit Confirmation Message
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User clicks on Close icon on Toast Popup
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Review"
    Then User verifies Application status as "Pending Review" For "Copy_ofsecondNewProductName"
    Then User clicks "Review Queue" Tab
    Then User clicks  preferences tab in Review Queue Page
    Then User selects "All" from "Page size" dropdown
    Then User clicks on Save btn on preferences page
    Then User selects Queue as "Auto Search Filter Q1"
    Then User Notes the activity count from Page
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Clears Search Box
    Then User Verifies Activity count decreased by 0
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User Verifies Search Error Message as "No review found."
    Then User Verifies Activity count as 0
    Then User selects Queue as "Auto Search Filter Q2"
    Then User Notes the activity count from Page
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Clears Search Box
    Then User Verifies Activity count decreased by 0
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should not appear in review queue
    Then User Verifies Search Error Message as "No review found."
    Then User Verifies Activity count as 0
    Then User Clears Search Box
    Then User Verifies Activity count decreased by 0
    Then User selects value "Last Week" for field "Filter by Date"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count from Page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies Activity count decreased by 0
    Then User verifies Application should appear in review queue
    Then User selects value "My Locked Orders" for field "Filter by Status"
    Then User verifies Application should appear in review queue
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User enters own comment and clicks on send
    Then User verifies Application should not appear in review queue
    Then User verify value is "Last Week" for field "Filter by Date"
    Then User verify value is "My Locked Orders" for field "Filter by Status"
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User Verifies Application Name in search box "newProductName"
    Then User selects value "All Statuses" for field "Filter by Status"
    Then User Notes the activity count from Page
    Then User verifies Application should appear in review queue
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Enters some data in Reviewer Document Page
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User Verifies Activity count decreased by 0
    Then User verifies Application should appear in review queue
    Then User verify value is "Last Week" for field "Filter by Date"
    Then User verify value is "All Statuses" for field "Filter by Status"
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User Verifies Application Name in search box "newProductName"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User verify value is "Last Week" for field "Filter by Date"
    Then User verify value is "All Statuses" for field "Filter by Status"
    Then User Notes the activity count from Page
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User Verifies Application Name in search box "newProductName"
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies Activity count decreased by 0
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User Verifies Activity count decreased by 1
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User verify value is "Last Week" for field "Filter by Date"
    Then User verify value is "All Statuses" for field "Filter by Status"
    Then User Verifies on sub page "Auto Search Filter Q2"
    Then User Verifies Application Name in search box "newProductName"
    Then User verifies Application should not appear in review queue
    Then User selects Queue as "Auto Search Filter Q1"
    Then User selects value "Last Week" for field "Filter by Date"
    Then User selects value "All Statuses" for field "Filter by Status"
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Notes the activity count from Page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User Verifies Activity count decreased by 0
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies Second Application should appear in review queue
    Then User selects value "My Locked Orders" for field "Filter by Status"
    Then User verifies Second Application should appear in review queue
    Then User Selects "DSB" in Select Queue Drop Down
    Then User clicks on Move To Queue Button
    Then User Verifies popup "Move Queues"
    Then User Verifies Message on Popup "You are about to move " with Second product name
    Then User Clicks on "Move App" button
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User verify value is "Last Week" for field "Filter by Date"
    Then User verify value is "My Locked Orders" for field "Filter by Status"
    Then User Verifies on sub page "Auto Search Filter Q1"
    Then User Verifies Application Name in search box "secondNewProductName"
    Then User selects value "All Statuses" for field "Filter by Status"
    Then User selects value "Last Week" for field "Filter by Date"
    Then User Notes the activity count from Page
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies Activity count decreased by 0
    Then User verifies Second Application should appear in review queue
    Then User selects value "My Locked Orders" for field "Filter by Status"
    Then User verifies Second Application should appear in review queue
    Then User Selects "Sunil_ FLADEMO_Auto" in Select Reviewer Drop Down
    Then User clicks on Assign Reviewer Button
    Then User Verifies popup "Assign Reviewer"
    Then User clicks on Assign Reviewer button on popup
    Then User Verifies Activity count decreased by 1
    Then User verify value is "Last Week" for field "Filter by Date"
    Then User verify value is "My Locked Orders" for field "Filter by Status"
    Then User Verifies on sub page "Auto Search Filter Q1"
    Then User Verifies Application Name in search box "secondNewProductName"
    Then User verifies Second Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User Clicks On Recall Button
    Then User Verifies popup "Recall Rejection"
    Then User clicks on Ok button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Application Name in search box "newProductName"

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_007- Verify unlock option in other Action if activity has been locked for review by the reviewer and request has expired - MVC UI
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User selects value "Last Month" for field "Filter by Date"
    Then User selects value "All Locked Orders" for field "Filter by Status"
    Then User enters Second Application Name in search box then click search Icon
    Then User Stores the First Application Name
    Then User navigates to Home page from review Queue page
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Pending Requests! link below of recent created activity name
    Then User Verifies Recent application status is "In Pre-Submit Review" in All Activities
    Then User Opens application by clicking on view button
    Then User  verifies Error message "EXPIRED - Please Cancel to resend." appeared in red
    Then User Verifies "Cancel this request" link
    Then User Verifies text Message in Popup "Application is locked for review."
    Then User Clicks on Close link at bottom of the popup
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "In Pre-Submit Review"
    Then User Verifies Unlock is disable
    Then User Clicks on Icon Cross in Activity Summary
    Then User clicks "Other Actions" button
    Then User verify option "Unlock Application" is "Disable" in other actions menu
    Then User Reload the page
    Then User verifies dialog window "Pending Request" popup
    Then User  verifies Error message "EXPIRED - Please Cancel to resend." appeared in red
    Then User Verifies "Cancel this request" link
    Then User Verifies text Message in Popup "Application is locked for review."
    Then User Clicks on Cancel this request link
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User verifies toast message "Finished 1 of 4 Steps. Agent and Client signatures are needed."
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "Pre-Submit Review"
    Then User Verifies Unlock is enable and displayed
    Then User Clicks on Icon Cross in Activity Summary
    Then User clicks "Other Actions" button
    Then User verify option "Unlock Application" is "shown" in other actions menu
    Then User Verifies "Unlock Application" is enabled in Other Action
    Then User clicks "Other Actions" button
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User Clicks on Button "Unlock Application"
    Then USer verifies Request get Cancel, application get unlocked, and status display as ‘Data Entry’, ‘pending request’ text is not display underneath ‘DATA ENTRY’ tab label
    Then User verifies toast message "Data Entry has met the requirements."
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status           | Status Description                                                        |
      | Unlocked         | was unlocked and the status changed from 'Pending Review' to 'Data Entry' |
      | Request Canceled | Application Review request canceled by agent.                             |
    Then User Navigates to Home Page
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Application Status as "Data Entry"

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_008- Verify unlock option in other Action if activity has been locked for review by the reviewer and request has expired - REACT UI
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User selects value "Last Month" for field "Filter by Date"
    Then User selects value "All Locked Orders" for field "Filter by Status"
    Then User enters Second Application Name in search box then click search Icon
    Then User Stores the First Application Name
    Then User navigates to Home page from review Queue page
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Pending Requests! link below of recent created activity name
    Then User Verifies Recent application status is "In Pre-Submit Review" in All Activities
    Then User Opens application by clicking on view button
    Then User clicks on Close icon on Toast Popup
    Then User  verifies Error message "EXPIRED - Please Cancel to resend." appeared in red
    Then User Reload the page
    Then User verifies toast message of "Application is locked for review."
    Then User Clicks on Close link at bottom of the popup
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "In Pre-Submit Review"
    Then User Verifies Unlock is disable
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User Verifies "Unlock" is Disabled in Other Action
    Then User Reload the page
    Then User verifies dialog window "Pending Requests"
    Then User  verifies Error message "EXPIRED - Please Cancel to resend." appeared in red
    Then User verifies toast message of "Application is locked for review."
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Cancel this request link
    Then User Verifies Popup Heading As "Cancel Request"
    Then User Clicks on Button "OK"
    Then User Reload the page
    Then User verifies toast message of "Finished 1 of 4 Steps. Client signatures are needed."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Lock" button on data entry page
    Then User Verifies Popup Heading Activity Summary
    Then User Verifies "Status" as "Pre-Submit Review"
    Then User Verifies Unlock is enable and displayed
    Then User Clicks on Button "Close"
    Then User clicks "Other Actions" button
    Then User Verifies "Unlock" is enabled in Other Action
    Then User clicks "Other Actions" button
    Then User opens Menu "Other Actions  ->Unlock"
    Then User Clicks on Button "Unlock Activity"
    Then User Reload the page
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status           | Status Description                                                        |
      | Unlocked         | was unlocked and the status changed from 'Pending Review' to 'Data Entry' |
      | Request Canceled | Application Review request canceled by agent.                             |
    Then User Navigates to Home Page
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Application Status as "Data Entry"

  @RegressionTest   @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: MRQ_064- Verify ability to view Reviewer Comments in the Review Queue History and Audit Report
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_MRQ_064"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Income Choice Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User Verifies Data Entry Met Toast popup is show
    Then User clicks on Close icon on Toast Popup
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verifies toast message of "Finished 1 of 3 Steps. Agent and Client signatures are needed."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Clicks on Button "Yes"
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "DSB"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Now Verifies Reviewer Documents, Approve, Reject, More Info Buttons are now Disabled
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "DSB"
    Then User verifies unlock button is now enabled
    Then User Now Verifies Reviewer Documents, Approve, Reject, More Info Buttons are now enabled
    Then User Clicks on Reviewer Documents Button
    Then User Enters some data in Reviewer Document Page
    Then User Clicks on Complete button
    Then User  Clicks Lock and Complete button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment"
    Then User Verifies Reviewer FirstName "reviewerFirstName"
    Then User Verifies Reviewer Name "reviewerName"
    Then User Closes the Popup
    Then User Extracts the "Audit Report" Link and Stores PDF name
    Then User clicks on "Audit Report" link in Review Queue Page
    Then User verifies pdf text not present in Pdf For AuditReport
      | Reviewer_Comments : ICW App Looks good in DSB Queue. |
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment"
    Then User Verifies Reviewer FirstName "reviewerFirstName"
    Then User Verifies Reviewer Name "reviewerName"
    Then User Closes the Popup
    Then User clicks on "Audit Report" link in Review Queue Page
    Then User verifies pdf text in "DisplayOtherDocument" document
      | Reviewer_Name : James Anderson                       |
      | First Name : Jayson                                  |
      | Reviewer_Comments : ICW App Looks good in DSB Queue. |

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: MRQ74 - Verify Approve All Functionality in Review Queue
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_MRQ_074"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Unlock All"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User Verifies Master Check Box is Selected
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User Verifies Master Check Box is Selected
    Then User Clears Search Box
    Then User clicks  preferences tab in Review Queue Page
    Then User selects "All" from "Page size" dropdown
    Then User clicks on Save btn on preferences page
    Then User selects Queue as "Unlock All"
    Then User selects Queue as "Unlock All"
    Then User Verifies on sub page "Unlock All"
    Then User Clicks on Unlock Button of "newProductName"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Clicks on Unlock Button of "secondNewProductName"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Clicks on Review Button of "newProductName"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Review Button of "secondNewProductName"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Button "Approve All" in queue
    Then User Verifies popup "Action Confirmation"
    Then User Verifies Message on Popup "Approve Selected 2 Applications?" in Queue
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Approved by.."
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Approved by.."
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Complete"
    Then User verifies Application status as "Complete" For second Application


  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: MRQ75 - Verify Reject All Functionality in Review Queue
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_MRQ_075"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Unlock All"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User Verifies Master Check Box is Selected
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User Verifies Master Check Box is Selected
    Then User Clears Search Box
    Then User clicks  preferences tab in Review Queue Page
    Then User selects "All" from "Page size" dropdown
    Then User clicks on Save btn on preferences page
    Then User selects Queue as "Unlock All"
    Then User Verifies on sub page "Unlock All"
    Then User Clicks on Unlock Button of "newProductName"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Clicks on Unlock Button of "secondNewProductName"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Clicks on Review Button of "newProductName"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Review Button of "secondNewProductName"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Button "Reject All" in queue
    Then User Verifies popup "Action Confirmation"
    Then User Verifies Message on Popup "Reject Selected 2 Applications?" in Queue
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Review: Declined"
    Then User verifies Application status as "Review: Declined" For second Application



  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_001 - Verify Reviewer's Documents with Approve All functionality_Reject Apps
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_001"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "CT Fields Verification" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks on Close icon on Toast Popup
    Then User verifies dialog window "Confirmation Dialog"
    Then User Clicks on Button "Yes"
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "CT Fields Verification" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User verifies dialog window "Confirmation Dialog"
    Then User Clicks on Button "Yes"
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "DSB"
    Then User Notes the activity count from Page
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "DSB"
    Then User Verifies Master Check Box is not Displayed
    Then User verifies Approve button is now Disabled
    Then User verifies ReviewerDocuments Button is enabled in Review Queue page
    Then User verifies Reject Button is enabled in Review Queue page
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "DSB"
    Then User Verifies Master Check Box is not Displayed
    Then User verifies Approve button is now Disabled
    Then User verifies ReviewerDocuments Button is enabled in Review Queue page
    Then User verifies Reject Button is enabled in Review Queue page
    Then User selects Queue as "DSB"
    Then User Notes the activity count from Page
    Then User Now Clicks Reject Button for "newProductName"
    Then User Verifies popup "Reject Activity"
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User Now Clicks Reject Button for "secondNewProductName"
    Then User Verifies popup "Reject Activity"
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User Verifies Activity count decreased by 2
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User Verifies Recall Button displayed
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User Verifies Recall Button displayed
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Review: Declined"
    Then User verifies Application status as "Review: Declined" For second Application

  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_002 - Verify Reviewer's Documents with Approve All functionality_Approve Apps
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_002"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "CT Fields Verification" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks on Close icon on Toast Popup
    Then User verifies dialog window "Confirmation Dialog"
    Then User Clicks on Button "Yes"
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "CT Fields Verification" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User verifies dialog window "Confirmation Dialog"
    Then User Clicks on Button "Yes"
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "DSB"
    Then User selects Queue as "DSB"
    Then User Notes the activity count from Page
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "DSB"
    Then User Verifies Master Check Box is not Displayed
    Then User verifies Approve button is now Disabled
    Then User verifies ReviewerDocuments Button is enabled in Review Queue page
    Then User verifies Reject Button is enabled in Review Queue page
    Then User Verifies on sub page "DSB"
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "DSB"
    Then User Verifies Master Check Box is not Displayed
    Then User verifies Approve button is now Disabled
    Then User verifies ReviewerDocuments Button is enabled in Review Queue page
    Then User verifies Reject Button is enabled in Review Queue page
    Then User clicks  preferences tab in Review Queue Page
    Then User selects "All" from "Page size" dropdown
    Then User clicks on Save btn on preferences page
    Then User selects Queue as "DSB"
    Then User selects Queue as "DSB"
    Then User Now Clicks Reviewer Documents Button for "newProductName"
    Then User Verifies the sub page "Reviewer Documents"
    Then User sets values for prefilled form
      | Field           | Value      | data-dataitemid | Locator Type |
      | FirstName       | abcd       | Owner_FirstName | Input        |
      | LastName        | efgh       | Owner_LastName  | Input        |
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User selects Queue as "DSB"
    Then User selects Queue as "DSB"
    Then User Now Clicks Reviewer Documents Button for "secondNewProductName"
    Then User Verifies the sub page "Reviewer Documents"
    Then User sets values for prefilled form
      | Field           | Value      | data-dataitemid | Locator Type |
      | FirstName       | abcd       | Owner_FirstName | Input        |
      | LastName        | efgh       | Owner_LastName  | Input        |
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User selects Queue as "DSB"
    Then User selects Queue as "DSB"
    Then User Clicks on Approve Button of "newProductName"
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Clicks on Approve Button of "secondNewProductName"
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies Button "Approve All" is not Showing in queue
    Then User Verifies Button "Reject All" is not Showing in queue
    Then User Verifies Activity count decreased by 2
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Approved by.."
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Approved by.."
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Complete"
    Then User verifies Application status as "Complete" For second Application


  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_015-Post Submit Review Verify PDF link functionality in Review Queue when app is locked Post Submit Review
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_015"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV PDF link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User verifies toast message "Finished 1 of 3 Steps. Agent and Client signatures are needed."
    Then User Clicks on Continue button
    Then User Clicks on Button "Yes"
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Lexis Nexis"
    Then User Verifies on sub page "Lexis Nexis"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies below links in Review Queue page
      |Application PDF|
    Then User clicks "Application PDF" from review queue
    Then User verifies PDF "DisplayApplication" is generated
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies unlock button is now enabled
    Then User Verifies below links in Review Queue page
      |Application PDF|
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_015"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Lexis Nexis"
    Then User Verifies on sub page "Lexis Nexis"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0004" for "First" Application
    Then User Verifies below links in Review Queue page
      |Application PDF|
    Then User clicks "Application PDF" from review queue
    Then User verifies PDF "DisplayApplication" is generated
    Then User Log Off from current Application


  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_016-Verify the post submit review queue messge has mention  the name of queue
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Sequential Queue" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "SEQ1"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "SEQ1"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User select "email body" email with subject "E-Signature Process Declined AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent"
    Then User selects Queue as "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Selects "AUTOUser1_FLADEMO_AUTO" in Select Reviewer Drop Down
    Then User clicks on Assign Reviewer Button
    Then User Verifies popup "Assign Reviewer"
    Then User clicks on Assign Reviewer button on popup
    Then User select "email body" email with subject "A New Case has been Assigned AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent1"
    Then User selects Queue as "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User lets the default message and clicks on Reject button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User select "email body" email with subject "Review Rejected AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent2"


  @RegressionTest @RegReviewQMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_014-Pre Submit Review Verify PDF link functionality in Review Queue when app is locked Pre Submit Review
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Product Type Dropdown "All"
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "RV PDF link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name     | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL by Clicking Send Reminder link
    Then User clicks on "Cancel" link
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies below links in Review Queue page
      |Application PDF|
    Then User clicks "Application PDF" from review queue
    Then User verifies PDF "DisplayApplication" is generated
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies unlock button is now enabled
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Locked Message as "Locked by Unknown" for "first" Application
    Then User Verifies below links in Review Queue page
      |Application PDF|
    Then User clicks "Application PDF" from review queue
    Then User verifies PDF "DisplayApplication" is generated
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQMP1P2_TC_014"
    Then User on Login Page enters valid username as "Deep05_FLADEMO2" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Locked Message as "Locked by Unknown" for "first" Application
    Then User Verifies below links are not showing in Review Queue page
      |Application PDF|
    Then User Logs Off from current Application

