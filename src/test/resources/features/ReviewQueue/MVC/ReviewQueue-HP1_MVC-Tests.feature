Feature: FireLight_Regression_ReviewQueueHP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_29_Verify Pre-Submit Review Queue All Buttons And Links from External Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_29"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
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
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User Verifies below links in Review Queue page
      |Application PDF|
      |Application History|
      |Queue History|
      |Attach Documents|
      |Audit Report|
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User Clicks on Cancel Button
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Clicks on Cancel Button
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Clicks on Cancel Button
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue

  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_30_Manual Review Pre-Signature Review Access via email Able to Cancel Action for Approve Reject More Info
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_30"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
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
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User Verifies on sub page "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Notes the activity count
    Then User Verifies below links in Review Queue page
      |Application PDF|
      |Application History|
      |Queue History|
      |Attach Documents|
      |Audit Report|
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User Clicks on Cancel Button
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Clicks on Cancel Button
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Clicks on Cancel Button
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue


  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_31-Verify FLI_REQUIREMANUALREVIEW Flag to Bypass and Apply Pre Signature Review in Application
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_31"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Review Tab is There in Browser
    Then User Verifies "SIGNATURES" tab number is 3
    Then User Verifies "REVIEW" tab number is 2
    Then User clicks Link "[Close]"
    Then User sets values for prefilled form
      | Field                                   | Value | data-dataitemid         | Locator Type |
      | To Bypass Manual Review set it to False | False | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Reload the page
    Then User Verifies Review Tab is not There in Browser
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks "Back To Application" button
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User Clicks on Unlock Application
    Then User verifies toast message "Data Entry has met the requirements."
    Then User sets values for prefilled form
      | Field                                   | Value | data-dataitemid         | Locator Type |
      | To Bypass Manual Review set it to False | True  | FLI_REQUIREMANUALREVIEW | Input        |
    Then User Reload the page
    Then User Verifies Review Tab is There in Browser
    Then User Verifies "SIGNATURES" tab number is 3
    Then User Verifies "REVIEW" tab number is 2
    Then User clicks Link "[Close]"
    Then User clicks "Continue" button
    Then User should be on page "Electronic Review"
    Then User Verifies Send Request To Reviewer Button is Enabled
    Then User Verifies Decline E-Review Button is Disabled

  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_47-Verify FLI_REQUIREMANUALREVIEW Flag to Bypass and Apply Post Signature Review in Application
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_47"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User selects radio button "Joint" for "Owner Type"
    Then User selects radio button "Yes" for field "Does the owner have existing or pending life insurance or annuity policies?" from section "Replacement Questions"
    Then User selects radio button "Yes" for field "Are there plans to discontinue, reduce, change or replace any existing life insurance or annuity contracts?" from section "Replacement Questions"
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field         | Value         |
      | First Name    | UserFirstName |
      | Last Name     | UserLastName  |
      | Date of Birth | 10/10/1950    |
      | Zip Code      | 12345         |
      | SSN           | 1234         |
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field         | Value        |
      | First Name    | JointOwnerFN |
      | Date of Birth | 10/10/1950   |
    Then User clicks "Next" button
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | AgentFirstName |
      | Last Name  | AgentLastName  |
    Then User clicks "Next" button
    Then User verifies Page heading "Automation wiz" with form name "Payment Details" for data entry flow
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User Verifies Data Entry Met Toast popup is show
    Then User clicks on Close icon on Toast Popup
    Then User opens "Custom list Form" Optional for Form "Test Form DSB"
    Then User verifies Page heading "Test Form DSB" with form name "Custom list Form" for data entry flow
    Then User Verifies Review Tab is There in Browser
    Then User Verifies "SIGNATURES" tab number is 2
    Then User Verifies "REVIEW" tab number is 3
    Then User sets values for prefilled form
      | Field                                | Value | data-dataitemid          | Locator Type |
      | Enter False to by pass manual review | False | REQUIREMANUALREVIEW_Test | Input        |
    Then User Reload the page
    Then User Verifies Review Tab is not There in Browser
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User Clicks on Continue button
    Then User verifies data "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User verifies "FINALIZE" tab is green tick mark
    Then User opens Menu "Other Actions  ->Copy Activity"
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User verifies copy of application created
    Then User Verifies Review Tab is not There in Browser
    Then User opens "Custom list Form" Optional for Form "Test Form DSB"
    Then User verifies Page heading "Test Form DSB" with form name "Custom list Form" for data entry flow
    Then User sets values for prefilled form
      | Field                                | Value | data-dataitemid          | Locator Type |
      | Enter False to by pass manual review | True | REQUIREMANUALREVIEW_Test | Input        |
    Then User Reload the page
    Then User Verifies Review Tab is There in Browser
    Then User Verifies "SIGNATURES" tab number is 2
    Then User Verifies "REVIEW" tab number is 3
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User selects "Decline E-Signature" button on Signature Tab
    Then User clicks "Ok" button
    Then User Verifies "REVIEW" Tab is active
    Then User clicks "Continue" button
    Then User should be on page "Electronic Review"
    Then User Verifies Send Request To Reviewer Button is Enabled
    Then User Verifies Decline E-Review Button is Disabled
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"

  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_48-PostReview - Verify Reviewer is able to perform Cancel Action for Approve Reject More Info Unlock Via External Link
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_48"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User Clicks on Button "Decline E-Signature"
    Then User verifies text on Electronic signature Declined
      |You have declined to use E-Signature. All signatures for this application must be collected manually.|
      |To upload wet signed documents, click on `Other Actions` and select `Documents`.                     |
      |To revise your decision, click on `Other Actions` and select `Unlock Application`.                   |
    Then User clicks "Ok" button
    Then User Verifies "REVIEW" Tab is active
    Then User clicks "Continue" button
    Then User Clicks on Request Review
    Then User should be on page "Electronic Review"
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name     | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
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
    Then User Clicks on Cancel Button
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User Clicks on Cancel Button
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User Clicks on Cancel Button
    Then User clicks on more info button
    Then User Verifies popup "Request More Info"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on Cancel Button
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies on sub page "PreSubmit"
    Then User verifies Application should appear in review queue


  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_50-Recall Rejected application by selecting the Reject button within the Review Queue
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_50"
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
    Then User Now Clicks Reject Button
    Then User Verifies popup "Reject Activity"
    Then User on dialog window enters own comment and clicks "Reject" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Reviewer Comment "reviewerComment2"
    Then User Closes the Popup
    Then User Clicks on Reviewer Documents Button
    Then User verifies pdf text in "DisplayReviewerPdfByOSJId" document
      | SEQ1 Comments     |
      | NameReviewer      |
      | NameFirstReviewer |
      | NameLastReviewer  |
    Then User Clicks On Recall Button
    Then User Verifies popup "Recall Rejection"
    Then User clicks on Ok button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
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
    Then User Verifies the Reviewer comment entered earlier "reviewerComment"
    Then User Enters some data in Reviewer Document Page Again with "SEQ 1 Comments – After Recall"
    Then User Clicks on Complete button
    Then User  Clicks Lock and Complete button
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies Reviewer Comment "SEQ 1 Comments – After Recall"
    Then User Closes the Popup
    Then User navigates to Home page from review Queue page
    Then User Verifies Application Status as "In Review"


  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_56-Verify multiple queues can have different permissions - Can Unlock All & Read Only
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_56"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 2" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
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
    Then User verifies unlock button is now enabled
    Then User selects Queue as "Read Only"
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is Disabled in Review Queue page
    Then User Clicks on Review Button and Verifies same page
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_56"
    Then User on Login Page enters valid username as "Sunil_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "Unlock All"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies unlock button is now enabled
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0004" for "First" Application
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User selects Queue as "Unlock All"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User selects Queue as "Read Only"
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User Clicks on Review Button and Verifies same page


  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_57-Verify multiple queues can have different permissions - Unlock Only & Read Only
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_57"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 3" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "In Review"
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 2" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review" For second Application
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Unlock Only"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies unlock button is now enabled
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0002" for "First" Application
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User selects Queue as "Read Only"
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User Clicks on Review Button and Verifies same page
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_57"
    Then User on Login Page enters valid username as "Sunil_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "Unlock Only"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies unlock button is now enabled
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User selects Queue as "Read Only"
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User Clicks on Review Button and Verifies same page

  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_58-Verify multiple queues can have different permissions - Unlock Only & Can Unlock All
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_58"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 3" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "In Review"
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 1" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review" For second Application
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Unlock Only"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies unlock button is now enabled
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0002" for "First" Application
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is Disabled in Review Queue page
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User selects Queue as "Unlock All"
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User verifies unlock button is now enabled
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_58"
    Then User on Login Page enters valid username as "Sunil_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "Unlock Only"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User Verifies Review button is Disabled in Review Queue page
    Then User Clicks on Review Button and Verifies same page
    Then User selects Queue as "Unlock All"
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User verifies unlock button is now enabled
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0004" for "Second" Application
    Then User Clicks on Unlock Button On Review Queue Page
    Then User Verifies popup "Unlock the order"
    Then User Clicks on "Unlock and Release to the queue" button
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue

  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_59-Verify that Manual Queue Move works across all queues for one role code
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_59"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Review Queue Automation 4" for application
    Then User clicks "Create" button
    Then User enters new Application name Second Time
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review" For second Application
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
    Then User verifies unlock button is now enabled
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Application on Locked State
    Then User Selects "Reviewer" in Select Queue Drop Down
    Then User clicks on Move To Queue Button
    Then User Verifies popup "Move Queues"
    Then User Verifies Message on Popup "You are about to move " with product name
    Then User Clicks on "Move App" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User selects Queue as "Reviewer"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User verifies Application should appear in review queue
    Then User verifies unlock button is now enabled
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Reviewer"
    Then User verifies unlock button is now enabled
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Application on Locked State
    Then User Selects "Unlock All" in Select Queue Drop Down
    Then User clicks on Move To Queue Button
    Then User Verifies popup "Move Queues"
    Then User Verifies Message on Popup "You are about to move " with Second product name
    Then User Clicks on "Move App" button
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should not appear in review queue
    Then User selects Queue as "Unlock All"
    Then User Verifies on sub page "Unlock All"
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should appear in review queue
    Then User Verifies Review button is enabled in Review Queue page
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Verifies on sub page "Unlock All"
    Then User verifies unlock button is now enabled
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should not appear in review queue

  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_76-Verify Ability to assign Reviewers to specific Activities within the Review Queue
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_76"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Elite Term" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User Verifies popup "Confirmation Dialog"
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User verifies Application status as "In Review"
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Reviewer"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0002" for "First" Application
    Then User Logs Off from current Application
    Then User select "Reviewer Email" email with subject "A New Case has been Assigned AppName" on gmail page and save "Body"
    Then User verify expected mailbody is "expectedEmailBody"
    Then User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_76"
    Then User on Login Page enters valid username as "Sunil_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Reviewer"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Application on Locked State
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue


  @RegressionTest @RegReviewQHP1MVC @RegressionTestHP1
  Scenario: MRQ_79-Verify Ability to assign Reviewers Manually to specific Activities within the Review Queue
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_79"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Elite Term Multi Signer" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User should be on page "Electronic Signatures"
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User should be on page "Electronic Signatures Declined"
    Then User clicks "Ok" button
    Then User Verifies Continue button Enabled
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
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Application on Locked State
    Then User Selects "Sunil_ FLADEMO_Auto" in Select Reviewer Drop Down
    Then User clicks on Assign Reviewer Button
    Then User Verifies popup "Assign Reviewer"
    Then User Verifies Message on Popup with "assignerMessage" product name for Assigner Review
    Then User Verifies "Assign Reviewer" and Cancel Button
    Then User clicks on Assign Reviewer button on popup
    Then User Verifies Locked Message as "Locked by FLADEMO_Auto0002" for "First" Application
    Then User verifies unlock button is now enabled
    Then User verifies Approve, Reject, More Info Buttons are now disabled in Review Queue page
    Then User clicks on "Queue History" link in Review Queue Page
    Then User Verifies popup "Queue History"
    Then User Verifies Remarks for User "User Name: Sunil_ FLADEMO_Auto" with "remark"
    Then User Closes the Popup
    Then User selects Queue as "Reviewer"
    Then User selects Queue as "Unlock All"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User navigates to Home page from review Queue page
    Then User verifies Application status as "In Review"
    Then User Log Off from current Application
    Then User Verifies message "Thank you for using our application."
    Then User select "Reviewer Email" email with subject "A New Case has been Assigned AppName" on gmail page and save "Body"
    Then User verify expected mailbody is "expectedEmailBody"
    Then User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_79"
    Then User on Login Page enters valid username as "Sunil_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "Unlock All"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies Application on Locked State
    Then User verifies unlock button is now enabled
    Then User verifies Approve, Reject, More Info Buttons are now enabled.
    Then User Clicks on Approve Button
    Then User Verifies popup "Approve Activity"
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters Second Application Name in search box then click search Icon
    Then User verifies Second Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue