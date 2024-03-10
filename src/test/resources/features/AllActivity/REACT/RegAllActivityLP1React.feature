Feature: FireLight_Regression_AllActivityLP1P2_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegAllActivityLP1React @RegressionTestLP1P2
  Scenario: AT_034_Verify Lexis nexis Risk and Instant ID response in Dist with proper back office message React
    Given User is on FireLight login page for TestCase "RegAllActivityLP1React_AT_034"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lexis Nexis Pre Filled Forms And Wizard" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button on data entry page
    Then User opens "LexisNexis Test Wizard" Optional for Form "LexisNexis Pre Filled Test Wizard"
    Then User verifies prefilled form
      | Field         | Value          | data-dataitemid                            | Locator Type | Validation Error |
      | First Name    | A              | Owner_FirstName                            | Input        |                  |
      | Last Name     | BIGORNIA       | Owner_LastName                             | Input        |                  |
      | Date of Birth | 10/25/1939     | Owner_DOB                                  | Input        |                  |
      | Address       | HICKOK ST      | Owner_ResidentialAddress1                  | Input        |                  |
      | State         | VA             | ContingentOwner_ResidentialAddress_State   | Input        |                  |
      | Policy State  | VA             | Owner_State_of_Issuance                    | Input        |                  |
      | Face Amount   | 500000         | Owner_Face_Amount                          | Input        |                  |
      | SSN           | 666-56-7633    | Owner_SSN                                  | Input        |                  |
      | Gender        | Male           | Owner_Gender                               | Input        |                  |
      | Age           | 80             | Owner_Age                                  | Input        |                  |
      | City          | CHRISTIANSBURG | Owner_ResidentialAddress_City              | Input        |                  |
      | ZipCode       | 24073          | ContingentOwner_ResidentialAddress_Zipcode | Input        |                  |
      | DL State      | VA             | Owner_DriverLicense_State                  | Input        |                  |
      | DL Number     | B66020426      | Owner_DriversLicense_Number                | Input        |                  |
    Then User verifies Risk Classifier button is displayed
    Then User verifies Instant ID Results button is displayed
    Then User verifies data fields are blank
      | data-dataitemid           | Locator Type |
      | Lex_ID                    | Input        |
      | LN_CVI                    | Input        |
      | NAS_Score                 | Input        |
      | NAP_Score                 | Input        |
      | LN_PASS                   | Input        |
      | Risk_Indicators           | Input        |
      | OWNER_Risk_Score          | Input        |
      | Order_Number              | Input        |
      | Result_Code               | Input        |
      | Result_Message            | Input        |
      | OWNER_Reason_Code1        | Input        |
      | Owner_Reason_Description1 | Input        |
      | Owner_Reason_Code2        | Input        |
      | Owner_Reason_Description2 | Input        |
      | Owner_Reason_Code3        | Input        |
      | Owner_Reason_Description3 | Input        |
      | Owner_Reason_Code4        | Input        |
      | Owner_Reason_Description4 | Input        |
    Then User clicks on Lexis Nexis call button
    Then User verifies Lexis Nexis pop up message
    Then User verifies prefilled form
      | Field           | Value             | data-dataitemid | Locator Type | Validation Error |
      | Lex ID          | 0                 | Lex_ID          | Input        |                  |
      | CVI Score       | 00                | LN_CVI          | Input        |                  |
      | NAS Score       | 0                 | NAS_Score       | Input        |                  |
      | NAP Score       | 0                 | NAP_Score       | Input        |                  |
      | Pass or Fail    | pending           | LN_PASS         | Input        |                  |
      | Risk Indicators | 06,19,28,NB,11,80 | Risk_Indicators | Input        |                  |
    Then User clicks on Risk Classifier button
    Then User verifies "Back Office Action is being performed." pop up message
    Then User verifies "A validation is being performed." pop up message
    Then User verifies prefilled form
      | Field                | Value                                                   | data-dataitemid           | Locator Type | Validation Error |
      | Risk Score           | 502                                                     | OWNER_Risk_Score          | Input        |                  |
      | Result Code          | ER                                                      | Result_Code               | Input        |                  |
      | Reason Code 1        | PR26                                                    | OWNER_Reason_Code1        | Input        |                  |
      | Reason Description 1 | # of Addresses Found for Subject                        | Owner_Reason_Description1 | Input        |                  |
      | Reason Code 2        | 0187                                                    | Owner_Reason_Code2        | Input        |                  |
      | Reason Description 2 | # of Credit Union, S&L or Mortgage Accounts Established | Owner_Reason_Description2 | Input        |                  |
      | Reason Code 3        | PR29                                                    | Owner_Reason_Code3        | Input        |                  |
      | Reason Description 3 | Absence of Property Ownership                           | Owner_Reason_Description3 | Input        |                  |
      | Reason Code 4        | 0326                                                    | Owner_Reason_Code4        | Input        |                  |
      | Reason Description 4 | Presence of a Bankruptcy, Lien, or Judgment             | Owner_Reason_Description4 | Input        |                  |
    Then User verifies prefilled data form for Risk Classifier
      | value                                                                     | data-dataitemid | Locator Type |
      | 281VUNX                                                                   | Order_Number    | Input        |
      | (General)SECURITY ALERT message(s) found., (General)ORDER NUMBER: 284HY3F | Result_Message  | Input        |
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "FireLight made a web service call on behalf of FL Access Brokerage - Automation to LexisNexis Risk Classifier"
    Then User verifies share audit records as "Confirmation Number"
    Then User verifies share audit records as "was assigned to the activity by the Back Office provider."
    Then User clicks cross button
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog

  @RegressionTest @RegAllActivityLP1React @RegressionTestLP1P2
  Scenario: AT_040_Verify After GIACT service call, back office popup appears with proper response in related fields React
    Given User is on FireLight login page for TestCase "RegAllActivityLP1React_AT_040"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FL024 GIACT Custom Action Call Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks "Close" button on data entry page
    Then User verifies "FL024 GIACT Custom Call Wiz" of "FL024 GIACT Custom Call Wiz" is Open
    Then User verifies prefilled form
      | Field          | Value      | data-dataitemid             | Locator Type | Validation Error |
      | First Name     | John       | AccountHolder_FirstName     | Input        |                  |
      | Last Name      | Smith      | AccountHolder_LastName      | Input        |                  |
      | Account Number | 0000000019 | AccountHolder_AccountNumber | Input        |                  |
      | Routing Number | 122105278  | AccountHolder_RoutingNumber | Input        |                  |
    Then User verifies data fields are blank
      | data-dataitemid       | Locator Type |
      | GVerifyCode           | Input        |
      | GAuthenticateCode     | Input        |
      | GVerifyResponse       | Input        |
      | GAuthenticateResponse | Input        |
      | gBankName             | Input        |
      | gBankAccntDate        | Input        |
      | gBankAccntLastUpdate  | Input        |
      | gBankAccntCloseddate  | Input        |
    Then User clicks on GIACT Lookup button
    Then User verifies GIACT pop up message
    Then User verifies prefilled form
      | Field                | Value                         | data-dataitemid      | Locator Type | Validation Error |
      | GVerifyCode          | 5555                          | GVerifyCode          | Input        |                  |
      | GAuthenticateCode    | CA11                          | GAuthenticateCode    | Input        |                  |
      | gBankName            | WELLS FARGO BANK NA (ARIZONA) | gBankName            | Input        |                  |
      | gBankAccntDate       | 10/3/2007                     | gBankAccntDate       | Input        |                  |
      | gBankAccntLastUpdate | 10/3/2007                     | gBankAccntLastUpdate | Input        |                  |
    Then User opens Menu "Other Actions  ->History"
    Then User verifies share audit records as "was assigned to the activity by the Back Office provider"
    Then User clicks cross button
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog