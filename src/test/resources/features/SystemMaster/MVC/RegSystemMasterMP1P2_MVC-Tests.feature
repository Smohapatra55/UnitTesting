Feature: FireLight_Regression_SystemMasterMP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegSystemMasterMP1MVC @RegressionTestMP1P2
  Scenario: TC_001_Verify Disable Preference Enable Training Request More Info in Review Queue
    Given User is on FireLight login page for TestCase "RegSystemMasterMP1P2_TC_001"
    Then User on Login Page enters valid username as "NIGO_FLADEMO2" and password and clicks Login button
    Then User Verifies Preference Tab is not Visible
    Then User Clicks on Training Tab
    Then User verify page title is "Training"
    Then User Clicks on Button "View All Videos"
    Then User Clicks On Link Attaching Supplemental Documents
    Then User Returns To Main Window By closing The Traing Tab
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Addendum Signing" for application
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
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User clicks Review Button
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User clicks on more info button
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegSystemMasterMP1P2_TC_001"
    Then User on Login Page enters valid username as "NIGO_FLADEMO2" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User Reload the page
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User Verifies More Info Displayed
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Clicks on Close link at bottom of the popup
    Then User Logs Off from current Application