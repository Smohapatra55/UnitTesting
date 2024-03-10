Feature: FireLight_Regression_AllActivityMP1P2_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegAllActivityReactMP1P2 @RegressionTestMP1P2
  Scenario: TC_015_Verify Next Activity Launch can be limit when Multiple Next Activities are Present
    Given User is on FireLight login page for TestCase "RegAllActivityReactMP1P2_TC_015"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "California"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "DSB New Account Opening"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies Continue button Enabled
    Then User opens "Goals" Optional for Form "Account Opening Wizard"
    Then User sets values for prefilled form
      | Field           | Value | data-dataitemid | Locator Type |
      | College Savings |       | College Savings | Check Box    |
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks OK to decline Electronic Signatures window
    Then User verifies toast message of "Finished 1 of 3 Steps. Agent and Client signatures are needed."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User Reload the page
    Then User verifies the popup "Account opening is finished."
    Then User Close the Popup
    Then User clicks "Continue" button
    Then User clicks on "Needs Determination" in Top Menu
    Then User selects Given Product "FL024 Needs Determination Linked to Forms App"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens "Goals" Optional for Form "Need Determination Questionnaire"
    Then User verifies the popup "The Needs Determination has met the requirements."
    Then User Close the Popup
    Then User sets values for prefilled form
      | Field           | Value | data-dataitemid | Locator Type |
      | Lifetime Income |       | Lifetime Income | Check Box    |
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks OK to decline Electronic Signatures window
    Then User verifies the popup "Finished 1 of 3 Steps. Please Continue."
    Then User Close the Popup
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User verifies the popup "Needs determination is finished."
    Then User Close the Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User clicks on Link Icon on data entry page
    Then User verifies "AT FL024 Needs Determination Linked to Forms App" Activity is present
    Then User clicks on "AT FL024 Needs Determination Linked to Forms App" activity on linked activity
    Then User verifies the popup "Needs determination is finished."
    Then User Verifies "Apply" button Enabled
    Then User clicks on "APPLY" link of data entry met Toast popup
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User Verifies "Apply" button Enabled
    Then User clicks on Link Icon on data entry page
    Then User verifies "AT FL024 Needs Determination Linked to Forms App" Activity is present
    Then User clicks on "AT FL024 Needs Determination Linked to Forms App" activity on linked activity
    Then User verifies the popup "Needs determination is finished."
    Then User Close the Popup
    Then User clicks on Link Icon on data entry page
    Then User verifies All linked Activities are present
      | fields                                                        |
      | AT DSB New Account Opening                                    |
      | New Application - FL024 Customized Continue button Forms Only |
      | New Application - FL024 Customized Continue button Forms Only |
    Then User clicks on "AT DSB New Account Opening" activity on linked activity
    Then User verifies the popup "Account opening is finished."
    Then User Close the Popup
    Then User clicks "Continue" button
    Then User verifies "Needs Determination" Menu List option is "disabled"
    Then User clicks on "Application" in Top Menu
    Then User selects Given Product "Addendum Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User clicks on Link Icon on data entry page
    Then User verifies "AT DSB New Account Opening" Activity is present
    Then User clicks on "AT DSB New Account Opening" activity on linked activity
    Then User clicks "Continue" button
    Then User verifies "Needs Determination" Menu List option is "disabled"
    Then User verifies "Application" Menu List option is "disabled"
    Then User clicks on "Print Forms" in Top Menu
    Then User selects Given Product "RV PRINT FORMS 2"
    Then User clicks "Create" button
    Then User clicks on Link Icon on data entry page
    Then User verifies "AT DSB New Account Opening" Activity is present
    Then User clicks on "AT DSB New Account Opening" activity on linked activity
    Then User verifies the popup "Account opening is finished."
    Then User verifies Apply Link is disabled
    Then User Close the Popup
    Then User Verifies Continue button is disabled
    Then User clicks on Link Icon on data entry page
    Then User verifies "Print Forms for AT DSB New Account Opening" Activity is present
    Then User verifies "AT Addendum Signing" Activity is present
    Then User verifies "AT FL024 Needs Determination Linked to Forms App" Activity is present