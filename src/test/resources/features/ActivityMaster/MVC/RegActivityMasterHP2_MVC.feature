Feature: FireLight_Regression_ActivityMasterHP2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterHP2MVC @RegressionTestHP2
  Scenario: AT_029_Prevent Email Editing Org setting should on Lifetime Income
    Given User is on FireLight login page for TestCase "RegActivityMasterHP2MVC_AT_029"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks "Other Action" Button
    Then User Clicks "Request Client to Fill App" Button
    Then User verifies email body is not editable
