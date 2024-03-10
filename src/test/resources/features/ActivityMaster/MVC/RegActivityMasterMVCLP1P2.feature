Feature: FireLight_Regression_ActivityMasterLP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterMVCLP1P2 @RegressionTestLP1P2
  Scenario: TC_003_Verify the long name of Forms are showing in Forms menu
    Given User is on FireLight login page for TestCase "RegActivityMasterMVCLP1P2_TC_003"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Annuity"
    Then User selects Given Product "Long form name product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User Clicks Expand form menu
    Then User verifies the form name showing in expand menu
    Then User verifies form name is truncated
