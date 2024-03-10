Feature: FireLight_Regression_ReviewQueueCP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_05_Verify Pre-Submit Review can be Approved with Custom Comments - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_05"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User Verifies First Line of page as "Your recipients will receive an email message with instructions to complete the electronic application process."
    Then User Verifies Your name TextBox has "agentName"
    Then User Verifies Your Email TextBox has "agentEmail"
    Then User Verifies Subject Text Box having Text "Please review the following Application"
    Then User Verifies Add Reviewer and reset link is available
    Then User Verifies Passcode is displayed
    Then User Verifies Send Email button and cancel button is available
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User Clicks Send Email request Button
    Then User verifies toast message Alert "Please check at least one reviewer."
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User Clears Your name TextBox
    Then User Clears Your Email TextBox
    Then User Clicks Send Email request Button
    Then User Verifies the error message text for all four fields
    Then User Clicks Cancel Button
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User verifies Pending Request dialog details
      | Recipient | Email Sent To        |
      | DSB       | testhexure@gmail.com |
    Then User Verifies Close Button is available
    Then User Clicks on "Cancel this request" link
    Then User verifies toast message Alert "Are you sure you want to cancel this request?"
    Then User clicks "Close" button on data entry page
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Cancel button
    Then User Clicks on "Send Passcode to DSB's email" link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies below links in Review Queue page
      | Application PDF     |
      | Application History |
      | Queue History       |
      | Attach Documents    |
      | Audit Report        |
    Then User Verifies Review button is enabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies unlock button is now enabled
    Then User verifies Approve, Reject, More Info Buttons are now enabled.
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_05"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                     | Status Description                                                         |
      | Review Complete            | The review process has completed                                           |
      | Review Approval Email Sent | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.         |
      | Activity Approved          | This application has been processed and approved by the reviewer           |
      | Locked for Review          | Activity was locked to begin the review process.                           |
      | Login By External          | 'DSB' is logged in via an external page request for activity 'Pre Submit'. |
    Then User clicks "Continue" button
    Then User Verifies Use Esignature and Decline Esignature buttons are visible
    Then User Clicks Back to Application
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Now Navigate to All Activities page
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                     | Status Description                                                         |
      | Review Complete            | The review process has completed                                           |
      | Review Approval Email Sent | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.         |
      | Activity Approved          | This application has been processed and approved by the reviewer           |
      | Locked for Review          | Activity was locked to begin the review process.                           |
      | Login By External          | 'DSB' is logged in via an external page request for activity 'Pre Submit'. |
      | E-Approval Request Sent    | has sent e-Approval Request email to                                       |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_07_Verify Pre-Submit Review can be Approved with Custom Comments - Via Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_07"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User Verifies on page "Review Queue (AUTOUser1_FLADEMO2_AUTO)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies below links in Review Queue page
      | Application PDF     |
      | Application History |
      | Queue History       |
      | Attach Documents    |
      | Audit Report        |
    Then User Verifies below parameters in Review Queue page
      | Carrier: FL Access Carrier - Automation 2          |
      | Product: Easy Signing                              |
      | Jurisdiction: Arizona                              |
      | Agent Organization: FL Access Carrier - Automation |
    Then User Verifies Review button is enabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies Activity count decreased by one
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Approved by.."
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_07"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                    |
      | Review Complete               | The review process has completed                                      |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.    |
      | Activity Approved             |                                                                       |
      | Locked for Review             | Activity was locked to begin the review process.                      |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                      |
      | E-Approval Request Sent       | has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
    Then User clicks "Continue" button
    Then User verifies Accept and decline E-signature Button present
    Then User Clicks Back to Application
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Review Complete               | The review process has completed                                                  |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Activity Approved             | AT Easy Signing                                                                   |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_09_Verify Pre-Submit Review can be Reject with Default Comments - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_09"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Note down the URL for external link from Message template.
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User Verifies below links in Review Queue page
      | Application PDF     |
      | Application History |
      | Queue History       |
      | Attach Documents    |
      | Audit Report        |
    Then User Verifies below parameters in Review Queue page
      | Carrier: FL Access Carrier - Automation 2            |
      | Product: Income Choice                               |
      | Jurisdiction: Arizona                                |
      | Agent Organization: FL Access Carrier - Automation 2 |
    Then User Verifies Review button is enabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User lets the default message and clicks on Reject button
    Then User Verifies Activity count decreased by one
    Then User verifies Application should not appear in review queue
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_09"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                 |
      | Updates by Agent              | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'                                      |
      | Unlocked                      | status changed from 'Pending Review' to 'Data Entry' by 'AUTOUser1_FLADEMO2_AUTO'. |
      | Declined                      | This submitted application has been rejected by the reviewer                       |
      | Review Reject Email Sent      | A review queue rejection email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Locked for Review             | Activity was locked to begin the review process.                                   |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                   |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'.  |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.         |
    Then User clicks "Continue" button
    Then User Verifies Send Request To Reviewer Button is Enabled
    Then User Verifies Decline E-Review Button is Enabled
    Then User Clicks on Decline E-Review
    Then User Clicks OK
    Then User Verifies "SIGNATURES" Tab is active
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                               |
      | E-Approval Process Declined   | `AUTOUser1_FLADEMO2_AUTO` declined to use E-Approval processing. |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                 |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Verifies Application Status as "Pre-Submit Review Complete"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                  |
      | E-Approval Process Declined   | `AUTOUser1_FLADEMO2_AUTO` declined to use E-Approval processing.    |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                    |
      | Declined                      | This submitted application has been rejected by the reviewer        |
      | Review Reject Email Sent      | A review queue rejection email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Locked for Review             | Activity was locked to begin the review process.                    |
      | Login By External             | logged in via an external page request for activity 'Pre Submit'.   |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to                    |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                    |


  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_011_Verify Pre-Submit Review can be Rejected with Default Comments - Via Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_11"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User Verifies on page "Review Queue (AUTOUser1_FLADEMO2_AUTO)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies below links in Review Queue page
      | Application PDF     |
      | Application History |
      | Queue History       |
      | Attach Documents    |
      | Audit Report        |
    Then User Verifies below parameters in Review Queue page
      | Carrier: FL Access Carrier - Automation 2            |
      | Product: Income Choice                               |
      | Jurisdiction: Arizona                                |
      | Agent Organization: FL Access Carrier - Automation 2 |
    Then User Verifies Review button is enabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User Verifies Activity count decreased by one
    Then User verifies Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                 |
      | Updates by Agent              | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'                                      |
      | Unlocked                      | status changed from 'Pending Review' to 'Data Entry' by 'AUTOUser1_FLADEMO2_AUTO'. |
      | Declined                      | Reviewer Comment                                                                   |
      | Review Reject Email Sent      | A review queue rejection email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Locked for Review             | Activity was locked to begin the review process.                                   |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                   |
      | E-Approval Request Sent       | AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'.   |
    Then User clicks "Continue" button
    Then User Verifies Send Request To Reviewer Button is Enabled
    Then User Verifies Decline E-Review Button is Enabled
    Then User Clicks on Decline E-Review
    Then User Clicks OK
    Then User Verifies "SIGNATURES" Tab is active
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                               |
      | E-Approval Process Declined   | `AUTOUser1_FLADEMO2_AUTO` declined to use E-Approval processing. |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                 |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Verifies Application Status as "Pre-Submit Review Complete"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                  |
      | E-Approval Process Declined   | `AUTOUser1_FLADEMO2_AUTO` declined to use E-Approval processing.    |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                    |
      | Declined                      | Reviewer Comment                                                    |
      | Review Reject Email Sent      | A review queue rejection email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Locked for Review             | Activity was locked to begin the review process.                    |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to                    |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                    |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_013_Verify Pre-Submit Review can be Approved after Rejection - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_13"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Note down the URL for external link from Message template.
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies below links in Review Queue page
      | Application PDF     |
      | Application History |
      | Queue History       |
      | Attach Documents    |
      | Audit Report        |
    Then User Verifies Review button is enabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User Verifies Activity count decreased by one
    Then User verifies Application should not appear in review queue
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_13"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                 |
      | Updates by Agent              | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'                                      |
      | Unlocked                      | status changed from 'Pending Review' to 'Data Entry' by 'AUTOUser1_FLADEMO2_AUTO'. |
      | Declined                      | Reviewer Comment                                                                   |
      | Review Reject Email Sent      | A review queue rejection email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Locked for Review             | Activity was locked to begin the review process.                                   |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                   |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'.  |
      | Login By External             | DSB' is logged in via an external page request for activity 'Pre Submit'.          |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Note down the URL for external link from Message template.
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies below links in Review Queue page
      | Application PDF     |
      | Application History |
      | Queue History       |
      | Attach Documents    |
      | Audit Report        |
    Then User Verifies Review button is enabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies Activity count decreased by one
    Then User verifies Application should not appear in review queue
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_13"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Verifies "SIGNATURES" Tab is active
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Review Complete               | The review process has completed                                                  |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Activity Approved             | Reviewer Comment                                                                  |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.        |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Review Complete               | The review process has completed                                                  |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Activity Approved             | Reviewer Comment                                                                  |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.        |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_016_Verify Pre-Submit Review can be Approved after Rejection - Via Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_16"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User Verifies on page "Review Queue (AUTOUser1_FLADEMO2_AUTO)"
    Then User Verifies on sub page "PreSubmit"
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User verifies Application should not appear in review queue
    Then User Verifies Activity count decreased by one
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User Verifies "DATA ENTRY" Tab is active
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                 |
      | Updates by Agent              | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'                                      |
      | Unlocked                      | status changed from 'Pending Review' to 'Data Entry' by 'AUTOUser1_FLADEMO2_AUTO'. |
      | Declined                      |                                                                                    |
      | Review Reject Email Sent      | A review queue rejection email was sent to AUTOUser1_FLADEMO2_AUTO.                |
      | Locked for Review             | Activity was locked to begin the review process.                                   |
      | E-Approval Request Sent       | has sent e-Approval Request email to                                               |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                   |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User navigates to Home page
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User Verifies on page "Review Queue (AUTOUser1_FLADEMO2_AUTO)"
    Then User Verifies on sub page "PreSubmit"
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies Activity count decreased by one
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Approved by.."
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                 |
      | Review Complete               | The review process has completed                                   |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Activity Approved             |                                                                    |
      | Locked for Review             | Activity was locked to begin the review process.                   |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB'             |
      | E-Approval Request Sent       | has sent e-Approval Request email to                               |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                   |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                 |
      | Review Complete               | The review process has completed                                   |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Activity Approved             |                                                                    |
      | Locked for Review             | Activity was locked to begin the review process.                   |
      | E-Approval Request Sent       | has sent e-Approval Request email to                               |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                   |



  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_019_Verify Pre-Submit Review can be Approved after More Info requested - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_19"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FormsOnly" for application
    Then User selects Optional Forms "1035 EXCHANGEROLLOVERTRANSFER eFORM"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid | Locator Type |
      | Owner First Name | OwnerFN | Owner_FirstName | Input        |
      | Owner Last Name  | OwnerLN | Owner_LastName  | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User verifies Pending Request dialog details
      | Recipient | Email Sent To        |
      | DSB       | testhexure@gmail.com |
    Then User Notes the Passcode from Pending Request dialog
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Cancel button
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Clicks on above link
    Then User Verifies Custom message
    Then User Closes the Popup
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_19"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User Verifies Review Queue Popup Heading "Review Queue"
    Then User Verifies text Message in Popup
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Verifies text Message in Popup
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies link "Info Received!" and info icon
    Then User Notes the activity count
    Then User Clicks on above link
    Then User Verifies Custom message
    Then User Closes the Popup
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User lets the default message and clicks on Approve button
    Then User verifies Application should not appear in review queue
    Then User Verifies Activity count decreased by one
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_19"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Verifies "SIGNATURES" Tab is active
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                         |
      | Review Complete               | The review process has completed                                           |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.         |
      | Activity Approved             | This application has been processed and approved by the reviewer           |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'. |
      | More Info Request             | A request for more info was sent to AUTOUser1_FLADEMO2_AUTO.               |
      | Message Center Notification   | An email was sent to 'AutoUser1' at address                                |
      | Locked for Review             | Activity was locked to begin the review process.                           |
      | E-Approval Request Sent       | has sent e-Approval Request email to                                       |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                           |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Verifies Application Status as "Pre-Submit Review: Approved"
    Then User Now Navigate to All Activities page
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                         |
      | Review Complete               | The review process has completed                                           |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.         |
      | Activity Approved             | This application has been processed and approved by the reviewer           |
      | More Info Request             | A request for more info was sent to AUTOUser1_FLADEMO2_AUTO.               |
      | Message Center Notification   | An email was sent to 'AutoUser1' at address                                |
      | Locked for Review             | Activity was locked to begin the review process.                           |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'. |
      | E-Approval Request Sent       | has sent e-Approval Request email to                                       |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                           |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_022_Verify Pre-Submit Review can be Approved after More Info requested - Via Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_22"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FormsOnly" for application
    Then User selects Optional Forms "1035 EXCHANGEROLLOVERTRANSFER eFORM"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid | Locator Type |
      | Owner First Name | OwnerFN | Owner_FirstName | Input        |
      | Owner Last Name  | OwnerLN | Owner_LastName  | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User verifies Pending Request dialog details
      | Recipient | Email Sent To        |
      | DSB       | testhexure@gmail.com |
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Clicks on above link
    Then User Verifies Custom message
    Then User Closes the Popup
    Then User navigates to Home page from review Queue page
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User Verifies Review Queue Popup Heading "Review Queue"
    Then User Verifies text Message in Popup
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Verifies text Message in Popup
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies link "Info Received!" and info icon
    Then User Notes the activity count
    Then User Clicks on above link
    Then User Verifies Custom message
    Then User Closes the Popup
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User lets the default message and clicks on Approve button
    Then User Verifies Activity count decreased by one
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Approved by.."
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                 |
      | Review Complete               | The review process has completed                                   |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Activity Approved             | This application has been processed and approved by the reviewer   |
      | More Info Request             | A request for more info was sent to AUTOUser1_FLADEMO2_AUTO.       |
      | Message Center Notification   | An email was sent to 'AutoUser1' at address                        |
      | Locked for Review             | Activity was locked to begin the review process.                   |
      | E-Approval Request Sent       | has sent e-Approval Request email to                               |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                   |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                 |
      | Review Complete               | The review process has completed                                   |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO. |
      | Activity Approved             | This application has been processed and approved by the reviewer   |
      | More Info Request             | A request for more info was sent to AUTOUser1_FLADEMO2_AUTO.       |
      | Message Center Notification   | An email was sent to 'AutoUser1' at address                        |
      | Locked for Review             | Activity was locked to begin the review process.                   |
      | E-Approval Request Sent       | has sent e-Approval Request email to                               |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                   |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_25_Verify Reviewer is able to Lock, Unlock and Attach Reviewer Documents - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_25"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Note down the URL for external link from Message template.
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User clicks on "Attach Documents" link in Review Queue Page
    Then User Verifies Popup Heading As "Reviewer Documents"
    Then User verify value is "Reviewer Documents" for field "Select Document Type"
    Then User uploads Document in Review Queue
    Then User clicks "Upload" button
    Then User verifies "Remove" and "View" link after uploading documents
    Then User Verifies Total size Shows in the Popup
    Then User clicks Close button for popup
    Then User Notes the activity count
    Then User Verifies on sub page "PreSubmit"
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Verifies Message on Popup "You are about to unlock the application " with product name
    Then User Verifies Button "Unlock and Release to the queue" and "Cancel"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is enabled in Review Queue page
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_25"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Verifies Application Status as "In Pre-Submit Review"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Document Uploaded             | A `Reviewer Documents` document was uploaded by user `DSB`.                       |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.        |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |
    Then User navigates to Home page
    Then User Verifies Application Status as "In Pre-Submit Review"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Document Uploaded             | A `Reviewer Documents` document was uploaded by user `DSB`.                       |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.        |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |


  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_26_Verify Reviewer is able to Lock, Unlock and Attach Reviewer Documents - Via Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_26"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Continue" button
    Then User Navigates To Review Page
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User clicks on "Attach Documents" link in Review Queue Page
    Then User Verifies Popup Heading As "Reviewer Documents"
    Then User uploads Document in Review Queue
    Then User clicks "Upload" button
    Then User verifies "Remove" and "View" link after uploading documents
    Then User Verifies Total size Shows in the Popup
    Then User clicks Close button for popup
    Then User Notes the activity count
    Then User Verifies on sub page "PreSubmit"
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Verifies Message on Popup "You are about to unlock the application " with product name
    Then User Verifies Button "Unlock and Release to the queue" and "Cancel"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is enabled in Review Queue page
    Then User navigates to Home page from review Queue page
    Then User Verifies Application Status as "In Pre-Submit Review"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Document Uploaded             | A `Reviewer Documents` document was uploaded by user `AUTOUser1_FLADEMO2_AUTO`.   |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.        |
    Then User navigates to Home page
    Then User Verifies Application Status as "In Pre-Submit Review"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status                        | Status Description                                                                |
      | Locked for Review             | Activity was locked to begin the review process.                                  |
      | Document Uploaded             | A `Reviewer Documents` document was uploaded by user `AUTOUser1_FLADEMO2_AUTO`.   |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                  |
      | Login By External             | 'DSB' is logged in via an external page request for activity 'Pre Submit'.        |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_34_Verify Post-Submit Review can be Approved with custom Comments - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_34"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FormsOnly" for application
    Then User selects Optional Forms "1035 EXCHANGEROLLOVERTRANSFER eFORM"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid | Locator Type |
      | Owner First Name | OwnerFN | Owner_FirstName | Input        |
      | Owner Last Name  | OwnerLN | Owner_LastName  | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field           | Value   | data-dataitemid  | Locator Type |
      | Agent Last Name | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE # | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE      | 100     | Agent_Commission | Input        |
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Performs Initials
    Then User Clicks on Agree Checkbox Three Times
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice"
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
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
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies Activity count decreased by one
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_34"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User Clicks Application from Recent Activity
    Then User Verifies Final popup after application submitted with message "Application is finished"
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                                      |
      | Client On-Site Signature Approved | was signed by signername                                                                |
      | Agent On-Site Signature Approved  | was signed by Agent 'Deependra AutoD'                                                   |
      | E-Approval Request Sent           | 'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Login By External                 | 'DSB' is logged in via an external page request for activity 'Pre Submit'.              |
      | Locked for Review                 | Activity was locked to begin the review process.                                        |
      | Review Approval Email Sent        | A review queue approval email was sent to AUTOUser1_FLADIST2_AUTO.                      |
      | Activity Approved                 |                                                                                         |
      | Review Complete                   | The review process has completed.                                                       |
      | Complete                          | is complete.                                                                            |


  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_36_Verify Post-Submit Review can be Rejected with Default Comments - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_36"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FormsOnly" for application
    Then User selects Optional Forms "1035 EXCHANGEROLLOVERTRANSFER eFORM"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid | Locator Type |
      | Owner First Name | OwnerFN | Owner_FirstName | Input        |
      | Owner Last Name  | OwnerLN | Owner_LastName  | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Zip                 | 34554      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                           | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
      | How many transfers do you have? | 3          | Transfers             | Select       |
      | Contact number                  | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field           | Value   | data-dataitemid  | Locator Type |
      | Agent Last Name | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE # | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE      | 100     | Agent_Commission | Input        |
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Performs Initials
    Then User Clicks on Agree Checkbox Three Times
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice"
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
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
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User lets the default message and clicks on Reject button
    Then User Verifies Activity count decreased by one
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_36"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User verifies Application status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                                      |
      | Client On-Site Signature Approved | was signed by signername                                                                |
      | Agent On-Site Signature Approved  | was signed by Agent 'Deependra AutoD'                                                   |
      | E-Approval Request Sent           | 'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Login By External                 | 'DSB' is logged in via an external page request for activity 'Pre Submit'.              |
      | Locked for Review                 | Activity was locked to begin the review process.                                        |
      | Review Reject Email Sent          | A review queue rejection email was sent to AUTOUser1_FLADIST2_AUTO.                     |
      | Declined                          | This submitted application has been rejected by the reviewer                            |
      | Review Complete                   | The review process has completed.                                                       |
      | Unlocked                          | was unlocked and the status changed                                                     |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on the status of application
    Then User verifies Audit History statuses
      | Status              | Status Description                  |
      | Unlocked            | was unlocked and the status changed |
      | Back Office Message | Back Office                         |


  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_38_Verify Post-Submit Review can be Approve after Rejection - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_38"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice"
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
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
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User lets the default message and clicks on Reject button
    Then User Verifies Activity count decreased by one
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_38"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User verifies Application status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                                      |
      | Client On-Site Signature Approved | was signed by signername                                                                |
      | Agent On-Site Signature Approved  | was signed by Agent 'Deependra AutoD'                                                   |
      | E-Approval Request Sent           | 'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Login By External                 | 'DSB' is logged in via an external page request for activity 'Pre Submit'.              |
      | Locked for Review                 | Activity was locked to begin the review process.                                        |
      | Review Reject Email Sent          | A review queue rejection email was sent to AUTOUser1_FLADIST2_AUTO.                     |
      | Declined                          | This submitted application has been rejected by the reviewer                            |
      | Unlocked                          | was unlocked and the status changed                                                     |
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice"
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
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
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User Verifies Activity count decreased by one
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_38"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User verifies Application status as "Complete"
    Then User Clicks Application from Recent Activity
    Then User Verifies Final popup after application submitted with message "Application is finished"
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                                      |
      | Client On-Site Signature Approved | was signed by signername                                                                |
      | Agent On-Site Signature Approved  | was signed by Agent 'Deependra AutoD'                                                   |
      | E-Approval Request Sent           | 'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Login By External                 | 'DSB' is logged in via an external page request for activity 'Pre Submit'.              |
      | Locked for Review                 | Activity was locked to begin the review process.                                        |
      | Review Approval Email Sent        | A review queue approval email was sent to AUTOUser1_FLADIST2_AUTO.                      |
      | Activity Approved                 |                                                                                         |
      | Review Complete                   | The review process has completed.                                                       |
      | Complete                          | is complete.                                                                            |


  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_41_Verify Post-Submit Review can be Approve after More Info requested - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_41"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice"
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
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
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Notes the activity count
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Clicks on above link
    Then User Verifies Custom message
    Then User Closes the Popup
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_41"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User Verifies Review Queue Popup Heading "Review Queue"
    Then User Verifies text Message in Popup
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Verifies text Message in Popup
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pre-Submit Review: Info Requested"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User Verifies link "Info Received!" and info icon
    Then User Notes the activity count
    Then User Clicks on above link
    Then User Verifies Custom message
    Then User Closes the Popup
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User lets the default message and clicks on Approve button
    Then User Verifies Activity count decreased by one
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_41"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Complete"
    Then User Clicks Application from Recent Activity
    Then User Verifies Final popup after application submitted with message "Application is finished"
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Client On-Site Signature Approved,was signed by signername" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Agent On-Site Signature Approved,was signed by Agent 'Deependra AutoD'" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "E-Approval Request Sent,'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'." on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Login By External,'DSB' is logged in via an external page request for activity 'Pre Submit'." on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Locked for Review,Activity was locked to begin the review process." on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Review Approval Email Sent,A review queue approval email was sent to AUTOUser1_FLADIST2_AUTO." on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Activity Approved,This application has been processed and approved by the reviewer [DSB] and has been released to the carrier. Please contact the carrier if you have any further questions about the status of this application" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Review Complete,The review process has completed." on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Message Center Notification,An email was sent to 'Deependra AutoD' at address 'testhexure@gmail.com'" on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "More Info Request,A request for more info was sent to AUTOUser1_FLADIST2_AUTO." on history dialog
    Then User opens Menu "Other Actions  ->History"
    Then User verify audit entries contains "Completed Activity Email,A completed activity email was sent to 'DSB' at address 'testhexure@gmail.com'." on history dialog
    Then User navigates to Home page
    Then User Verifies Application Status as "Complete"
    Then User Now Navigate to All Activities page
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status              | Status Description                   |
      | Back Office Message | All Back Office Processing Complete. |
      | Complete            | is complete.                         |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: MRQ_44_Post Submit Review - Verify Reviewer is able to Lock, Unlock and Attach Reviewer Documents - Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_44"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Signatures"
    Then User selects "Use E-Signature" button on Signature Tab
    Then User should be on page "List of Required Signers"
    Then User selects "owner" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User should be on page "Client Signature Choice for Joint Owner/Owner"
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User should be on page "List of Required Signers"
    Then User Verifies Signature Completed for Owner
    Then User Verifies "jurisdiction"
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice"
    Then User clicks on Sign Now button
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User should be on page "Agent On-Site Signature"
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User Clicks on I Consent
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
      | Page Name           | Email Send To                                    | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request          |
    Then User Gets the URL by Clicking Send Reminder link
    Then User Clicks on Close link at bottom of the popup
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on page "Review Queue (DSB)"
    Then User Verifies on sub page "PreSubmit"
    Then User clicks on "Attach Documents" link in Review Queue Page
    Then User Verifies Popup Heading As "Reviewer Documents"
    Then User uploads Document in Review Queue
    Then User clicks "Upload" button
    Then User verifies "Remove" and "View" link after uploading documents
    Then User clicks Close button for popup
    Then User Notes the activity count
    Then User Verifies on sub page "PreSubmit"
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "PreSubmit"
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Verifies Message on Popup "You are about to unlock the application " with product name
    Then User Verifies Button "Unlock and Release to the queue" and "Cancel"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is enabled in Review Queue page
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegReviewQCP1_MRQ_44"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "In Pre-Submit Review"
    Then User Clicks Application from Recent Activity
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                            | Status Description                                                                      |
      | Client On-Site Signature Approved | was signed by signername                                                                |
      | Agent On-Site Signature Approved  | was signed by Agent 'Deependra AutoD'                                                   |
      | E-Approval Request Sent           | 'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Login By External                 | 'DSB' is logged in via an external page request for activity 'Pre Submit'.              |
      | Locked for Review                 | Activity was locked to begin the review process.                                        |
      | Document Uploaded                 | A `Reviewer Documents` document was uploaded by user `DSB`.                             |
    Then User navigates to Home page
    Then User Verifies Application Status as "In Pre-Submit Review"
    Then User Now Navigate to All Activities page
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                  | Status Description                                                                      |
      | E-Approval Request Sent | 'Deependra AutoD' has sent e-Approval Request email to 'DSB' at 'testhexure@gmail.com'. |
      | Complete                | is complete.                                                                            |
      | Login By External       | 'DSB' is logged in via an external page request for activity 'Pre Submit'.              |
      | Locked for Review       | Activity was locked to begin the review process.                                        |
      | Document Uploaded       | A `Reviewer Documents` document was uploaded by user `DSB`.                             |

  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: TC_003_Verify Reviewer Documents will retain information when Assigned Reviewer and Move Queue
    Given User is on FireLight login page for TestCase "RegReviewQCP1_TC_003"
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
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
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
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Enters some data in Reviewer Document Page
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User Verifies on sub page "SEQ1"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment"
    Then User Closes the Popup
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User selects Queue as "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment"
    Then User Closes the Popup
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "SEQ2"
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the Reviewer comment entered earlier "reviewerComment"
    Then User Enters some data in Reviewer Document Page Again
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User Verifies on sub page "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Verifies "Reject" and Cancel Button
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User Verifies Activity count decreased by one
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User clicks on "History Tab" in Left panel
    Then User Clicks On Recall Button
    Then User Verifies popup "Recall Rejection"
    Then User clicks on Ok button
    Then User selects Queue as "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "SEQ2"
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Verifies the Reviewer comment entered earlier "reviewerComment2"
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup


  @RegressionTest @RegReviewQCP1MVC @RegressionTestCP1
  Scenario: TC_016_Verify Reviewer Documents will retain information when Assigned Reviewer and Move Queue
    Given User is on FireLight login page for TestCase "RegReviewQCP1_TC_016"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Reviewer ID Queue" for application
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
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "In Review"
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "RevQueue"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Application on Locked State
    Then User verifies Unlock, ReviewerDocuments,Approve,Reject, More Info Buttons are now enabled in Review Queue page
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Enters some data in Reviewer Document Page
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User Verifies on sub page "RevQueue"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment"
    Then User Closes the Popup
    Then User Selects "SEQ2" in Select Queue Drop Down
    Then User clicks on Move To Queue Button
    Then User Verifies popup "Move Queues"
    Then User clicks on Move App Button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User selects Queue as "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "SEQ2"
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Verifies the Reviewer comment entered earlier "reviewerComment"
    Then User Enters some data in Reviewer Document Page Again
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User Selects "Sonu_ Flademo_Auto" in Select Reviewer Drop Down
    Then User clicks on Assign Reviewer Button
    Then User Verifies popup "Assign Reviewer"
    Then User clicks on Assign Reviewer button on popup
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQCP1_TC_016"
    Then User on Login Page enters valid username as "Sonu_Flademo" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "SEQ2"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Clicks on Reviewer Documents Button
    Then User Selects "SEQ1" in Select Queue Drop Down
    Then User clicks on Move To Queue Button
    Then User Verifies popup "Move Queues"
    Then User clicks on Move App Button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User selects Queue as "SEQ1"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayReviewerPdfByOSJId" document
      | SEQ2 Comments |
    Then User Verifies on sub page "SEQ1"
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Enters some data in Reviewer Document Page
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User clicks on "History Tab" in Left panel
    Then User Clicks On Recall Button
    Then User Verifies popup "Recall Rejection"
    Then User clicks on Ok button
    Then User selects Queue as "SEQ1"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "SEQ1"
    Then User Clicks on Reviewer Documents Button
    Then User Verifies the sub page "Reviewer Documents"
    Then User Enters some data in Reviewer Document Page Again with "reviewerComment3"
    Then User Clicks on Complete button
    Then User Verifies popup "Finish Reviewer Documents"
    Then User  Clicks Lock and Complete button
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment3"
    Then User Closes the Popup
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Verifies "Approve" and Cancel Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application appears in History with comment "Approved by.."
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup