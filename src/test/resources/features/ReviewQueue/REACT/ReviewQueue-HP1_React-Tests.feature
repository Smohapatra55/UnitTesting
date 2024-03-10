Feature: FireLight_Regression_ReviewQueueHP1_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.


  @RegressionTest @RegReviewQHP1React @RegressionTestHP1
  Scenario: MRQ_49-Verify Reviewer is able to perform Cancel Action for Approve Reject More Info Unlock  Via Reviewer Login
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_49"
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
    Then User clicks "OK" button on signature page
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
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
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

  @RegressionTest @RegReviewQHP1React @RegressionTestHP1
  Scenario: MRQ_53-Verify uploaded Reviewer document retain throughout the queue before and after approving at History and Reviewer List
    Given User is on FireLight login page for TestCase "RegReviewQHP1_MRQ_53"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wiz and Forms" for application
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
    Then User Clicks on "OK" Button
    Then User verifies toast message "Finished 1 of 3 Steps. Client signatures are needed."
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User Verifies on page "Review Queue"
    Then User selects Queue as "DSB"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User Verifies below links in Review Queue page
      |Application PDF|
      |Application History|
      |Queue History|
      |Attach Documents|
      |Audit Report|
    Then User clicks "Attach Documents" from review queue
    Then User verify value is "Reviewer Documents" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "view" link for "Reviewer Documents" document type after uploading documents
    Then User verifies "Remove" link for "Reviewer Documents" document type after uploading documents
    Then User Closes Reviewer Documents window
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Clicks on Approve Button
    Then User on dialog window enters own comment and clicks "Approve" button
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should not appear in review queue
    Then User clicks on "History Tab" in Left panel
    Then User enters App Name in search box then click search Icon
    Then User Verifies below links in Review Queue page
      |Application PDF|
      |Application History|
      |Queue History|
      |Audit Report|
      |Reviewer Attached Documents|
    Then User verifies Application appears in History with comment "Approved by.."
    Then User clicks on "Reviewer Attached Documents" link in Review Queue Page
    Then User Selects "Reviewer Uploaded Document" CheckBox
    Then User Clicks on View Button
    Then User verifies pdf text in "ShowReviewerDocs" document
      | Sample PDF        |
      | This is a simple PDF file. Fun fun fun.        |
    Then User Closes Reviewer Documents Window
    Then User clicks on "Reviewers Tab" in Left panel
    Then User Verifies Links Present Below Reviewers Tab
    Then User Clicks on link "FLADEMO_AUTO0024" below Reviewers Tab
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User verifies Application appears in History with comment "Approved by.."
    Then User Verifies below links in Review Queue page
      |Application PDF|
      |Application History|
      |Queue History|
      |Audit Report|
      |Reviewer Attached Documents|
    Then User clicks on "Reviewer Attached Documents" link in Review Queue Page
    Then User Selects "Reviewer Uploaded Document" CheckBox
    Then User Clicks on View Button
    Then User verifies pdf text in "ShowReviewerDocs" document
      | Sample PDF        |
      | This is a simple PDF file. Fun fun fun.        |
    Then User Closes Reviewer Documents Window

