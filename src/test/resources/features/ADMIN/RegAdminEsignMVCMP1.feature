Feature: FireLight_AdminEsignMVCMP1_Tests

  This feature will verify FireLight Admin Tests

  @RegressionAdmin @RegAdminEsignMVCMP1
  Scenario: TC_001_Verify Organization Setting Passcode Only Validation & Validate Identity Verification cannot be save in Conjunction
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCMP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "select" checkbox "Validate Identity"
    Then User "select" checkbox "Passcode Only Validation"
    Then User Verifies Error Message "Cannot be selected with 'Validate Identity Verification'"
    Then User click "Close" button on Admin App
    Then User Verifies checkbox "Passcode Only Validation" is "unchecked"
    Then User Verifies checkbox "Validate Identity" is "selected"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User click on "Home" and select "" form menu list
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User Verifies checkbox "Validate Identity" is "selected"
    Then User "uncheck" checkbox "Validate Identity"
    Then User "select" checkbox "Passcode Only Validation"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User click on "Home" and select "" form menu list
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User Verifies checkbox "Passcode Only Validation" is "selected"
    Then User "select" checkbox "Validate Identity"
    Then User Verifies Error Message "Cannot be selected with 'Passcode Only Validation'"
    Then User click "Close" button on Admin App
    Then User "uncheck" checkbox "Passcode Only Validation"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Verifies checkbox "Validate Identity" is "unchecked"
    Then User Verifies checkbox "Passcode Only Validation" is "unchecked"

  @RegressionAdmin @RegAdminEsignMVCMP1
  Scenario: TC_005_ Verify Admin Groups setting  to Disable Sign Now & Disable Send Email Request cannot be selected at same time for Client and Agent
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCMP1_TC_005"
    Then User on Login Page enters valid username as "AutoDSB_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "Hex_FLB01"
    Then User clicks "App" Tab
    Then User "select" checkbox "DisableSendEmailRequestAgent"
    Then User "select" checkbox "DisableSignNowAgent"
    Then User Verifies checkbox "DisableSendEmailRequestAgent" is "unchecked"
    Then User Verifies checkbox "DisableSignNowAgent" is "selected"
    Then User "select" checkbox "DisableSendEmailRequestAgent"
    Then User Verifies checkbox "DisableSignNowAgent" is "unchecked"
    Then User Verifies checkbox "DisableSendEmailRequestAgent" is "selected"
    Then User "select" checkbox "DisableSignNow"
    Then User "select" checkbox "DisableSendEmailRequest"
    Then User Verifies checkbox "DisableSignNow" is "unchecked"
    Then User Verifies checkbox "DisableSendEmailRequest" is "selected"
    Then User "select" checkbox "DisableSignNow"
    Then User Verifies checkbox "DisableSendEmailRequest" is "unchecked"
    Then User Verifies checkbox "DisableSignNow" is "selected"
    Then User Verifies checkbox "DisableSendEmailRequestAgent" is "selected"




