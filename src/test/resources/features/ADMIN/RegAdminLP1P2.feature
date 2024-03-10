Feature: FireLight_Regression_Admin_LP1P2_TestCases

  This feature will verify FireLight Complete Application Regression Tests of Admin Low P1P2

  @RegressionAdmin  @RegAdminLP1P2
  Scenario: AT_027_Allow outside repository Management
    Given User is on FireLight Admin login page for TestCase "RegAdminLP1P2_AT_027"
    Then User on Login Page enters valid username as "ITS" and password and clicks Login button
    Then User verifies "InsTech Managed" organization name "showing" in the dropdown list at the top of the page
    Then User Logs off from Admin page
    Given User is on FireLight Admin login page for TestCase "RegAdminLP1P2_AT_027"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Admin"
    Then User "uncheck" checkbox "enableInsTechManagedProducts"
    Then User "uncheck" checkbox "allowOutsideRepositoryManagement"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Given User is on FireLight Admin login page for TestCase "RegAdminLP1P2_AT_027"
    Then User on Login Page enters valid username as "ITS" and password and clicks Login button
    Then User verifies "FL Access Carrier - Automation" organization name "not showing" in the dropdown list at the top of the page
    Then User Logs off from Admin page
    Given User is on FireLight Admin login page for TestCase "RegAdminLP1P2_AT_027"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Admin"
    Then User "check" checkbox "enableInsTechManagedProducts"
    Then User "check" checkbox "allowOutsideRepositoryManagement"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
