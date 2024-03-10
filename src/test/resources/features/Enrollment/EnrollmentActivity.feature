Feature: EnrollmentActivity

  @EnrollmentActivity
  Scenario: TC_001_ENR Verify Enrollment Activity can be created with Blank Master CUSIP ID
    Given User is on FireLight login page for TestCase "EnrollmentActivity_TC_001"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Enrollment" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "FL024 ENR Parent Product for Master Agreement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User sets values for prefilled form
      | Field                     | Value        | data-dataitemid              | Locator Type |
      | Product CUSIP ID          | ENRCA012SIGN | Enrollment_CUSIPID           | Input        |
      | Master Agreement CUSIP ID |              | FLI_MASTER_AGREEMENT_CUSIPID | Input        |
    Then User clicks "Next" button
    Then User should be on page "Master Agreement Enrollment Plan Design Page"
    Then User Clicks on "Import" Button in Admin Page
    Then User verifies dialog window "Import Participants"
    Then User upload Document "Participants.csv"
    Then User clicks "Upload" button
    Then User verifies "Participant has been imported successfully." popup is displayed
    Then User clicks on Close icon on Toast Popup
    Then User verify 2 records are imported in "dataGrids"
    Then User Verifies toolbar "Sunil"
    Then User Verifies toolbar "Sharma"
    Then User Verifies toolbar "testhexure@gmail.com"
    Then User Verifies toolbar "Varun"
    Then User Verifies toolbar "Kapil"
    Then User Verifies toolbar "ssingh@hexure.com"
    Then User Log Off from current Application
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User should Logoff from the External page and Thank you for using our application page should display

  @EnrollmentActivity
  Scenario: TC_002_ENR Verify Validation message displayed for Invalid Master CUSIP ID at Master Agreement page
    Given User is on FireLight login page for TestCase "EnrollmentActivity_TC_002"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Enrollment" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "FL024 ENR Parent Product for Master Agreement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User sets values for prefilled form
      | Field                     | Value        | data-dataitemid              | Locator Type |
      | Product CUSIP ID          | ENRCA012SIGN | Enrollment_CUSIPID           | Input        |
      | Master Agreement CUSIP ID | ENR1234567   | FLI_MASTER_AGREEMENT_CUSIPID | Input        |
    Then User clicks "Next" button
    Then User should be on page "Master Agreement Enrollment Plan Design Page"
    Then User Verifies the error message "Product 'ENR1234567' for organization 'FL Access Carrier - Automation' is not a valid product within FireLight. Select a valid product for master agreement or continue without adding a master agreement to this enrollment activity." displayed

  @EnrollmentActivity
  Scenario: TC_003_ENR Verify Validation message displayed for Invalid Master CUSIP ID at Master Agreement page
    Given User is on FireLight login page for TestCase "EnrollmentActivity_TC_003"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Enrollment" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "FL024 ENR Parent Product for Master Agreement" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User Verifies data entry percentage is "100%"
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User sets values for prefilled form
      | Field                     | Value        | data-dataitemid              | Locator Type |
      | Product CUSIP ID          | ENRCA012SIGN | Enrollment_CUSIPID           | Input        |
      | Master Agreement CUSIP ID | ENRCA01      | FLI_MASTER_AGREEMENT_CUSIPID | Input        |
    Then User clicks "Next" button
    Then User should be on page "Master Agreement Enrollment Plan Design Page"
    Then User Verifies the error message "Failed to create master agreement application for CUSIPID 'ENRCA01'." displayed
