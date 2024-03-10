Feature: FireLight_Regression_AllActivityLP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegAllActivityLP1MVC @RegressionTestLP1P2
  Scenario: AT_034_Verify Lexis nexis Risk and Instant ID response in Dist with proper back office message
    Given User is on FireLight login page for TestCase "RegAllActivityLP1MVC_AT_034"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV Forms Only Test product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks Link "[Close]"
    Then User opens "Page 1" Optional for Form "LexisNexis Pre filled RiskClassifier Test Form "
   Then User verifies data in text fields
      | values         | data-item-id             | locator |
      | A              | ANNUITANT_FNAME          | Input   |
      | BIGORNIA       | ANNUITANT_LNAME          | Input   |
      | 10/25/1939     | ANNUITANT_BDATE          | Input   |
      | HICKOK ST      | ANNUITANT_STREETADDRESS  | Input   |
      | VA             | ANNUITANT_STATEADDRESS   | Input   |
      | VA             | ANNUITANT_POLICY_STATE   | Input   |
      | 500000         | ANNUITANT_POLICY_FACE    | Input   |
      | 666-56-7633    | ANNUITANT_SSN            | Input   |
      | Male           | ANNUITANT_GENDER         | Input   |
      | 80             | ANNUITANT_AGE            | Input   |
      | CHRISTIANSBURG | ANNUITANT_CITYADDRESS    | Input   |
      | 24073          | ANNUITANT_ZIPCODEADDRESS | Input   |
      | VA             | ANNUITANT_LICENSE_STATE  | Input   |
      | B66020426      | ANNUITANT_LICENSE_NUMBER | Input   |
    Then User verifies Risk Classifier button is displayed
    Then User verifies prefilled data Form input text fields should be blank
      | data-dataitemid      | Locator Type |
      | LN_OrderNumber       | Input        |
      | LNRisk_ResultCode    | Input        |
      | LNRisk_Score         | Input        |
      | LNRisk_ResultMessage | Textarea     |
      | LNRisk_ReasonCode1   | Input        |
      | LNRisk_ReasonCode2   | Input        |
      | LNRisk_ReasonCode3   | Input        |
      | LNRisk_ReasonCode4   | Input        |
    Then User clicks on Risk Classifier button
    Then User verifies Back Office Dialog box is displayed
    Then User Clicks on "OK" on confirmation dialog
    Then User verifies prefilled data form for Risk Classifier
      | value                                                                     | data-dataitemid      | Locator Type |
      | 281VUNX                                                                   | LN_OrderNumber       | Input        |
      | ER                                                                        | LNRisk_ResultCode    | Input        |
      | 502                                                                       | LNRisk_Score         | Input        |
      | (General)SECURITY ALERT message(s) found., (General)ORDER NUMBER: 281VUNX | LNRisk_ResultMessage | textarea     |
      | # of Addresses Found for Subject                                          | LNRisk_Description1  | textarea     |
      | # of Credit Union, S&L or Mortgage Accounts Established                   | LNRisk_Description2  | Input        |
      | Absence of Property Ownership                                             | LNRisk_Description3  | Input        |
      | Presence of a Bankruptcy, Lien, or Judgment                               | LNRisk_Description4  | Input        |
      | PR26                                                                      | LNRisk_ReasonCode1   | Input        |
      | 0187                                                                      | LNRisk_ReasonCode2   | Input        |
      | PR29                                                                      | LNRisk_ReasonCode3   | Input        |
      | 0326                                                                      | LNRisk_ReasonCode4   | Input        |
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "FireLight made a web service call on behalf of FL Access Brokerage - Automation to LexisNexis Risk Classifier"
    Then User Closes History Dialog
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog

  @RegressionTest @RegAllActivityLP1MVC @RegressionTestLP1P2
  Scenario: AT_040_Verify After GIACT service call, back office popup appears with proper response in related fields
    Given User is on FireLight login page for TestCase "RegAllActivityLP1MVC_AT_040"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call FORM Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks Link "[Close]"
    Then User verifies form name is "FL024 GIACT Custom Call Form"
    Then User Verifies options present for "C_2" dropdown
      | options      |
      |Brokerage Account  |
    Then User verifies prefilled data for GIACT form
      | Value      | data-dataitemid             | Locator Type |
      | John       | AccountHolder_FirstName     | Input        |
      | Smith      | AccountHolder_LastName      | Input        |
      | 0000000019 | AccountHolder_AccountNumber | Input        |
      | 122105278  | AccountHolder_RoutingNumber | Input        |
    Then User verifies prefilled data Form text fields should be blank
      | data-dataitemid               | Locator Type |
      | GVerifyCode                   | Input        |
      | GAuthenticateVerificationResp | Input        |
      | GAccountRespCode              | Input        |
      | GVerificationResponse         | Input        |
      | gBankName                     | Input        |
      | gBankAccntDate                | Input        |
      | gBankAccntCloseddate          | Input        |
    Then User clicks on GIACT Lookup button
    Then User verifies Back Office Dialog box is displayed
    Then User clicks on ok verifies prefilled data form text fields are filled
      | data-dataitemid               | Locator Type |
      | GVerifyCode                   | Input        |
      | GAccountRespCode              | Input        |
      | gBankName                     | Input        |
      | gBankAccntDate                | Input        |
      | gBankAccntLastUpdate          | Input        |
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "was assigned to the activity by the Back Office provider"
    Then User Closes History Dialog
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog